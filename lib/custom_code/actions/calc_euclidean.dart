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

String? calcEuclidean(int a, int b) {
  // Reject the undefined case gcd(0, 0)
  if (a == 0 && b == 0) return null;

  // Treat negatives as their absolute values
  int x = a.abs();
  int y = b.abs();

  // Special case: one input is 0 → gcd is the other number
  if (x == 0 || y == 0) {
    final int gcd = x + y; // the non-zero value
    return 'By definition, GCD($x, $y) = $gcd';
  }

  // **Ensure we always start with the larger number in x**
  if (x < y) {
    final int temp = x;
    x = y;
    y = temp;
  }

  // Capture the original ordered inputs for the final log
  final int highOriginal = x;
  final int lowOriginal = y;

  final List<String> log = [];

  // Standard Euclidean loop with step logging
  while (y != 0) {
    final int q = x ~/ y; // quotient
    final int r = x % y; // remainder
    log.add('$x = $y × $q + $r');
    x = y;
    y = r;
  }

  log.add('GCD($highOriginal, $lowOriginal) = $x');
  return log.join('\n');

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
