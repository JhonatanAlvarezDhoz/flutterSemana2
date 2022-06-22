import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  final String assetImageHeader;
  const HeaderHome({
    required this.assetImageHeader,
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
    );
  }
}
