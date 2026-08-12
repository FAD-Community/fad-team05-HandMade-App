import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    return Container(
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 2, color: AppColors.lightBorderColor),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColors.greysoft, size: 22.sp),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.search,
              onSubmitted: (_) {
                context.read<SearchCubit>().submitSearch();
              },
              controller: context.read<SearchCubit>().searchController,
              decoration: InputDecoration(
                hintText: s.searchHInt,
                hintStyle: AppTextStyle.font12greypoppinssemiweight400.copyWith(
                  color: AppColors.greysoft,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
