

import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

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


