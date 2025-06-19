import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'pascal_triangle_widget.dart' show PascalTriangleWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PascalTriangleModel extends FlutterFlowModel<PascalTriangleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for f1 widget.
  FocusNode? f1FocusNode;
  TextEditingController? f1TextController;
  late MaskTextInputFormatter f1Mask;
  String? Function(BuildContext, String?)? f1TextControllerValidator;
  // Stores action output result for [Custom Action - calcPascal] action in Button widget.
  String? answer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    f1FocusNode?.dispose();
    f1TextController?.dispose();
  }
}
