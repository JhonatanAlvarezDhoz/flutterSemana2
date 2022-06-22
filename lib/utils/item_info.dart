import 'package:flutter/material.dart';
import 'package:flutterapp/utils/horizontale_space.dart';

class ItemInfo extends StatelessWidget {
  final String texto;
  final IconData icon;
  const ItemInfo({
    required this.texto,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const HorizontaleSpace(size: 10),
        Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
