// ignore_for_file: prefer_single_quotes, lines_longer_than_80_chars final
Map<String, dynamic> environment = {
  "appConfig": "lib/config/config_fr.json",
  "serverConfig": {
    "url": "https://mineandpulse.com/",
     "type": "woo",
    "consumerKey": "ck_7a2f37bc840f970878ba2c55223e946e8bc0eae4",
    "consumerSecret": "cs_bb509588409d6451fa73cbfeffc57cd19ad66a9f"
  },
  "defaultDarkTheme": false,
  "enableRemoteConfigFirebase": false,
  "enableFirebaseAnalytics": false,
  "loginSMSConstants": {
    "dialCodeDefault": "+1",
    "nameDefault": "United States",
    "countryCodeDefault": "US"
  },
  "phoneNumberConfig": {
    "dialCodeDefault": "+1",
    "customCountryList": [],
    "selectorFlagAsPrefixIcon": true,
    "enable": false,
    "countryCodeDefault": "US",
    "showCountryFlag": true,
    "selectorType": "BOTTOM_SHEET",
    "useInternationalFormat": true
  },
  "appRatingConfig": {
    "showOnOpen": false,
    "minLaunches": 10,
    "remindDays": 7,
    "googlePlayIdentifier": "com.mineandpulse.app",
    "minDays": 7,
    "ios": "6454298885",
    "remindLaunches": 10
  },
  "advanceConfig": {
    "EnableWooCommerceWholesalePrices": false,
    "AlwaysShowTabBar": false,
    "isMultiLanguages": false,
    "SupportPageUrl": "https://support.inspireui.com/",
    "OrderNotesLinkSupport": false,
    "HideEmptyTags": true,
    "AjaxSearchURL": "",
    "isCaching": true,
    "OrderNotesWithPrivateNote": true,
    "EnableWOOCSCurrencySwitcher": false,
    "cartCheckoutButtonLocation": "endTop",
    "AutoDetectLanguage": false,
    "ShowExpiredCoupons": true,
    "showRequestNotification": true,
    "IsRequiredSiteSelection": true,
    "EnableCouponCode": false,
    "DetailedBlogLayout": "halfSizeImageType",
    "MaxQueryRadiusDistance": 10,
    "DownloadPageUrl": "https://mstore.io/#download",
    "AlwaysClearWebViewCache": true,
    "DefaultCurrency": {
      "symbol": "€",
      "decimalDigits": 2,
      "symbolBeforeTheNumber": false,
      "currency": "EUR",
      "currencyCode": "EUR"
    },
    "EnableDigitsMobileLogin": false,
    "enableProductBackdrop": false,
    "kIsResizeImage": true,
  
    "WebViewScript":
      "function removeElements() {\n    const elementIds = [\n        \"mobile_head\",\n        \"pix-page-footer\",\n        \"cmplz-cookiebanner-container\",\n        \"calculatebuttonfin\",\n        \"wa\",\n        \"quoteSecionID\",\n        \"masthead\"\n    ];\n\n    elementIds.forEach(id => {\n        const element = document.getElementById(id);\n        if (element) {\n            element.remove();\n        }\n    });\n\n    const loadingElements = document.getElementsByClassName(\"pix-page-loading-bg\");\n    if (loadingElements.length > 0) {\n        loadingElements[0].remove();\n    }\n\n    const loadingElements2 = document.getElementsByClassName(\"pix-loading-circ-path\");\n    if (loadingElements2.length > 0) {\n        loadingElements2[0].remove();\n    }\n\n    const eConInnerElement = document.getElementsByClassName(\"e-con-inner\");\n    if (eConInnerElement.length > 0 && (window.location.href.includes('tarifs') || window.location.href.includes('rates'))) {\n        eConInnerElement[0].remove();\n    }\n}\n\nremoveElements();\n\nconst observer = new MutationObserver(mutations => {\n    mutations.forEach(mutation => {\n        if (mutation.addedNodes.length || mutation.removedNodes.length) {\n            removeElements();\n        }\n    });\n});\n\nconst config = { childList: true, subtree: true };\n\nobserver.observe(document.body, config);",
    "PrivacyPoliciesPageUrlOrId": "https://mineandpulse.com/politique-de-confidentialite/",
       "EnableMembershipUltimate": false,
    "gdpr": {
      "confirmCaptcha": "DELETE",
      "showPrivacyPolicyFirstTime": false,
      "showDeleteAccount": true
    },
    "EnableSkuSearch": true,
    "EnableNewSMSLogin": false,
    "HideEmptyCategories": true,
    "categoryImageMenu": true,
    "EnableDigitsMobileFirebase": false,
    "EnablePointReward": false,
    "EnableApprovedReview": false,
    "EnableCart": true,
    "showStockStatus": false,
    "SocialConnectUrl": [
      {
        "name": "Facebook",
        "icon": "assets/icons/logins/facebook.png",
        "url": "https://www.facebook.com/inspireui"
      },
      {
        "name": "Instagram",
        "icon": "assets/icons/logins/instagram.png",
        "url": "https://www.instagram.com/inspireui9/"
      }
    ],
    "versionCheck": {"enable": false, "iOSAppStoreCountry": "US"},
    "DefaultStoreViewCode": "",
    "EnableDeliveryDateOnCheckout": true,
    "EnableRating": true,
    "RatioProductImage": 1,
    "inAppWebView": false,
    "pinnedProductTags": [],
    "hideOutOfStock": false,
    "EnableSyncCartToWebsite": true,
    "EnablePaidMembershipPro": false,
    "DefaultLanguage": "fr",
    "ShowAllCoupons": true,
    "EnableBottomAddToCart": true,
    "Currencies": [
      {
        "symbol": "€",
        "decimalDigits": 2,
        "symbolBeforeTheNumber": false,
        "currency": "EUR",
        "currencyCode": "EUR"
      }
    ],
    "QueryRadiusDistance": 10,
    "inAppUpdateForAndroid": {"enable": false, "typeUpdate": "flexible"},
    "EnableAttributesLabelConfigurableProduct": [],
    "GridCount": 3,
    "AlwaysRefreshBlog": false,
    "EnableDigitsMobileWhatsApp": false,
    "EnableFirebase": true,
    "categoryConfig": {"enableLargeCategories": true, "deepLevel": 3},
    "EnableAttributesConfigurableProduct": [],
    "EnableSyncCartFromWebsite": true,
    "ShowCouponList": true,
    "hideEmptyProductListRating": true,
    "MinQueryRadiusDistance": 1,
    "httpCache": true
  },
  "defaultDrawer": {
    "logo": "assets/images/logo1.png",
    "items": [
      {"show": true, "type": "home"},
      {"show": true, "type": "blog"},
      {"show": true, "type": "categories"},
      {"show": true, "type": "cart"},
      {"show": true, "type": "profile"},
      {"show": true, "type": "login"},
      {"show": true, "type": "category"}
    ]
  },
  "defaultSettings": [
     "products",
    "chat",
    "wishlist",
    "notifications",
    "currencies",
    "darkTheme",
    "order",
    "point",
    "rating",
    "privacy",
    "about"
  ],
  "loginSetting": {
    "facebookAppId": "430258564493822",
    "requirePhoneNumberWhenRegister": false,
    "facebookLoginProtocolScheme": "fb430258564493822",
    "smsLoginAsDefault": false,
    "showPhoneNumberWhenRegister": false,
    "IsRequiredLogin": false,
    "isResetPasswordSupported": true,
    "appleLoginSetting": {
      "appleAccountTeamID": "S9RPAM8224",
      "iOSBundleId": "com.inspireui.mstore.flutter"
    }
  },
  "oneSignalKey": {"enable": false, "appID": ""},
  "onBoardingConfig": {
    'enableOnBoarding': true,
    'version': 2,
    'autoCropImageByDesign': true,
    'isOnlyShowOnFirstTime': true,
    'showLanguage': false,
    'showLanguagePopup': false,
    'data': [
      {
        'title': 'Programmes de formation',
        'desc': 'Renforcez les compétences de vos équipes avec des modules pratiques sur la stratégie, la RSE, et la digitalisation, adaptés aux besoins des collaborateurs et dirigeants.',
        'image': 'assets/images/onb1v.jpg'
      },
      {
        'title': 'Mentorat personnalisé',
        'desc':
            'Accompagnez vos dirigeants dans la prise de décisions stratégiques, la gestion des crises, et l’optimisation de leur leadership pour un impact durable.',
        'image': 'assets/images/onb2v.jpg'
      },
      {
        'title': 'Plateformes et solutions numériques',
        'desc':
            'Digitalisez vos processus avec des outils sur mesure pour optimiser vos opérations, suivre vos projets, et simplifier la gestion, tout en formant vos équipes à leur utilisation.',
        'image': 'assets/images/onb3v.jpg'
      }
    ],
  },

  "vendorOnBoardingData": [
    {
      'title': 'Welcome aboard',
      'image': 'assets/images/searching.png',
      'desc': 'Just a few more steps to become our vendor'
    },
    {
      'title': 'Let\'s Get Started',
      'image': 'assets/images/manage.png',
      'desc': 'Good Luck for great beginnings.'
    }
  ],

  "adConfig": {
    "ads": [],
    "enable": false,
    "googleTestingId": [],
    "adMobAppIdIos": "ca-app-pub-7432665165146018~2664444130",
    "facebookTestingId": "",
    "adMobAppIdAndroid": "ca-app-pub-7432665165146018~2664444130"
  },
  "firebaseDynamicLinkConfig": {
    "iOSAppStoreId": "1469772800",
    "androidPackageName": "com.inspireui.fluxstore",
    "isEnabled": false,
    "androidAppMinimumVersion": 1,
    "link": "https://mstore.io/",
    "uriPrefix": "https://fluxstoreinspireui.page.link",
    "shortDynamicLinkEnable": true,
    "iOSBundleId": "com.inspireui.mstore.flutter",
    "iOSAppMinimumVersion": "1.0.1"
  },
  "languagesInfo": [
    {
      "name": "French",
      "icon": "assets/images/country/fr.png",
      "code": "fr",
      "text": "Français",
      "storeViewCode": "fr"
    }
  ],
  "paymentConfig": {
    "EnableAddress": true,
    "DefaultCountryISOCode": "EN",
    "EnableAddressLocationNote": false,
    "SmartCOD": {"amountStop": 200, "enabled": false, "extraFee": 10},
    "EnableRefundCancel": true,
    "DefaultStateISOCode": "LA",
    "ShowTransactionDetails": true,
    "GuestCheckout": true,
    "UpdateOrderStatus": false,
    "CheckoutPageSlug": {"en": "checkout"},
    "ShowWebviewCheckoutSuccessScreen": true,
    "excludedPaymentIds": [],
    "EnableReview": false,
    "EnableShipping": true,
    "EnableCreditCard": true,
    "NativeOnePageCheckout": true,
    "EnableCustomerNote": true,
    "EnableOnePageCheckout": false,
    "EnableAlphanumericZipCode": false,
    "allowSearchingAddress": false,
    "RefundPeriod": 7,
    "ShowOrderNotes": true
  },
  "payments": {
    "expresspay_apple_pay": "assets/icons/payment/apple-pay-mark.svg",
    "tap": "assets/icons/payment/tap.png",
    "paystack": "assets/icons/payment/paystack.png",
    "stripe_v2_google_pay": "assets/icons/payment/google-pay-mark.png",
    "ppcp-gateway": "assets/icons/payment/paypal.svg",
    "midtrans": "assets/icons/payment/midtrans.png",
    "xendit_cc": "assets/icons/payment/xendit.png",
    "stripe_v2_apple_pay": "assets/icons/payment/apple-pay-mark.svg",
    "myfatoorah_v2": "assets/icons/payment/myfatoorah.png",
    "thai-promptpay-easy": "assets/icons/payment/prompt-pay.png",
    "stripe": "assets/icons/payment/stripe.svg",
    "razorpay": "assets/icons/payment/razorpay.svg",
    "paypal": "assets/icons/payment/paypal.svg"
  },
  "shopifyPaymentConfig": {
    "productionMode": false,
    "applePayConfig": {
      "merchantId": "merchant.com.inspireui.fluxstore",
      "enable": false
    },
    "countryCode": "FR",
    "shopName": "FluxStore",
    "paymentCardConfig": {
      "serverEndpoint": "https://test-stripe-nine.vercel.app",
      "enable": false
    },
    "googlePayConfig": {
      "merchantId": "merchant.com.inspireui.fluxstore",
      "enable": false,
      "stripePublishableKey": "pk_test_O3awus9i5mA2wIX9a7pU3MSi00gZPcpJWX"
    }
  },
  "stripeConfig": {
    "publishableKey":
        "pk_test_51Oz40e04h8dwyc4rMcnDfgt84erPYd6DAev015Wdpns656lqq89qL7qRKcPeGBqT2wG0ug9hrxcnw0nOQ0R04b4Y009wuN825m",
    "enableGooglePay": true,
    "merchantCountryCode": "FR",
    "useV1": false,
    "paymentMethodIds": ["stripe"],
    "enableManualCapture": false,
    "stripeApiVersion": 3,
    "enabled": true,
    "merchantDisplayName": "Mine and Pulse",
    "merchantIdentifier": "merchant.com.inspireui.mstore.flutter",
    "enableApplePay": true,
    "returnUrl": "https://mineandpulse.com/?wc-api=wc_stripe",
    "saveCardAfterCheckout": false
  },
  "paypalConfig": {
    "clientId":
        "ASlpjFreiGp3gggRKo6YzXMyGM6-NwndBAQ707k6z3-WkSSMTPDfEFmNmky6dBX00lik8wKdToWiJj5w",
    "production": false,
    "paymentMethodId": "paypal",
    "nativeMode": false,
    "secret":
        "ECbFREri7NFj64FI_9WzS6A0Az2DqNLrVokBo0ZBu4enHZKMKOvX45v9Y1NBPKFr6QJv2KaSp5vk5A1G",
    "returnUrl": "com.inspireui.fluxstore://paypalpay",
    "enabled": true
  },
  "razorpayConfig": {
    "paymentMethodId": "razorpay",
    "keyId": "rzp_test_SDo2WKBNQXDk5Y",
    "keySecret": "RrgfT3oxbJdaeHSzvuzaJRZf",
    "enabled": true
  },
  "tapConfig": {
    "SecretKey": "sk_test_XKokBfNWv6FIYuTMg5sLPjhJ",
    "paymentMethodId": "tap",
    "enabled": false
  },
  "mercadoPagoConfig": {
    "production": false,
    "paymentMethodId": "woo-mercado-pago-basic",
    "accessToken":
        "TEST-5726912977510261-102413-65873095dc5b0a877969b7f6ffcceee4-613803978",
    "enabled": true
  },
  "payTmConfig": {
    "merchantId": "your-merchant-id",
    "production": false,
    "paymentMethodId": "paytm",
    "enabled": true
  },
  "payStackConfig": {
    "supportedCurrencies": ["ZAR"],
    "secretKey": "sk_test_d833fcaa6c02a61a9431d2026046c0517888a4a7",
    "production": false,
    "paymentMethodId": "paystack",
    "publicKey": "pk_test_a1a37615c9ca90dead5dd84dedbb5e476b640a6f",
    "enabled": true,
    "enableMobileMoney": true
  },
  "flutterwaveConfig": {
    "production": false,
    "paymentMethodId": "rave",
    "publicKey": "FLWPUBK_TEST-72b90e0734da8c9e43916adf63cd711e-X",
    "enabled": true
  },
  "myFatoorahConfig": {
    "apiToken":
        "rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL",
    "production": false,
    "paymentMethodId": "myfatoorah_v2",
    "accountCountry": "KW",
    "enabled": false
  },
  "midtransConfig": {
    "clientKey": "SB-Mid-client-he8W_FIlvugfA2RD",
    "paymentMethodId": "midtrans",
    "enabled": false
  },
  "inAppPurchaseConfig": {
    "subscriptionProductIDs": ["com.inspireui.fluxstore.subscription.test"],
    "nonConsumableProductIDs": [],
    "consumableProductIDs": ["com.inspireui.fluxstore.test"],
    "enabled": false
  },
  "xenditConfig": {
    "secretApiKey":
        "xnd_development_4E9ql5zFiC1BBmhK2r7wr9mNYyyvjLs0fIal00tGuHEj1iEYCu7B7tCUudv3Xe",
    "paymentMethodId": "xendit",
    "enabled": false
  },
  "expressPayConfig": {
    "merchantPassword": "4a00a5fd3c63dd2b743c75746af6ffe2",
    "merchantId": "merchant.com.inspireui.mstore.flutter",
    "production": false,
    "paymentMethodId": "shahbandrpay",
    "merchantKey": "b2be2ffc-c8b9-11ed-82a9-42eb4e39c8ae",
    "enabled": true
  },
  "thaiPromptPayConfig": {
    "paymentMethodId": "thai-promptpay-easy",
    "enabled": false
  },
  "defaultCountryShipping": [],
  "afterShip": {
    "api": "e2e9bae8-ee39-46a9-a084-781d0139274f",
    "tracking_url": "https://fluxstore.aftership.com"
  },
  "googleApiKey": {
    "web": "AIzaSyDSNYVC-8DU9BTcyqkeN9c5pgVhwOBAvGg",
    "android": "AIzaSyDSNYVC-8DU9BTcyqkeN9c5pgVhwOBAvGg",
    "ios": "AIzaSyDSNYVC-8DU9BTcyqkeN9c5pgVhwOBAvGg"
  },
"productDetail": {
    "height": 0.5372682709933658,
    "marginTop": 0.0,
    "safeArea": false,
    "showVideo": true,
    "showThumbnailAtLeast": 1,
    "layout": "simpleType",
    "borderRadius": 3.0,
    "ShowSelectedImageVariant": true,
    "ForceWhiteBackground": false,
    "AutoSelectFirstAttribute": true,
    "enableReview": false,
    "attributeImagesSize": 50.0,
    "showSku": false,
    "showStockQuantity": false,
    "showProductCategories": true,
    "showProductTags": true,
    "hideInvalidAttributes": true,
    "ShowImageGallery": false,
    "autoPlayGallery": true,
    "allowMultiple": false,
    "showBrand": false,
    "showQuantityInList": false,
    "showAddToCartInSearchResult": true,
    "productListItemHeight": 125.0,
    "limitDayBooking": 14,
    "boxFit": "cover",
    "SliderShowGoBackButton": false,
    "SliderIndicatorType": "number",
    "productMetaDataKey": "",
    "showRelatedProductFromSameStore": true,
    "showRelatedProduct": true,
    "showRecentProduct": false,
    "productImageLayout": "page",
    "expandDescription": true,
    "expandInfors": true,
    "expandCategories": true,
    "expandTags": false,
    "expandReviews": false,
    "expandTaxonomies": true,
    "expandListingMenu": true,
    "expandMap": true,
    "showHeart": false,
    "fixedBuyButtonToBottom": false
  },
    "blogDetail": {
    "showAuthorInfo": false,
    "showTextAdjustment": true,
    "showRelatedBlog": true,
    "showComment": true,
    "showHeart": false,
    "showSharing": false,
    "enableAudioSupport": false
  },
  "productVariantLayout": {
    "color": "color",
    "size": "box",
    "color-image": "image",
    "height": "option"
  },
  "productAddons": {
    "allowedCustomType": ["png", "pdf", "docx"],
    "allowMultiple": false,
    "allowImageType": true,
    "allowVideoType": true,
    "allowCustomType": true,
    "fileUploadSizeLimit": 5
  },
  "cartDetail": {"maxAllowQuantity": 999, "minAllowTotalCartValue": 0},
  "productVariantLanguage": {
    "ar": {
      "color": "اللون",
      "size": "بحجم",
      "color-image": "اللون",
      "height": "ارتفاع"
    },
    "vi": {
      "color": "Màu",
      "size": "Kích thước",
      "color-image": "Màu",
      "height": "Chiều Cao"
    },
    "en": {
      "color": "Color",
      "size": "Size",
      "color-image": "Color",
      "height": "Height"
    }
  },
  "excludedCategory": "311",
  "saleOffProduct": {
    "ShowCountDown": true,
    "HideEmptySaleOffLayout": false,
    "Color": "#C7222B"
  },
  "notStrictVisibleVariant": true,
  "configChat": {
    "showOnScreens": ["profile"],
    "hideOnScreens": [],
    "EnableSmartChat": true,
    "UseRealtimeChat": false,
    "version": "2"
  },
  "openAIConfig": {
    "supabaseAnonKey":
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0a3JxdnRzbHVqZHpqeGhqb2N1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzU5OTI5MzMsImV4cCI6MTk5MTU2ODkzM30.qKtfNHhL6AKqGsmDfjMq90bIWIWlnN3UVgnwcLF_vGY",
    "revenueProductsIos": ["gpt_3999_1y_1w0", "gpt_399_1m_1w0"],
    "enableSubscription": false,
    "enableInputKey": false,
    "supabaseUrl": "https://rtkrqvtslujdzjxhjocu.supabase.co",
    "revenueAppleApiKey": "appl_XNtOUZPHwUzelbvwdSezFsMrNeT",
    "revenueProductsAndroid": ["gpt_pro_v1"],
    "enableChat": false,
    "revenueGoogleApiKey": "goog_kpDTQdItiHkSrdjDdvLIwAdjOzG"
  },
  "smartChat": [
    {
      "app": "tel:+33643369314",
      "iconData": "phone",
      "description": "Mobile"
    },
    {
      "app": "mailto:contact@mineandpulse.com",
      "description": "E-mail",
      "iconData": "sms"
    }
  ],
  "adminEmail": "contact@mineandpulse.com",
  "adminName": "Mine and Pulse",
  "deliveryConfig": {
    "appLogo": "assets/images/app_icon_transparent.png",
    "appName": "FluxStore Delivery",
    "dashboardName2": "Delivery",
    "dashboardName1": "FluxStore",
    "enableSystemNotes": false
  },
  "managerConfig": {
    "appLogo": "assets/images/app_icon_transparent.png",
    "appName": "FluxStore Admin",
    "enableDeliveryFeature": false
  },
  "loadingIcon": {"layout": "spinkit", "type": "circle", "size": 40.1},
  "splashScreen": {
    "enable": true,
    "duration": 2000,
    "type": "static",
    "image": "assets/images/logo-splash.png",
    "animationName": "fluxstore",
    "boxFit": "contain",
    "backgroundColor": "#ffffff",
    "paddingTop": 0,
    "paddingBottom": 0,
    "paddingLeft": 50,
    "paddingRight": 50
  },
  "lightConfig": {"logo": "assets/images/logo.png", "MainColor": "ffce9d45"},
  "darkConfig": {"logo": "assets/images/logo.png", "MainColor": "ffce9d45"},
  "productCard": {
    "enableRating": false,
    "showCartIcon": true,
    "showCartButtonWithQuantity": false,
    "hideTitle": false,
    "borderRadius": 3,
    "hideStore": true,
    "showCartButton": false,
    "showCartIconColor": false,
    "boxFit": "cover",
    "showHeart": false,
    "hidePrice": false
  },
  "colorOverrideConfig": {
    "ratingColor": {
      "primaryLinearProgress": "ffbd9146",
      "borderStar": "ffbd9146",
      "primaryStar": "fff39c12",
      "backgroundLinearProgress": "ff000000"
    },
    "productFilterColor": {
      "backgroundColorOpacity": 1,
      "labelColorOpacity": 1,
      "useAccentColor": false,
      "useBackgroundColor": false,
      "usePrimaryColorLight": false
    },
    "stockColor": {
      "backorder": "ffeaa601",
      "outOfStock": "ffe74c3c",
      "inStock": "ffbd9146"
    }
  },
  "addressFields": [
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 1,
      "type": "firstName",
      "required": true
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 2,
      "type": "lastName",
      "required": true
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 3,
      "type": "phoneNumber",
      "required": true
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 4,
      "type": "email",
      "required": true
    },
    {"visible": true, "position": 5, "type": "searchAddress"},
    {"visible": true, "position": 6, "type": "selectAddress"},
    {"visible": true, "position": 7, "type": "country"},
    {"visible": true, "position": 8, "type": "state"},
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 9,
      "type": "city",
      "required": true
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 10,
      "type": "apartment",
      "required": false
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 12,
      "type": "street",
      "required": true
    },
    {
      "visible": true,
      "editable": true,
      "defaultValue": "",
      "position": 13,
      "type": "zipCode",
      "required": true
    }
  ]
};
