import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/bloc/app_cubit.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/generated/l10n.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                S.of(context).settings,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.userNameColor,
                ),
              ),
            ),
            BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return ListTile(
                  leading: const Icon(Icons.language, color: AppColors.primary),
                  title: Text(
                    S.of(context).language,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  trailing: DropdownButton<String>(
                    value: state.locale.languageCode,
                    underline: const SizedBox(),
                    items: [
                      DropdownMenuItem(value: 'en', child: Text('English')),
                      DropdownMenuItem(value: 'ar', child: Text('العربية')),
                    ],
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        context.read<AppCubit>().changeLanguage(newValue);
                      }
                    },
                  ),
                );
              },
            ),
            BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return ListTile(
                  leading: const Icon(
                    Icons.dark_mode,
                    color: AppColors.primary,
                  ),
                  title: Text(
                    S.of(context).darkMode,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  trailing: Switch(
                    value: state.themeMode == ThemeMode.dark,
                    onChanged: (value) {
                      context.read<AppCubit>().toggleTheme(value);
                    },
                    activeThumbColor: AppColors.primary,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
