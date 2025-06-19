import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

bool? checkNumber(int integerr) {
  // make a code that checks the user integer input if it is grater than 2 and output should be bollean
  return integerr > 2;
}

bool? checkNumber1(int integerr) {
  // make a code that checks the user integer input if it is grater than 2 and output should be bollean
  return integerr > 3;
}

bool? checkNumber1Copy(int integerr) {
  // make a code that checks the user integer input if it is grater than 2 and output should be bollean
  return integerr > 0;
}

bool? checkNumber1Collatz(int integerr) {
  // returns true only if the input is a positive odd integer
  return integerr > 0 && integerr.isOdd;
}

bool? checkNumberEqualzero(int integerr) {
  // make a code that checks the user integer input if it is grater than 2 and output should be bollean
  return integerr >= 0;
}

bool? checkNumber2Positive(
  int? integer,
  int? integer2,
) {
  // Reject if either value is null
  if (integer == null || integer2 == null) return false;

  // Accept if BOTH numbers are > 0
  if (integer > 0 && integer2 > 0) return true;

  // Special case: exactly one is 1 and the other is 0
  if ((integer == 1 && integer2 == 0) || (integer == 0 && integer2 == 1))
    return true;

  // All other cases (e.g., both zero, negatives, etc.) → false
  return false;
}
