import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/di/service_locator.dart';
import 'package:hand_made/core/spacing/spacing.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_app_bar.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_categories.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_list_view.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_populer_categories.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_search.dart';
import 'package:hand_made/features/search/presentation/widgets/list_view_seller.dart';
import 'package:hand_made/features/search/presentation/widgets/recent_search.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class SearrchViewScreen extends StatefulWidget {
  const SearrchViewScreen({super.key});

  @override
  State<SearrchViewScreen> createState() => _SearrchViewScreenState();
}

class _SearrchViewScreenState extends State<SearrchViewScreen> {
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.homeScreenBgColor,
      body: BlocProvider(
        create: (context) => getIt<SearchCubit>()..loadSearches(),
        child: Column(
          children: [
            CustomAppBar(),
            15.hSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomSearch(),
                    ),
                    10.hSpace,
                    RecentSearches(),
                    10.hSpace,
                    CustomPopulerCategories(
                      title: s.popularCategories,
                      buttonName: s.seeAll,
                    ),
                    15.hSpace,
                    CustomCategories(),
                    15.hSpace,
                    CustomPopulerCategories(
                      title: s.recommendedSellers,
                      buttonName: s.seeAll,
                    ),
                    ListViewSeller(),
                    10.hSpace,
                    CustomPopulerCategories(
                      title: s.recentlyViewed,
                      buttonName: s.seeAll,
                    ),
                    10.hSpace,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomListView(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
