import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double size;
  const VerticalSpace({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
