import 'package:flutter/material.dart';
import 'package:flutterapp/views/user_photo.dart';

class HeaderProfile extends StatelessWidget {
  final String assetImageHeader;
  final String assetImageProfile;
  final String userName;
  const HeaderProfile({
    required this.assetImageHeader,
    required this.assetImageProfile,
    required this.userName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String banner = assetImageHeader;
    return Container(
      height: 250,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UserPhoto(asstedImage: assetImageProfile),
          Text(
            '@$userName',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
