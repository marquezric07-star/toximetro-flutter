import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

Color? getDynamicColor(double? score) {
  if (score == null) return Color(0xFF9E9E9E); // Gris neutral

  if (score <= 30) {
    return Color(0xFF4CAF50); // Verde (bajo)
  } else if (score <= 70) {
    return Color(0xFFFFC107); // Amarillo (medio)
  } else {
    return Color(0xFFF44336); // Rojo (alto)
  }
}

Color? getRiskColor(String? riskLevel) {
  if (riskLevel == null) return Color(0xFF9E9E9E); // Gris neutral

  switch (riskLevel.toLowerCase()) {
    case 'bajo':
      return Color(0xFF4CAF50); // Verde
    case 'medio':
      return Color(0xFFFFC107); // Amarillo
    case 'alto':
      return Color(0xFFF44336); // Rojo
    default:
      return Color(0xFF9E9E9E); // Gris
  }
}
