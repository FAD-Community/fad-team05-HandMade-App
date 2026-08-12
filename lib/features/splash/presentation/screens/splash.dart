import 'package:flutter/material.dart';
import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/config/cache/cache_key.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/features/splash/presentation/widgets/coustomsplashbody.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  Future<void> checkUser() async {
    await Future.delayed(const Duration(seconds: 2));

    final bool? isFirstTime = CacheHelper.getData(CacheKey.isFirstTime);
    final String? token = CacheHelper.getData(CacheKey.token);
    if (isFirstTime == null) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.onboarding);
    } else if (token == null) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.login);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverToBoxAdapter(child: CoustomSplashBody())],
      ),
    );
  }
}
