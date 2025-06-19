import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'tribonacci_widget.dart' show TribonacciWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TribonacciModel extends FlutterFlowModel<TribonacciWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for f3 widget.
  FocusNode? f3FocusNode;
  TextEditingController? f3TextController;
  late MaskTextInputFormatter f3Mask;
  String? Function(BuildContext, String?)? f3TextControllerValidator;
  // Stores action output result for [Custom Action - calcTribo] action in Button widget.
  String? answer2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    f3FocusNode?.dispose();
    f3TextController?.dispose();
  }
}
