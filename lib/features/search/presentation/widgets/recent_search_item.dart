import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';

class RecentSearchItem extends StatelessWidget {
  final SearchHistoryEntity search;

  const RecentSearchItem({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(right: 8.w, left: 8.w, top: 10.h, bottom: 5.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: AppColors.warmCream,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.history, size: 18),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              search.title,
              style: AppTextStyle.font14deepPurplepoppinssemiweight400.copyWith(
                color: AppColors.darkBrown,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.read<SearchCubit>().deleteSearch(search.id);
            },
            child: Icon(Icons.close, size: 18),
          ),
        ],
      ),
    );
  }
}
