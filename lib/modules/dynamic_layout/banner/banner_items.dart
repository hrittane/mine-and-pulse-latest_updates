import 'package:flutter/material.dart';

import '../../../common/theme/theme_helper.dart';
import '../../../common/tools.dart';
import '../../../screens/detail/widgets/video_feature.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/common/parallax_image.dart';
import '../config/banner_config.dart';
import '../config/box_shadow_config.dart';

class BannerItemWidget extends StatelessWidget {
  final BannerItemConfig config;
  final double? width;
  final double padding;
  final BoxFit? boxFit;
  final double radius;
  final double? height;
  final Function onTap;
  final bool enableParallax;
  final double parallaxImageRatio;
  final bool isSoundOn,
      autoPlayVideo,
      enableTimeIndicator,
      doubleTapToFullScreen;

  const BannerItemWidget({
    super.key,
    required this.config,
    required this.padding,
    this.width,
    this.boxFit,
    required this.radius,
    this.height,
    required this.onTap,
    this.enableParallax = false,
    this.parallaxImageRatio = 1.2,
    this.isSoundOn = false,
    this.autoPlayVideo = false,
    this.enableTimeIndicator = true,
    this.doubleTapToFullScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return (config.video?.isNotEmpty ?? false)
        ? BannerVideoItem(
            config: config,
            padding: padding,
            isSoundOn: isSoundOn,
            autoPlayVideo: autoPlayVideo,
            enableTimeIndicator: enableTimeIndicator,
            doubleTapToFullScreen: doubleTapToFullScreen,
          )
        : BannerImageItem(
            config: config,
            padding: padding,
            width: width,
            boxFit: boxFit,
            radius: radius,
            height: height,
            onTap: onTap,
            enableParallax: enableParallax,
            parallaxImageRatio: parallaxImageRatio,
          );
  }
}

/// The Banner type to display the image
class BannerImageItem extends StatelessWidget {
  final BannerItemConfig config;
  final double? width;
  final double padding;
  final BoxFit? boxFit;
  final double radius;
  final double? height;
  final Function onTap;
  final bool enableParallax;
  final double parallaxImageRatio;
  final BoxShadowConfig? boxShadowConfig;

  const BannerImageItem({
    super.key,
    required this.config,
    required this.padding,
    this.width,
    this.boxFit,
    required this.radius,
    this.height,
    required this.onTap,
    this.enableParallax = false,
    this.parallaxImageRatio = 1.2,
    this.boxShadowConfig,
  });

  @override
  Widget build(BuildContext context) {
    var paddingVal = config.padding ?? padding;
    var radiusVal = config.radius ?? radius;

    final screenSize = MediaQuery.of(context).size;
    final itemWidth = width ?? screenSize.width;
    final boxShadow = boxShadowConfig ?? BoxShadowConfig.empty();

    final buttonTextTheme = Theme.of(context).textTheme.bodySmall?.copyWith(
          color: HexColor(config.button?.textColor),
          fontFamily: config.button?.fontFamily,
          fontSize: config.button?.fontSize,
        );
    final descriptionTextTheme =
        Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: HexColor(config.description?.color),
      fontSize: config.description?.fontSize,
      fontFamily: config.description?.fontFamily,
      shadows: <Shadow>[
        if (config.description?.enableShadow ?? false)
          const Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 3.0,
            color: Colors.black,
          ),
      ],
    );

    return GestureDetector(
      child: Container(
        width: itemWidth,
        height: height,
        constraints: const BoxConstraints(minHeight: 10.0),
        child: Stack(
          children: [
            if (enableParallax)
              ParallaxImage(
                image: config.image.toString(),
                ratio: parallaxImageRatio,
              ),
            if (!enableParallax)
              Container(
                margin: EdgeInsets.symmetric(horizontal: paddingVal),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(boxShadow.colorOpacity),
                      blurRadius: boxShadow.blurRadius,
                      spreadRadius: boxShadow.spreadRadius,
                      offset: Offset(
                        boxShadow.x,
                        boxShadow.y,
                      ),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(radiusVal),
                  child: FluxImage(
                    imageUrl: config.image,
                    fit: boxFit ?? BoxFit.fitWidth,
                    width: itemWidth,
                    height: height,
                  ),
                ),
              ),
            if (config.description != null)
              Align(
                alignment: config.description?.alignment ?? Alignment.topCenter,
                child: Text(
                  config.description?.text ?? '',
                  style: config.description?.fontFamily != null
                      ? ThemeHelper.getFont(
                          config.description!.fontFamily,
                          textStyle: descriptionTextTheme,
                        )
                      : descriptionTextTheme,
                ),
              ),
            if (config.title != null)
              Align(
              alignment: Alignment.bottomCenter, // This centers the container
              child: FractionallySizedBox(
                widthFactor: 0.8, // 80% of the screen width
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFce9d45), // Background color
                    borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
                  ),
                  padding: const EdgeInsets.all(8.0), // Optional padding inside the container
                  child: Text(
                    textAlign: TextAlign.center,
                    config.title?.text ?? '',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: HexColor(config.title?.color),
                      fontSize: config.title?.fontSize,
                      fontFamily: config.title?.fontFamily,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        if (config.title?.enableShadow ?? false)
                          const Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (config.button != null)
              Align(
                alignment: config.button?.alignment ?? Alignment.topCenter,
                child: InkWell(
                  onTap: () => onTap(config.jsonData),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: HexColor(config.button?.backgroundColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      config.button?.text ?? '',
                      style: config.button?.fontFamily != null
                          ? ThemeHelper.getFont(
                              config.button!.fontFamily,
                              textStyle: buttonTextTheme,
                            )
                          : buttonTextTheme,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class BannerVideoItem extends StatelessWidget {
  final BannerItemConfig config;
  final bool isSoundOn,
      autoPlayVideo,
      enableTimeIndicator,
      doubleTapToFullScreen;
  final double padding;

  const BannerVideoItem({
    super.key,
    required this.config,
    this.isSoundOn = false,
    this.autoPlayVideo = false,
    this.enableTimeIndicator = true,
    this.doubleTapToFullScreen = false,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    var paddingVal = config.padding ?? padding;

    return Padding(
      padding: EdgeInsets.only(left: paddingVal, right: paddingVal),
      child: FeatureVideoPlayer(
        config.video ?? '',
        autoPlay: autoPlayVideo,
        isSoundOn: isSoundOn,
        enableTimeIndicator: enableTimeIndicator,
        aspectRatio: 16 / 9,
        doubleTapToFullScreen: doubleTapToFullScreen,
        showFullScreenButton: true,
        showVolumeButton: true,
      ),
    );
  }
}
