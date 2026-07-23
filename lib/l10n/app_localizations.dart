// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart' as intl;

// import 'app_localizations_ar.dart';
// import 'app_localizations_en.dart';

// // ignore_for_file: type=lint

// /// Callers can lookup localized strings with an instance of AppLocalizations
// /// returned by `AppLocalizations.of(context)`.
// ///
// /// Applications need to include `AppLocalizations.delegate()` in their app's
// /// `localizationDelegates` list, and the locales they support in the app's
// /// `supportedLocales` list. For example:
// ///
// /// ```dart
// /// import 'l10n/app_localizations.dart';
// ///
// /// return MaterialApp(
// ///   localizationsDelegates: AppLocalizations.localizationsDelegates,
// ///   supportedLocales: AppLocalizations.supportedLocales,
// ///   home: MyApplicationHome(),
// /// );
// /// ```
// ///
// /// ## Update pubspec.yaml
// ///
// /// Please make sure to update your pubspec.yaml to include the following
// /// packages:
// ///
// /// ```yaml
// /// dependencies:
// ///   # Internationalization support.
// ///   flutter_localizations:
// ///     sdk: flutter
// ///   intl: any # Use the pinned version from flutter_localizations
// ///
// ///   # Rest of dependencies
// /// ```
// ///
// /// ## iOS Applications
// ///
// /// iOS applications define key application metadata, including supported
// /// locales, in an Info.plist file that is built into the application bundle.
// /// To configure the locales supported by your app, you’ll need to edit this
// /// file.
// ///
// /// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
// /// Then, in the Project Navigator, open the Info.plist file under the Runner
// /// project’s Runner folder.
// ///
// /// Next, select the Information Property List item, select Add Item from the
// /// Editor menu, then select Localizations from the pop-up menu.
// ///
// /// Select and expand the newly-created Localizations item then, for each
// /// locale your application supports, add a new item and select the locale
// /// you wish to add from the pop-up menu in the Value field. This list should
// /// be consistent with the languages listed in the AppLocalizations.supportedLocales
// /// property.
// abstract class AppLocalizations {
//   AppLocalizations(String locale)
//     : localeName = intl.Intl.canonicalizedLocale(locale.toString());

//   final String localeName;

//   static AppLocalizations? of(BuildContext context) {
//     return Localizations.of<AppLocalizations>(context, AppLocalizations);
//   }

//   static const LocalizationsDelegate<AppLocalizations> delegate =
//       _AppLocalizationsDelegate();

//   /// A list of this localizations delegate along with the default localizations
//   /// delegates.
//   ///
//   /// Returns a list of localizations delegates containing this delegate along with
//   /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
//   /// and GlobalWidgetsLocalizations.delegate.
//   ///
//   /// Additional delegates can be added by appending to this list in
//   /// MaterialApp. This list does not have to be used at all if a custom list
//   /// of delegates is preferred or required.
//   static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
//       <LocalizationsDelegate<dynamic>>[
//         delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ];

//   /// A list of this localizations delegate's supported locales.
//   static const List<Locale> supportedLocales = <Locale>[
//     Locale('ar'),
//     Locale('en'),
//   ];

//   /// No description provided for @skip.
//   ///
//   /// In en, this message translates to:
//   /// **'Skip'**
//   String get skip;

//   /// No description provided for @next.
//   ///
//   /// In en, this message translates to:
//   /// **'Next'**
//   String get next;

//   /// No description provided for @getStarted.
//   ///
//   /// In en, this message translates to:
//   /// **'Get Started'**
//   String get getStarted;

//   /// No description provided for @welcomeBack.
//   ///
//   /// In en, this message translates to:
//   /// **'Welcome Back'**
//   String get welcomeBack;

//   /// No description provided for @discoverHandmade.
//   ///
//   /// In en, this message translates to:
//   /// **'Discover Handmade'**
//   String get discoverHandmade;

//   /// No description provided for @supportCreators.
//   ///
//   /// In en, this message translates to:
//   /// **'Support Creators'**
//   String get supportCreators;

//   /// No description provided for @shopWithConfidence.
//   ///
//   /// In en, this message translates to:
//   /// **'Shop with Confidence'**
//   String get shopWithConfidence;

//   /// No description provided for @explore.
//   ///
//   /// In en, this message translates to:
//   /// **'Explore unique handmade products crafted with care by talented local artisans.'**
//   String get explore;

//   /// No description provided for @follow.
//   ///
//   /// In en, this message translates to:
//   /// **'Follow your favorite makers, connect with their work, and support small businesses.'**
//   String get follow;

//   /// No description provided for @save.
//   ///
//   /// In en, this message translates to:
//   /// **'Save your favorites, enjoy secure checkout, and receive handmade products with ease.'**
//   String get save;

