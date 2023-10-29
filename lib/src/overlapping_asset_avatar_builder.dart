import 'package:flutter/material.dart';
import 'package:overlapping_avatar/src/formatter.dart';


class OverLappingAssetsAvatarBuilder extends StatelessWidget {
  const OverLappingAssetsAvatarBuilder({
    super.key,

    /// The key used to identify this widget
    required this.listOfAssetsImages,

    /// List of asset image paths for avatars
    required this.limitAvatars,

    /// Maximum number of avatars to be displayed
    this.padding,

    /// Padding around the avatar builder
    this.alignment = Alignment.topLeft,

    /// Alignment of the avatar builder within its container
    this.isTotalMemberVisible = true,

    /// Visibility of the total members hint
    this.totalMembersHintTextColor,

    /// Text color for the total members hint
    this.totalMembersHintTextSize,

    /// Text size for the total members hint
    this.circularAvatarColor,

    /// Background color for the circular avatars
    this.circularAvatarSize,

    /// Size of the circular avatars
    this.distanceInEachAvatar = 40,

    /// Distance between each avatar
  });

  final List<String> listOfAssetsImages;
  final EdgeInsetsGeometry? padding;
  final int limitAvatars;
  final AlignmentGeometry alignment;
  final Color? circularAvatarColor;
  final Color? totalMembersHintTextColor;
  final double? totalMembersHintTextSize;
  final bool isTotalMemberVisible;
  final double? circularAvatarSize;
  final double distanceInEachAvatar;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
      listOfAssetsImages.length <= limitAvatars
          ? listOfAssetsImages.length
          : limitAvatars,
      (index) {
        return Padding(
          padding: EdgeInsets.only(
            left: index * distanceInEachAvatar,
          ),
          child: CircleAvatar(
            backgroundColor: circularAvatarColor ?? Colors.blue,
            backgroundImage: AssetImage(listOfAssetsImages[index]),
            radius: circularAvatarSize ?? 30,
          ),
        );
      },
    );

    /// Main widget tree
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Align(
        alignment: alignment,
        child: Stack(
          children: items +
              <Widget>[
                Visibility(
                  visible: isTotalMemberVisible &&
                      listOfAssetsImages.length - limitAvatars != 0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: limitAvatars * distanceInEachAvatar,
                    ),
                    child: CircleAvatar(
                      backgroundColor: circularAvatarColor ?? Colors.blue,
                      radius: circularAvatarSize ?? 30,
                      child: Text(
                        "+${numberToString(listOfAssetsImages.length - limitAvatars)} ",
                        style: TextStyle(
                          color: totalMembersHintTextColor,
                          fontSize: totalMembersHintTextSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
