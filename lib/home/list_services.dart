import 'package:flutter/material.dart';

class ListViewServices extends StatelessWidget {
  ListViewServices({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _services = [
    {
      'image': 'https://i.ytimg.com/vi/K13S9X8p0QY/maxresdefault.jpg',
      "services": ' Lavado',
      "Description": "lavado sencillo",
    },
    {
      'image':
          'https://st1.uvnimg.com/0d/18/9ca11a744a8395d9f5df18ec0c97/shutterstock-440455858.jpg',
      "services": ' Pulido',
      "Description": "lavado sencillo",
    },
    {
      'image':
          'https://tapiceriacarrosmedellin.com/wp-content/uploads/2020/08/seat-cushion-1099624_640.jpg',
      "services": ' Tapizado',
      "Description": "lavado sencillo",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _services.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: Image.network(_services[index]["image"]!).image,
            ),
            title: Text(_services[index]["services"]!),
            onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text('Servicio ${_services[index]["services"]}'),
                      content: const Text("Servicio seleccionado"),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                            child: const Text('Cancelar')),
                        TextButton(
                            onPressed: () => Navigator.pop(context, 'Reservar'),
                            child: const Text('Recervar')),
                      ],
                    )),
          );
        });
  }
}
