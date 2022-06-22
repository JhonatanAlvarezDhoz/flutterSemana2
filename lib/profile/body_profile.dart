import 'package:flutter/material.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(37, 37, 38, 0.8),
      padding: const EdgeInsets.all(7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              Text(
                'Información',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const ItemInfo(
            texto: 'Hola',
            icon: Icons.ac_unit_sharp,
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                'Londres',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Icon(
                Icons.heart_broken_sharp,
                color: Colors.white,
              ),
              Text(
                'Soltero',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
