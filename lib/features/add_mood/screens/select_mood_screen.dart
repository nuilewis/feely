import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:feely/components/app_button.dart';
import 'package:feely/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

import '../../../core/utils/feelings.dart';
import 'add_note_screen.dart';

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

class AnimatedGradient extends StatefulWidget {
  final List<Color> colors;
  const AnimatedGradient({super.key, required this.colors});

  @override
  State<AnimatedGradient> createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient> {
  @override
  Widget build(BuildContext context) {
    if (widget.colors.length != 4) {
      throw ErrorHint("AnimatedGradient must have 4 colors");
    }

    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * .3,
          child: AnimatedMeshGradient(
            colors: [
              widget.colors[0],
              widget.colors[1],
              widget.colors[2],
              widget.colors[3],
            ],
            options: AnimatedMeshGradientOptions(
              // frequency: 5,
              //  amplitude: 20,
              //  speed: 5,
              grain: .3,
            ),
          ),
        ),

        Container(
          width: size.width,
          height: size.height * .3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                theme.scaffoldBackgroundColor,
                theme.scaffoldBackgroundColor.withValues(alpha: 0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
    return InkWell(
      onTap: onPressed,
      splashColor: theme.colorScheme.primary.withValues(alpha: 0),
      splashFactory: InkSparkle.splashFactory,
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
