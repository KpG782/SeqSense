// pascal_triangle_model.dart
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PascalTriangleModel {
  final FocusNode rowsFocusNode;
  final TextEditingController rowsController;
  final MaskTextInputFormatter rowsMask;
  String answer;

  PascalTriangleModel()
      : rowsFocusNode = FocusNode(),
        rowsController = TextEditingController(),
        rowsMask = MaskTextInputFormatter(mask: '##'),
        answer = 'the results will be shown here...';

  void dispose() {
    rowsFocusNode.dispose();
    rowsController.dispose();
  }
}
