// tribonacci_model.dart
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TribonacciModel {
  final FocusNode indexFocusNode;
  final TextEditingController indexController;
  final MaskTextInputFormatter indexMask;
  String answer;

  TribonacciModel()
      : indexFocusNode = FocusNode(),
        indexController = TextEditingController(),
        indexMask = MaskTextInputFormatter(mask: '###'),
        answer = 'the results will be shown here...';

  void dispose() {
    indexFocusNode.dispose();
    indexController.dispose();
  }
}