//   /// No description provided for @iAmBuyer.
//   ///
//   /// In en, this message translates to:
//   /// **'I am a Buyer'**
//   String get iAmBuyer;

//   /// No description provided for @iAmSeller.
//   ///
//   /// In en, this message translates to:
//   /// **'I am a Seller'**
//   String get iAmSeller;

//   /// No description provided for @order.
//   ///
//   /// In en, this message translates to:
//   /// **'Order handmade products with ease.'**
//   String get order;

//   /// No description provided for @crave.
//   ///
//   /// In en, this message translates to:
//   /// **'Find unique handmade creations you\'ll love.'**
//   String get crave;

//   /// No description provided for @orLogin.
//   ///
//   /// In en, this message translates to:
//   /// **'or login with'**
//   String get orLogin;

//   /// No description provided for @orSignUp.
//   ///
//   /// In en, this message translates to:
//   /// **'or sign up with'**
//   String get orSignUp;

//   /// No description provided for @usernameOrEmail.
//   ///
//   /// In en, this message translates to:
//   /// **'Username or Email'**
//   String get usernameOrEmail;

//   /// No description provided for @password.
//   ///
//   /// In en, this message translates to:
//   /// **'Password'**
//   String get password;

//   /// No description provided for @google.
//   ///
//   /// In en, this message translates to:
//   /// **'Google'**
//   String get google;

//   /// No description provided for @facebook.
//   ///
//   /// In en, this message translates to:
//   /// **'Facebook'**
//   String get facebook;

//   /// No description provided for @login.
//   ///
//   /// In en, this message translates to:
//   /// **'Login'**
//   String get login;

//   /// No description provided for @signUp.
//   ///
//   /// In en, this message translates to:
//   /// **'Sign Up'**
//   String get signUp;

//   /// No description provided for @forgotPassword.
//   ///
//   /// In en, this message translates to:
//   /// **'Forgot Password?'**
//   String get forgotPassword;

//   /// No description provided for @emailAddress.
//   ///
//   /// In en, this message translates to:
//   /// **'Email Address'**
//   String get emailAddress;

//   /// No description provided for @confirmPassword.
//   ///
//   /// In en, this message translates to:
//   /// **'Confirm Password'**
//   String get confirmPassword;

//   /// No description provided for @alreadyHaveAnAccount.
//   ///
//   /// In en, this message translates to:
//   /// **'Already have an account?'**
//   String get alreadyHaveAnAccount;

//   /// No description provided for @verify.
//   ///
//   /// In en, this message translates to:
//   /// **'Verify'**
//   String get verify;

//   /// No description provided for @verifyCode.
//   ///
//   /// In en, this message translates to:
//   /// **'Verify Code'**
//   String get verifyCode;

//   /// No description provided for @resendCode.
//   ///
//   /// In en, this message translates to:
//   /// **'Resend Code'**
//   String get resendCode;

//   /// No description provided for @createAccount.
//   ///
//   /// In en, this message translates to:
//   /// **'Create Account'**
//   String get createAccount;

//   /// No description provided for @otpConfirmation.
//   ///
//   /// In en, this message translates to:
//   /// **'OTP Confirmation'**
//   String get otpConfirmation;

//   /// No description provided for @doNotReceiveOtp.
//   ///
//   /// In en, this message translates to:
//   /// **'Didn\'t receive the OTP?'**
//   String get doNotReceiveOtp;

//   /// No description provided for @please.
//   ///
//   /// In en, this message translates to:
//   /// **'Please enter the code we have just sent to your phone.'**
//   String get please;

//   /// No description provided for @pleaseWrite.
//   ///
//   /// In en, this message translates to:
//   /// **'Please enter your new password.'**
//   String get pleaseWrite;

//   /// No description provided for @newPassword.
//   ///
//   /// In en, this message translates to:
//   /// **'New Password'**
//   String get newPassword;
// }

// class _AppLocalizationsDelegate
//     extends LocalizationsDelegate<AppLocalizations> {
//   const _AppLocalizationsDelegate();

//   @override
//   Future<AppLocalizations> load(Locale locale) {
//     return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
//   }

//   @override
//   bool isSupported(Locale locale) =>
//       <String>['ar', 'en'].contains(locale.languageCode);

//   @override
//   bool shouldReload(_AppLocalizationsDelegate old) => false;
// }

// AppLocalizations lookupAppLocalizations(Locale locale) {
//   // Lookup logic when only language code is specified.
//   switch (locale.languageCode) {
//     case 'ar':
//       return AppLocalizationsAr();
//     case 'en':
//       return AppLocalizationsEn();
//   }

//   throw FlutterError(
//     'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
//     'an issue with the localizations generation tool. Please file an issue '
//     'on GitHub with a reproducible sample app and the gen-l10n configuration '
//     'that was used.',
//   );
// }
