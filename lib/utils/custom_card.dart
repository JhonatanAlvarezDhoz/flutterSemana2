import 'package:flutter/material.dart';
import 'package:flutterapp/views/list_view_database.dart';

class CustomCard extends StatelessWidget {
  final List list;
  final int index;
  const CustomCard({required this.list, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lista = list[index];
    return Center(
      child: Card(
        //elevation: 2,

        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(15),
        elevation: 10,

        child: SizedBox(
          width: 360,
          height: 100,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(lista.image!),
            ),
            title: Text('${lista.name!} ${lista.apellido!}'),
            onTap: () {
              openAlertDialog(context, lista);
            },
          ),
        ),
      ),
    );
  }
}
