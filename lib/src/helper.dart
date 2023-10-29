import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class Helper {
  // Generates a list of random colors with the specified length
  static List<Color> generateRandomColors(int length) {
    List<Color> colors = [];
    final random = Random();

    // Generate random colors using the RGB values and alpha set to 1
    colors = List<Color>.generate(length, (index) {
      return Color.fromRGBO(
        random.nextInt(256), // Red value ranging from 0 to 255
        random.nextInt(256), // Green value ranging from 0 to 255
        random.nextInt(256), // Blue value ranging from 0 to 255
        1, // Alpha value set to 1 (fully opaque)
      );
    });

    return colors;
  }

  // Extracts the initials from a full name to create an avatar name
  static String getAvatarName(String fullName) {
    List<String> names = fullName.split(" ");

    // Extract the first initial (if available)
    String firstInitial = names.isNotEmpty ? names[0][0] : '';

    // Extract the last initial (if available)
    String lastInitial = names.length > 1 ? names[names.length - 1][0] : '';

    // Concatenate and capitalize the initials
    return '${firstInitial.toUpperCase()}${lastInitial.toUpperCase()}';
  }
}
