import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  final String asstedImage;
  final double size;
  const UserPhoto({
    Key? key,
    required this.asstedImage,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asstedImage),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      margin: const EdgeInsets.only(bottom: 5),
    );
  }
}
