import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/app/app_colors.dart';

enum LetterStatus { initial, notInWord, inWord, correct }

class Letter extends Equatable {
  const Letter({
    required this.val,
    this.status = LetterStatus.initial,
  });

  factory Letter.empty() => const Letter(val: '');

  final String val;

  final LetterStatus status;

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.transparent;
      case LetterStatus.notInWord:
        return notInWordColor;
      case LetterStatus.inWord:
        return inWordColor;
      case LetterStatus.correct:
        return correctColor;
    }
  }
}
