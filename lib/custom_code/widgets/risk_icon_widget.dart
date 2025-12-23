// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

class RiskIconWidget extends StatelessWidget {
  final String riskLevel;
  final double? size;

  const RiskIconWidget({
    Key? key,
    required this.riskLevel,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color color;

    switch (riskLevel) {
      case 'Bajo':
        icon = Icons.check_circle;
        color = const Color(0xFF4CAF50);
        break;
      case 'Medio':
        icon = Icons.warning_amber_rounded;
        color = const Color(0xFFFF9800);
        break;
      case 'Alto':
        icon = Icons.error;
        color = const Color(0xFFF44336);
        break;
      default:
        icon = Icons.help_outline;
        color = Colors.grey;
    }

    return Icon(icon, color: color, size: size ?? 24);
  }
}
