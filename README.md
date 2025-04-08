# [FluxStore WooCommerce](https://1.envato.market/QL4d9) - Flutter E-commerce Full App

## Guide to install the app
- **Ready to dive into the code?** Head over to the latest guide https://support.inspireui.com - scroll down to find the name of your app and select "Getting Started" to follow step by step.
- **Prefer a visual approach?** Our FluxBuilder app builder makes it easy. Just follow [this guide](https://support.inspireui.com/help-center/articles/35/36/236/activate-fluxstore-on-fluxbuilder-%F0%9F%92%A5)
- **Want the best of both worlds?** FluxBuilder and source code can work together seamlessly thanks to our [Import](https://support.inspireui.com/help-center/articles/15/16/144/import) and [Export](https://support.inspireui.com/help-center/articles/15/16/4/export) features.
- **Need a helping hand?** No worries! Our "[What should I do when getting Issue?](https://1.envato.market/rMkXB)" section is there to guide you.

---

## Download package included:
- Flutter project: (open current folder by Android Studio or VS Code)
- Figma design file: _resource/Design/Fluxstore.fig
- Animate splashscreen file: _resource/Design/splashscreen.riv (https://rive.app)
- Firebase extension: _resource/Firebase Functions
- Wordpress plugins: _resource/Wordpress-extension
- Free WooCommerce site: http://github.com/inspireui/mstore

---

## References 
- Document & Support Ticket: https://support.inspireui.com
- Changelog: https://products.inspireui.com/fluxstore-woocommerce/changelog/
- Plugins: https://products.inspireui.com/fluxstore-woocommerce/supported-plugins/
- FluxBuilder - download: https://www.fluxbuilder.com/download
- FluxBuilder - Affiliate: https://www.fluxbuilder.com/affiliate
- Youtube: http://youtube.com/inspireui
- Facebook: https://www.facebook.com/groups/fluxbuilder


```
Assets folder (assets > images)

replace google api files  (firebase IOS and Android to /configs)

to disable multi language on onboarding seek showLanguage, or Ismultilanguage for all the app in env.dart


Colors, urls, icons and texts (onboarding) 

woocommerce keys (woocommerce > settings > advanced > REST API)

Replace WebViewScript (env.dart => WebViewScript)

navigationDelegate (lib/widgets/common/webview.dart)

add mstore API plugin
add regenerate thumbnails plugin and regenerate thumbnails

flutter pub run flutter_launcher_icons:main (to run in order to get the icon changed)

Note: onesignal should be deleted if causing issues (from Xcode and podfile)

Enable in:  Settings > General > Inscription : Tout le monde peut s’inscrire
```