// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Discover Handmade`
  String get discoverHandmade {
    return Intl.message(
      'Discover Handmade',
      name: 'discoverHandmade',
      desc: '',
      args: [],
    );
  }

  /// `Support Creators`
  String get supportCreators {
    return Intl.message(
      'Support Creators',
      name: 'supportCreators',
      desc: '',
      args: [],
    );
  }

  /// `Shop with Confidence`
  String get shopWithConfidence {
    return Intl.message(
      'Shop with Confidence',
      name: 'shopWithConfidence',
      desc: '',
      args: [],
    );
  }

  /// `Explore unique handmade products crafted with care by talented local artisans.`
  String get explore {
    return Intl.message(
      'Explore unique handmade products crafted with care by talented local artisans.',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Follow your favorite makers, connect with their work, and support small businesses.`
  String get follow {
    return Intl.message(
      'Follow your favorite makers, connect with their work, and support small businesses.',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Save your favorites, enjoy secure checkout, and receive handmade products with ease.`
  String get save {
    return Intl.message(
      'Save your favorites, enjoy secure checkout, and receive handmade products with ease.',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `I am a Buyer`
  String get iAmBuyer {
    return Intl.message(
      'I am a Buyer',
      name: 'iAmBuyer',
      desc: '',
      args: [],
    );
  }

  /// `I am a Seller`
  String get iAmSeller {
    return Intl.message(
      'I am a Seller',
      name: 'iAmSeller',
      desc: '',
      args: [],
    );
  }

  /// `Order handmade products with ease.`
  String get order {
    return Intl.message(
      'Order handmade products with ease.',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Find unique handmade creations you'll love.`
  String get crave {
    return Intl.message(
      'Find unique handmade creations you\'ll love.',
      name: 'crave',
      desc: '',
      args: [],
    );
  }

  /// `or login with`
  String get orLogin {
    return Intl.message(
      'or login with',
      name: 'orLogin',
      desc: '',
      args: [],
    );
  }

  /// `or sign up with`
  String get orSignUp {
    return Intl.message(
      'or sign up with',
      name: 'orSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Username or Email`
  String get usernameOrEmail {
    return Intl.message(
      'Username or Email',
      name: 'usernameOrEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message(
      'Verify Code',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `OTP Confirmation`
  String get otpConfirmation {
    return Intl.message(
      'OTP Confirmation',
      name: 'otpConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the OTP?`
  String get doNotReceiveOtp {
    return Intl.message(
      'Didn\'t receive the OTP?',
      name: 'doNotReceiveOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the code we have just sent to your phone.`
  String get please {
    return Intl.message(
      'Please enter the code we have just sent to your phone.',
      name: 'please',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your new password.`
  String get pleaseWrite {
    return Intl.message(
      'Please enter your new password.',
      name: 'pleaseWrite',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get wishlist {
    return Intl.message(
      'Wishlist',
      name: 'wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
