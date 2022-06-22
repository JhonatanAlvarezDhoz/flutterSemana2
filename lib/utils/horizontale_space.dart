import 'package:flutter/material.dart';

class HorizontaleSpace extends StatelessWidget {
  final double size;
  const HorizontaleSpace({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
