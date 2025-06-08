import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/core.dart';
import '../../../../core/utils/feelings.dart';

class FeelingItem extends StatelessWidget {
  final Feelings feeling;
  final VoidCallback onPressed;
  const FeelingItem({
    super.key,
    required this.feeling,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      // splashColor: theme.colorScheme.primary.withValues(alpha: 0),
      // splashFactory: InkSparkle.splashFactory,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            feeling.shape,
            height: 200,
            width: 200,
          ),
          Text(
            feeling.label,
            style: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}