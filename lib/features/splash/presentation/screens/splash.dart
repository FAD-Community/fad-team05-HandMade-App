import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        // ignore: use_build_context_synchronously
        context,
        Routes.onboarding,
      );
    });
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
