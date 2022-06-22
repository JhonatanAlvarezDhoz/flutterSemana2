import 'package:flutter/material.dart';
import 'package:flutterapp/views/list_view.dart';

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
          Row(
            children: const <Widget>[
              Icon(
                Icons.home,
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
