import 'package:feely/components/components.dart';
import 'package:feely/components/selectable_large_chip.dart';
import 'package:feely/features/add_mood/screens/select_mood_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/constants.dart';
import '../../../core/utils/feelings.dart';

class SelectActivitiesScreen extends StatefulWidget {
  final Feelings feeling;
  const SelectActivitiesScreen({super.key, required this.feeling});

  @override
  State<SelectActivitiesScreen> createState() => _SelectActivitiesScreenState();
}

class _SelectActivitiesScreenState extends State<SelectActivitiesScreen> {
  final List<String> themes = [
    "Work",
    "Personal",
    "Family",
    "Friends",
    "Hobbies",
    "Other",
  ];

  final List<String> people = [
    "Myself",
    "With Friends",
    "With Family",
    "With Coworkers",
    "Pets",
    "Other",
  ];

  final List<String> places = [
    "Home",
    "School",
    "Work",
    "Outdoors",
    "Indoors",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(width: size.width, height: size.height),
          Positioned(
            bottom: 0,
            child: AnimatedGradient(
              colors: [
                widget.feeling.gradient.colors.first,
                widget.feeling.gradient.colors.last,
                widget.feeling.gradient.colors.first.withValues(alpha: .1),
                widget.feeling.gradient.colors.last.withValues(alpha: .1),
              ],
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.padding16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    pageTitle: "",
                    showBackButton: true,
                    showTitle: false,
                  ),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "What were you doing that made you feel ",
                          style: theme.textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: widget.feeling.label.toLowerCase(),
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: widget.feeling.color,
                          ),
                        ),
                        TextSpan(
                          text: "?",
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  Gap(Dimensions.padding24),
                  Text("Theme", style: theme.textTheme.titleMedium),
                  Gap(Dimensions.padding8),
                  GenericSelector<String, SelectableWidget>(
                    //isMultiSelectMode: true,
                    layout: SelectorLayout.wrap,
                    onItemSelected: (selectedItem) {},
                    items: themes,
                    selectableWidgetBuilder: (
                      item,
                      isItemSelected,
                      onSelected,
                    ) {
                      return SelectableLargeChip(
                        label: item,
                        onPressed: onSelected,
                        isItemSelected: isItemSelected,
                        color: widget.feeling.color,
                        isOtherSelected: item == "Other",
                      );
                    },
                  ),

                  Gap(Dimensions.padding24),

                  Text(
                    "Who were you with?",
                    style: theme.textTheme.titleMedium,
                  ),
                  Gap(Dimensions.padding8),
                  GenericSelector<String, SelectableWidget>(
                   // isMultiSelectMode: true,
                    layout: SelectorLayout.wrap,
                    onItemSelected: (selectedItem) {},
                    items: people,
                    selectableWidgetBuilder: (
                      item,
                      isItemSelected,
                      onSelected,
                    ) {
                      return SelectableLargeChip(
                        label: item,
                        onPressed: onSelected,
                        isItemSelected: isItemSelected,
                        color: widget.feeling.color,
                        isOtherSelected: item == "Other",
                      );
                    },
                  ),

                  Gap(Dimensions.padding24),
                  Text("Places", style: theme.textTheme.titleMedium),
                  Gap(Dimensions.padding8),
                  GenericSelector<String, SelectableWidget>(
                    //isMultiSelectMode: true,
                    layout: SelectorLayout.wrap,
                    onItemSelected: (selectedItem) {},
                    items: people,
                    selectableWidgetBuilder: (
                      item,
                      isItemSelected,
                      onSelected,
                    ) {

                      return SelectableLargeChip(
                        label: item,
                        onPressed: onSelected,
                        isItemSelected: isItemSelected,
                        color: widget.feeling.color,
                        isOtherSelected: item == "Other",
                      );
                    },
                  ),
                  Gap(Dimensions.padding24),
                  AppButton(onPressed: () {}, label: "Continue"),
                  Gap(Dimensions.padding64),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
