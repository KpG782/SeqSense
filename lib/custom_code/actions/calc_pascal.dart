// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String? calcPascal(String? userInput) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (userInput == null || userInput.isEmpty) {
    return null;
  }

  int? n = int.tryParse(userInput);
  if (n == null || n < 0) {
    return null; // Return null for invalid input
  }

  int binomialCoeff(int n, int k) {
    int res = 1;
    if (k > n - k) k = n - k;
    for (int i = 0; i < k; ++i) {
      res *= (n - i);
      res ~/= (i + 1); // Integer division
    }
    return res;
  }

  String result = '';
  for (int row = 0; row <= n; row++) {
    for (int i = 0; i <= row; i++) {
      result += '${binomialCoeff(row, i)} ';
    }
    result += '\n';
  }

  return result.trim();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
