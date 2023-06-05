# Overlapping_avatar
 
Overlapping Avatar

Overlapping Avatar is an open-source UI package for Flutter that provides a simple and elegant solution for displaying overlapping avatars. It allows you to create visually appealing effects for user profiles, contact lists, and more.

Features

Display multiple avatars in an overlapped manner. Customize the appearance of the avatars, including size, spacing, and border radius. Easily integrate into existing Flutter projects or use as a standalone widget. Installation

To start using the Overlapping Avatar package, add the following dependency to your pubspec.yaml:

dependencies:
  overlapping_avatar: ^1.0.0
Then, run flutter pub get to fetch the package.
Usage

Import the overlapping_avatar.dart file:

final List<String> avatarNames = [
    "John",
    "Emma",
    "Michael",
    "Sophia",
    "David",
    "Olivia",
    "James",
    "Ava"
  ];

OverLappingTextAvatarBuilder(
          listOFAvatarName: avatarNames,
          limitAvatars: 5,
          distanceInEachAvatar: 50,
          circularAvatarSize: 40,
        ),
In the above example, we create an OverlappingAvatar widget with a list of CircleAvatar widgets as the avatars property. Customize the size of the avatars using avatarRadius and control the overlap between avatars using the overlap property.

Feel free to adjust the code to match your specific requirements, such as using different avatar images, changing the size, or adjusting the overlap to achieve the desired visual effect.

Documentation

Certainly! Here's the property descriptions in the requested format:

Certainly! Here's the property descriptions in the requested format:

| Property                  | Type              | Required | Description                                                                                                                                                                                                                   |
|---------------------------|-------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `listOFAvatarName`        | `List<String>`    | Yes      | A list of strings representing the names or labels associated with each avatar. The avatars will be displayed in the order of this list.                                                                                   |
| `padding`                 | `EdgeInsetsGeometry?` | No       | The padding around the widget. It can be used to adjust the spacing between the widget and its parent or other elements.                                                                                                      |
| `limitAvatars`            | `int`             | Yes      | The maximum number of avatars to be displayed. If the number of avatars in `listOFAvatarName` exceeds this limit, the remaining avatars will be represented by a single avatar showing the count of the remaining avatars. |
| `alignment`               | `AlignmentGeometry` | No       | The alignment of the widget within its parent. It accepts an `AlignmentGeometry` value and determines how the widget should be positioned within its available space.                                                        |
| `circularAvatarColor`     | `Color?`          | No       | The color of the circular avatar containers. If not specified, random colors will be generated based on the number of avatars.                                                                                               |
| `totalMembersHintTextColor` | `Color?`          | No       | The color of the text indicating the count of remaining avatars. If not specified, it defaults to the `Colors.white` value.                                                                                                  |
| `totalMembersHintTextSize` | `double?`         | No       | The font size of the text indicating the count of remaining avatars. If not specified, it defaults to the standard font size.                                                                                                 |
| `isTotalMemberVisible`    | `bool`            | No       | A boolean value indicating whether the count of remaining avatars should be visible or not. If set to `true`, and if there are remaining avatars beyond the `limitAvatars`, the count will be displayed in a separate circular avatar container. |
| `circularAvatarSize`      | `double?`         | No       | The size (radius) of the circular avatar containers. If not specified, it defaults to 30.                                                                                                                                  |
| `distanceInEachAvatar`    | `double`          | No       | The horizontal distance between each avatar. It determines the overlapping effect by adjusting the position of each avatar based on its index in the `listOFAvatarName`.                                                    |

These property descriptions provide a clear overview of each property's name, type, whether it is required or not, and a brief description of its purpose and functionality.

Contributing

Contributions to the Overlapping Avatar package are welcome and appreciated! If you would like to contribute to the project, please follow the guidelines outlined in the CONTRIBUTING.md file. Overlapping Avatar

License

This package is released under the MIT License. See the LICENSE file for more information.