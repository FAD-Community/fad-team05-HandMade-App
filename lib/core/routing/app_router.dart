import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:hand_made/features/auth/presentation/bloc/resetpassword/cubit/resetpassword_cubit.dart';
import 'package:hand_made/features/auth/presentation/screens/login_view.dart';
import 'package:hand_made/features/auth/presentation/screens/register_view.dart';
import 'package:hand_made/features/auth/presentation/screens/reset_password_view.dart';
import 'package:hand_made/features/home/presentation/views/home_screen_layout.dart';
import 'package:hand_made/features/onboarding/presentation/screens/first_screen.dart';
import 'package:hand_made/features/onboarding/presentation/screens/onboarding_screen_view.dart';
import 'package:hand_made/features/otp/presentation/cubit/cubit/otp_cubit.dart';
import 'package:hand_made/features/otp/presentation/screens/otp_screen_view.dart';
import 'package:hand_made/features/splash/presentation/screens/splash.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreenview());
      case Routes.firstScreen:
        return MaterialPageRoute(builder: (_) => FirstScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(),
            child: LoginView(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(),
            child: const RegisterView(),
          ),
        );

      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ResetPasswordCubit(),
            child: ResetPasswordView(),
          ),
        );

      case Routes.otp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OtpCubit(),
            child: const OtpScreenView(),
          ),
        );

      // case Routes.resetPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ResetPasswordScreen(),
      //   );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreenLayout(),
        );

      // case Routes.profile:
      //   return MaterialPageRoute(
      //     builder: (_) => const ProfileScreen(),
      //   );

      // case Routes.settings:
      //   return MaterialPageRoute(
      //     builder: (_) => const SettingsScreen(),
      //   );

      // case Routes.productDetails:
      //   return MaterialPageRoute(
      //     builder: (_) => const ProductDetailsScreen(),
      //   );

      // case Routes.cart:
      //   return MaterialPageRoute(
      //     builder: (_) => const CartScreen(),
      //   );

      // case Routes.checkout:
      //   return MaterialPageRoute(
      //     builder: (_) => const CheckoutScreen(),
      //   );

      // case Routes.orders:
      //   return MaterialPageRoute(
      //     builder: (_) => const OrdersScreen(),
      //   );

      // case Routes.orderDetails:
      //   return MaterialPageRoute(
      //     builder: (_) => const OrderDetailsScreen(),
      //   );

      // case Routes.wishlist:
      //   return MaterialPageRoute(
      //     builder: (_) => const WishlistScreen(),
      //   );

      // case Routes.search:
      //   return MaterialPageRoute(
      //     builder: (_) => const SearchScreen(),
      //   );

      // case Routes.notifications:
      //   return MaterialPageRoute(
      //     builder: (_) => const NotificationsScreen(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
