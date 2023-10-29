import 'package:flutter/material.dart';
import 'package:overlapping_avatar/src/formatter.dart';
import 'package:overlapping_avatar/src/helper.dart';

class OverLappingTextAvatarBuilder extends StatelessWidget {
  const OverLappingTextAvatarBuilder({
    super.key,
    required this.listOFAvatarName,
    required this.limitAvatars,
    this.padding,
    this.alignment = Alignment.topLeft,
    this.isTotalMemberVisible = true,
    this.totalMembersHintTextColor,
    this.totalMembersHintTextSize,
    this.circularAvatarColor,
    this.circularAvatarSize,
    this.distanceInEachAvatar = 40,
  });

  /// The list of name  to display first letters as avatars.
  final List<String> listOFAvatarName;

  /// The maximum number of avatars to display.
  final int limitAvatars;

  /// The padding around the avatars.
  final EdgeInsetsGeometry? padding;

  /// The alignment of the avatars within the parent container.
  final AlignmentGeometry alignment;

  /// The background color of the circular avatars.
  final Color? circularAvatarColor;

  /// The text color for the total members hint.
  final Color? totalMembersHintTextColor;

  /// The font size for the total members hint.
  final double? totalMembersHintTextSize;

  /// Determines if the total members hint should be visible.
  final bool isTotalMemberVisible;

  /// The size of the circular avatars.
  final double? circularAvatarSize;

  /// The distance between each avatar.
  final double distanceInEachAvatar;
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
        listOFAvatarName.length <= limitAvatars
            ? listOFAvatarName.length
            : limitAvatars, (index) {
      return Padding(
        padding: EdgeInsets.only(
          left: index * distanceInEachAvatar,
        ),
        child: CircleAvatar(
          backgroundColor: circularAvatarColor ??
              Helper.generateRandomColors(listOFAvatarName.length)[index],
          radius: circularAvatarSize ?? 30,
          child: Text(
            Helper.getAvatarName(listOFAvatarName[index]),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    });
    //**Main */
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Align(
        alignment: alignment,
        child: Stack(
            children: items +
                <Widget>[
                  Visibility(
                    visible: isTotalMemberVisible &&
                        listOFAvatarName.length - limitAvatars != 0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: limitAvatars * distanceInEachAvatar,
                      ),
                      child: CircleAvatar(
                        backgroundColor: circularAvatarColor ?? Colors.blue,
                        radius: circularAvatarSize ?? 30,
                        child: Text(
                          "+${numberToString(listOFAvatarName.length - limitAvatars)} ",
                          style: TextStyle(
                              color: totalMembersHintTextColor,
                              fontSize: totalMembersHintTextSize),
                        ),
                      ),
                    ),
                  )
                ]),
      ),
    );
  }
}
