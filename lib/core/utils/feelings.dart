import 'package:flutter/cupertino.dart';

enum Feelings {
  happy(
    label: 'Happy',
    gradient: AppGradients.happy,
    shape: "assets/svg/shapes/happy.svg",
    color: Color(0xFFF56C5D)
  ),
  excited(
    label: 'Excited',
    gradient: AppGradients.excited,
    shape: "assets/svg/shapes/excited.svg",
    color: Color(0xFFFF9825)
  ),
  content(
    label: 'Content',
    gradient: AppGradients.content,
    shape: "assets/svg/shapes/content.svg",
    color: Color(0xFFEC7467)
  ),
  calm(
    label: 'Calm',
    gradient: AppGradients.calm,
    shape: "assets/svg/shapes/calm.svg",
    color: Color(0xFF07BA57)
  ),
  okay(
    label: 'Okay',
    gradient: AppGradients.okay,
    shape: "assets/svg/shapes/okay.svg",
    color: Color(0xFFE1D7FF)
  ),
  tired(
    label: 'Tired',
    gradient: AppGradients.tired,
    shape: "assets/svg/shapes/tired.svg",
    color: Color(0xFF2E8CFF)
  ),
  anxious(
    label: 'Anxious',
    gradient: AppGradients.anxious,
    shape: "assets/svg/shapes/anxious.svg",
    color: Color(0xFF580986)
  ),
  frustrated(
    label: 'Frustrated',
    gradient: AppGradients.frustrated,
    shape: "assets/svg/shapes/frustrated.svg",
    color: Color(0xFF7924E3),
  ),
  angry(
    label: 'Angry',
    gradient: AppGradients.angry,
    shape: "assets/svg/shapes/angry.svg",
    color: Color(0xFFFE3574),
  );

  final String label;
  final LinearGradient gradient;
  final Color color;
  final String shape;

  const Feelings({
    required this.label,
    required this.gradient,
    required this.shape,
    required this.color,
  });
}

class AppGradients {
  static const LinearGradient happy = LinearGradient(
    colors: [Color(0xFFF56C5D), Color(0xFFFFC482)],
  );
  static const LinearGradient excited = LinearGradient(
    colors: [Color(0xFFFFC482), Color(0xFFFF9825)],
  );
  static const LinearGradient content = LinearGradient(
    colors: [Color(0xFFEC7467), Color(0xFFE1D7FF)],
  );
  static const LinearGradient calm = LinearGradient(
    colors: [Color(0xFF95C5FF), Color(0xFF07BA57)],
  );
  static const LinearGradient okay = LinearGradient(
    colors: [Color(0xFFE1D7FF), Color(0xFF2E8CFF)],
  );
  static const LinearGradient tired = LinearGradient(
    colors: [Color(0xFF2E8CFF), Color(0xFF943CF2)],
  );
  static const LinearGradient anxious = LinearGradient(
    colors: [Color(0xFF7590FF), Color(0xFF580986)],
  );
  static const LinearGradient frustrated = LinearGradient(
    colors: [Color(0xFF7924E3), Color(0xFFBC038B)],
  );
  static const LinearGradient angry = LinearGradient(
    colors: [Color(0xFFFE3574), Color(0xFF470316)],
  );
}
