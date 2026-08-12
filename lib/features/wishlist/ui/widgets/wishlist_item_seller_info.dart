import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistItemSellerInfo extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final bool isVerified;

  const WishlistItemSellerInfo({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.isVerified,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 10, backgroundImage: NetworkImage(avatarUrl)),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12, color: AppColors.greysoft),
          ),
        ),
        if (isVerified)
          const Icon(Icons.check_circle, color: AppColors.primary, size: 14),
      ],
    );
  }
}
