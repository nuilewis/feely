import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:springster/springster.dart';

import '../../core/core.dart';
import 'app_icon.dart';

class AppChip extends StatefulWidget {
  const AppChip({
    super.key,
    this.onSelected,
    this.onDeleted,
    required this.label,
    this.color,
    this.backgroundColor,
    this.icon,
    this.iconPath,
    this.padding,
    this.borderRadius,
  });

  final Function(bool)? onSelected;
  final VoidCallback? onDeleted;
  final String label;
  final Color? color;
  final Color? backgroundColor;
  final IconData? icon;
  final String? iconPath;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Chip(
      chipAnimationStyle: ChipAnimationStyle(
        enableAnimation: AnimationStyle(curve: Spring.defaultIOS.toCurve),
        selectAnimation: AnimationStyle(curve: Spring.defaultIOS.toCurve),
        deleteDrawerAnimation: AnimationStyle(curve: Spring.defaultIOS.toCurve),
        avatarDrawerAnimation: AnimationStyle(curve: Spring.defaultIOS.toCurve),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular( widget.borderRadius ?? Dimensions.padding24)
      ),
      onDeleted: widget.onDeleted,
      deleteIcon: const Icon(HugeIcons.strokeRoundedCancel01),
      visualDensity: VisualDensity.comfortable,
      padding: widget.padding ?? const EdgeInsets.all(Dimensions.padding12),
      backgroundColor:
          widget.backgroundColor ?? theme.colorScheme.surfaceContainerLow,
      avatar:
          (widget.icon != null || widget.iconPath != null)
              ? AppIcon(
                icon: widget.icon,
                iconPath: widget.iconPath,
                size: 20,
                color: widget.color,
              )
              : null,
      label: Text(
        widget.label,
        style: theme.textTheme.bodyMedium!.copyWith(color: widget.color),
      ),
    );
  }
}
