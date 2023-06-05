import 'package:flutter/material.dart';
import 'package:overlapping_avatar/src/formatter.dart';

class OverLappingAssetsAvatarBuilder extends StatelessWidget {
  const OverLappingAssetsAvatarBuilder({
    super.key,
    required this.listOfAssetsImages,
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
            : limitAvatars, (index) {
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
