import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class LikedButtonCustom extends StatelessWidget {
  LikedButtonCustom({super.key});
  bool isFavorite = false;
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 270, top: 7),
      child: LikeButton(
        onTap: (isLiked) {
          likeCount = isLiked ? likeCount - 1 : likeCount + 1;

          return Future.value(!isLiked);
        },
        likeBuilder: (isLiked) {
          return Icon(
            size: 32,
            isLiked ? Icons.favorite : Icons.favorite_border_outlined,
            color: isLiked ? Colors.red : Colors.grey.withOpacity(0.9),
          );
        },
        likeCount: likeCount,
        countBuilder: (int? count, bool isLiked, String text) {
          return Text(
            '   $count ${AppLocalizations.of(context)!.like}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          );
        },
      ),
    );
  }
}
