import 'package:flutter/material.dart';
import 'package:flutterapp/utils/item_info.dart';
import 'package:flutterapp/utils/vertical_space.dart';

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
          const VerticalSpace(size: 15),
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
          const VerticalSpace(size: 15),
          const ItemInfo(texto: 'De:  Londres.', icon: Icons.home_filled),
          const VerticalSpace(size: 15),
          const ItemInfo(texto: 'Vive:  Londres.', icon: Icons.location_on),
          const VerticalSpace(size: 15),
          const ItemInfo(texto: 'Soltero', icon: Icons.heart_broken_sharp),
        ],
      ),
    );
  }
}
