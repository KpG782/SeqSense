// collatz_model.dart
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CollatzModel {
  final FocusNode f3FocusNode;
  final TextEditingController f3TextController;
  final MaskTextInputFormatter f3Mask;
  String answer;

  CollatzModel()
      : f3FocusNode = FocusNode(),
        f3TextController = TextEditingController(),
        f3Mask = MaskTextInputFormatter(mask: '##########'),
        answer = 'the results will be shown here...';

  void dispose() {
    f3FocusNode.dispose();
    f3TextController.dispose();
  }
}
