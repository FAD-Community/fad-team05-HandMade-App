import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/di/service_locator.dart';
import 'package:hand_made/core/routing/app_router.dart';

import 'package:hand_made/core/bloc/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await CacheHelper.init();
  await setupGetIt();

  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              locale: state.locale,
              themeMode: state.themeMode,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter.generateRoute,
            ),
          );
        },
      ),
    );
  }
}
