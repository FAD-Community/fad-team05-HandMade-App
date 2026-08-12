import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';
import 'package:hand_made/features/search/presentation/cubit/search_state.dart';
import 'package:hand_made/features/search/presentation/widgets/recent_search_item.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;

    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state.searches.isEmpty) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    s.recentSearches,
                    style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
                      color: AppColors.deepPurple,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      context.read<SearchCubit>().clearAllSearches();
                    },
                    child: Text(
                      s.clearAll,
                      style: AppTextStyle.font14deepPurplepoppinssemiweight400
                          .copyWith(color: AppColors.primary),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.searches.length,
                itemBuilder: (context, index) {
                  return RecentSearchItem(search: state.searches[index]);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
