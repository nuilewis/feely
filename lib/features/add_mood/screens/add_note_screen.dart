import 'package:feely/components/app_bar.dart';
import 'package:feely/components/app_button.dart';
import 'package:feely/core/core.dart';
import 'package:feely/features/add_mood/screens/select_activities_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/feelings.dart';
import 'components/animated_gradient.dart';

class AddNoteScreen extends StatefulWidget {
  final Feelings feeling;
  const AddNoteScreen({super.key, required this.feeling});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool isTextFieldFocused = false;

  @override
  void initState() {
    _focusNode.addListener(() {
      isTextFieldFocused = _focusNode.hasFocus;
    });

    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;
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

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.padding16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(
                  pageTitle: "Add Feeling",
                  showBackButton: true,
                  showTitle: false,
                ),

                SvgPicture.asset(
                  widget.feeling.shape,
                  height: size.width * .5,
                  width: size.width * .5,
                ),

                // .animate()
                // .moveY(
                //   duration: 800.ms,
                //   begin: 0,
                //   end: -200,
                //   curve: Spring.defaultIOS.toCurve,
                // )
                // .blur(
                //   duration: 600.ms,
                //   begin: Offset(0, 0),
                //   end: Offset(15, 15),
                // )
                // .fadeOut(duration: 600.ms, delay: 200.ms),
                Gap(Dimensions.padding16),
                Spacer(),
                Text(
                  "Feeling ${widget.feeling.label}",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Gap(Dimensions.padding16),
                FittedBox(
                  child: AppButton(
                    onPressed: () {
                      //Todo: Implement adding other feelings
                    },
                    label: "Add another feeling",
                    buttonType: ButtonType.secondary,
                  ),
                ),
                Gap(Dimensions.padding16),
                Spacer(),

                Text(
                  "What's making you feel ${widget.feeling.label.toLowerCase()}?",
                  style: theme.textTheme.titleLarge,
                ),

                Gap(Dimensions.padding32),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: isDarkMode ? [
                      BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 1,
                        color: theme.colorScheme.onSurface.withValues(alpha: .05),
                      ),
                    ] : null
                  ),
                  child: TextFormField(
                    controller: textEditingController,
                    focusNode: _focusNode,
                    onTapOutside: (event){
                        _focusNode.unfocus();
                    },
                    maxLines: 5,
                    decoration: AppInputDecoration.inputDecoration(
                      context,
                    ).copyWith(hintText: "Write something"),
                  ),
                ),
                Gap(Dimensions.padding24),
                AppButton(
                  onPressed: () {
                    //TODO: Perform actions such as saving the note.

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                SelectActivitiesScreen(feeling: widget.feeling),
                      ),
                    );
                  },
                  label: "Continue",
                ),
                Gap(Dimensions.padding64),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
