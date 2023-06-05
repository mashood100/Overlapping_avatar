import 'dart:math';
import 'dart:ui';

class Helper {
  static List<Color> generateRandomColors(int length) {
    List<Color> colors = [];
    final random = Random();
    colors = List<Color>.generate(length, (index) {
      return Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
    return colors;
  }

  static String getAvatarName(String fullName) {
    List<String> names = fullName.split(" ");
    String firstInitial = names.isNotEmpty ? names[0][0] : '';
    String lastInitial = names.length > 1 ? names[names.length - 1][0] : '';

    return '${firstInitial.toUpperCase()}${lastInitial.toUpperCase()}';
  }
}
