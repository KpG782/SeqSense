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

String? calcCollatz(String? userInput) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (userInput == null || userInput.isEmpty) return null;

  final int? parsed = int.tryParse(userInput);
  // reject non-integers, non-positive, or even numbers
  if (parsed == null || parsed <= 0 || parsed.isEven) return null;

  int n = parsed;
  final List<int> sequence = [];

  while (true) {
    sequence.add(n);
    if (n == 1) break; // finished
    n = n.isOdd ? 3 * n + 1 : n ~/ 2;
  }

  return sequence.join(', ');

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
