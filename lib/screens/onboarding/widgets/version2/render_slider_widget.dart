import 'package:flutter/material.dart';
import '../../../../common/config/models/onboarding_item_config.dart';
import '../../../../widgets/common/flux_image.dart';

class RenderSliderWidget extends StatelessWidget {
  final OnBoardingItemConfig config;
  final bool autoCropImageByDesign;

  const RenderSliderWidget({
    super.key,
    required this.config,
    this.autoCropImageByDesign = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    final height = size.height;

    // Detect the current locale
    final locale = Localizations.localeOf(context).languageCode;

    // Hardcoded values based on locale
    String correctedTitle = config.title;
    String correctedDesc = config.desc;

    if (locale == 'fr') {
      // French translations
      switch (config.title) {
        case "Outsource your marketing, communications and sales force":
          correctedTitle = "Externalisez votre marketing, votre communication et votre force de vente";
          correctedDesc = "Boostez vos ventes grâce à une équipe d'experts dédiée.";
          break;
        case "Increase your sales":
          correctedTitle = "Augmentez votre chiffre d'affaires";
          correctedDesc = "mineandpulse International booste vos ventes grâce à des services complets : promotion de produits, campagnes d'influence et gestion efficace des réseaux sociaux et de la presse. Nous proposons des solutions adaptées à chaque entreprise et budget.";
          break;
        case "Our objectives":
          correctedTitle = "Nos objectifs";
          correctedDesc = "Améliorer votre notoriété et image de marque.\nOffrir une stratégie performante.\nDévelopper vos ventes.";
          break;
      }
    } else {
      // Default to English
      switch (config.title) {
        case "Externalisez votre marketing, votre communication et votre force de vente":
          correctedTitle = "Outsource your marketing, communications and sales force";
          correctedDesc = "Boost your sales with a dedicated team of experts.";
          break;
        case "Augmentez votre chiffre d'affaires":
          correctedTitle = "Increase your sales";
          correctedDesc = "mineandpulse International boosts your sales through comprehensive services, including product promotion, influencer campaigns, and effective social media and press management. We offer tailored solutions for every company and budget.";
          break;
        case "Nos objectifs":
          correctedTitle = "Our objectives";
          correctedDesc = "Improve your brand awareness and image.\nOffering a high-performance strategy.\nDevelop your sales.";
          break;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipPath(
              clipper: autoCropImageByDesign ? ClipImage() : null,
              child: SizedBox(
                width: width,
                height: height * 0.6,
                child: FluxImage(
                  imageUrl: config.image,
                  fit: autoCropImageByDesign ? BoxFit.cover : BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            correctedTitle,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Text(
              correctedDesc,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    const borderRadius = 20.0;
    const clipY = 30;

    var path = Path()
      ..moveTo(borderRadius, 0)
      ..arcToPoint(const Offset(0, borderRadius),
          radius: const Radius.circular(borderRadius), clockwise: false)
      ..lineTo(0, h - borderRadius)
      ..arcToPoint(Offset(borderRadius, h),
          radius: const Radius.circular(borderRadius), clockwise: false)
      ..lineTo(w - borderRadius, h - clipY)
      ..arcToPoint(Offset(w, h - clipY - borderRadius),
          radius: const Radius.circular(borderRadius), clockwise: false)
      ..lineTo(w, borderRadius)
      ..arcToPoint(Offset(w - borderRadius, 0),
          radius: const Radius.circular(borderRadius), clockwise: false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
