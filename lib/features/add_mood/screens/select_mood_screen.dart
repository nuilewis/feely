import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:feely/components/app_button.dart';
import 'package:feely/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/feelings.dart';
import 'add_note_screen.dart';
import 'components/animated_gradient.dart';
import 'components/feelint_item.dart';

class SelectMoodScreen extends StatefulWidget {
  const SelectMoodScreen({super.key});

  @override
  State<SelectMoodScreen> createState() => _SelectMoodScreenState();
}

class _SelectMoodScreenState extends State<SelectMoodScreen> {
  final PageController pageController = PageController(viewportFraction: 0.6);

  LinearGradient selectedGradient = Feelings.values.first.gradient;

  Feelings selectedFeeling = Feelings.values.first;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          Gap(size.height * 0.2),
          Text(
            'How do you\nfeel today?',
            style: theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),

          Gap(Dimensions.padding32),
          ExpandablePageView.builder(
            itemCount: Feelings.values.length,
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedGradient = Feelings.values[index].gradient;
                selectedFeeling = Feelings.values[index];
              });
            },
            itemBuilder: (context, index) {
              return FeelingItem(
                feeling: Feelings.values[index],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => AddNoteScreen(
                            feeling: Feelings.values[index],
                          ),
                    ),
                  );
                },
              );
            },
          ),

          Gap(Dimensions.padding24),
          FittedBox(child: AppButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => AddNoteScreen(
                  feeling: selectedFeeling,
                ),
              ),
            );
          }, label: "Continue")),
          Spacer(),
          AnimatedGradient(
            colors: [
              selectedGradient.colors.first,
              selectedGradient.colors.last,
              selectedGradient.colors.first.withValues(alpha: .1),
              selectedGradient.colors.last.withValues(alpha: .1),
            ],
          ),
        ],
      ),
    );
  }
}

