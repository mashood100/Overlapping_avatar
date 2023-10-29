import 'package:flutter/material.dart';
import 'package:overlapping_avatar/overlapping_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> assetImages = [
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80',
      'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80',
      'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80',
    ];
    List<String> name = [
      "John Clark",
      "Mark Medok",
      "Berry allen",
      "Diana Smith",
      "Alexa Dean"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Overlapping Avatars'),
        ),
        body: Column(
          children: [
            OverLappingNetworkAvatarBuilder(
              isTotalMemberVisible: true,
              listOfNetworkImages: assetImages,
              limitAvatars: 3,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              circularAvatarColor: Colors.red,
              circularAvatarSize: 50,
              distanceInEachAvatar: 60,
              totalMembersHintTextColor: Colors.white,
              totalMembersHintTextSize: 18,
            ),
            OverLappingTextAvatarBuilder(
              listOFAvatarName: name,
              isTotalMemberVisible: true,
              limitAvatars: 3,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              circularAvatarColor: Colors.red,
              circularAvatarSize: 50,
              distanceInEachAvatar: 60,
              totalMembersHintTextColor: Colors.white,
              totalMembersHintTextSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
