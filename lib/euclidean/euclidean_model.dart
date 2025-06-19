// euclidean_model.dart
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EuclideanModel {
  final FocusNode f1FocusNode;
  final TextEditingController f1TextController;
  final MaskTextInputFormatter f1Mask;
  final FocusNode f2FocusNode;
  final TextEditingController f2TextController;
  final MaskTextInputFormatter f2Mask;
  String answer;

  EuclideanModel()
      : f1FocusNode = FocusNode(),
        f1TextController = TextEditingController(),
        f1Mask = MaskTextInputFormatter(mask: '##########'),
        f2FocusNode = FocusNode(),
        f2TextController = TextEditingController(),
        f2Mask = MaskTextInputFormatter(mask: '##########'),
        answer = 'the results will be shown here...';

  void dispose() {
    f1FocusNode.dispose();
    f1TextController.dispose();
    f2FocusNode.dispose();
    f2TextController.dispose();
  }
}
