import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:springster/springster.dart';

import '../core/theme/constants.dart';
import 'generic_selector.dart';

class SelectableLargeChip extends StatefulWidget implements SelectableWidget {
  final bool isItemSelected;
  final VoidCallback onPressed;
  final String label;
  final Color? color;
  final bool isOtherSelected;

  const SelectableLargeChip({
    super.key,
    required this.isItemSelected,
    required this.onPressed,
    required this.label,
    this.color,
    this.isOtherSelected = false,
  });

  @override
  State<SelectableLargeChip> createState() => _SelectableLargeChipState();

  @override
  bool get isSelected => isItemSelected;

  @override
  VoidCallback get onSelected => onPressed;
}

class _SelectableLargeChipState extends State<SelectableLargeChip>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: 300.ms);
    _radiusAnimation = Tween<double>(begin: 56, end: 16).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Spring.defaultIOS.toCurve,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;
    return AnimatedBuilder(
      animation: _radiusAnimation,
      builder: (context, child) {
        return InkWell(
          onTapDown: (TapDownDetails tapDownDetails) {
            animationController.forward();
          },
          onTapUp: (TapUpDetails tapUpDetails) {
            animationController.reverse(from: 1.0);
          },
          borderRadius: BorderRadius.circular(_radiusAnimation.value),
          onTap: widget.onSelected,
          splashFactory: InkSparkle.splashFactory,

          child: Container(
            height: 72,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.padding32,
              vertical: Dimensions.padding24,
            ),
            decoration: BoxDecoration(
              boxShadow: isDarkMode ? [] :  [
                BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 1,
                  color: theme.colorScheme.onSurface.withValues(alpha: .05),
                ),
              ],
              borderRadius: BorderRadius.circular(_radiusAnimation.value),
              border:
                  widget.isSelected
                      ? Border.all(
                        color: widget.color ?? theme.colorScheme.primary,
                      )
                      : null,
              color:
                  widget.isSelected
                      ? widget.color?.withValues(alpha: .15) ??
                          theme.colorScheme.primaryContainer
                      : (isDarkMode
                          ? Colors.white.withValues(alpha: .1)
                          : Colors.white),
            ),
            child: FittedBox(
              child: Center(
                child:
                    widget.isOtherSelected
                        ? Icon(
                          HugeIcons.strokeRoundedPlusSign,
                          color: widget.color ?? theme.colorScheme.primary,
                        )
                        : Text(
                          widget.label,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color:
                                widget.isSelected
                                    ? widget.color != null
                                        ? theme.colorScheme.onSurface
                                        : theme.colorScheme.primary
                                    : theme.colorScheme.onSurface,
                          ),
                        ),
              ),
            ),
          ),
        );
      },
    );
  }
}
