import 'package:flutter/material.dart';
import 'package:flutterapp/domain/firebase_conecction.dart';
import 'package:flutterapp/entities/registros.dart';

class CallFirebase extends StatefulWidget {
  const CallFirebase({Key? key}) : super(key: key);

  @override
  State<CallFirebase> createState() => _CallFirebaseState();
}

void openAlertDialog(BuildContext context, Registro registros) {
  AlertDialog alert = AlertDialog(
      title: Text(registros.name! + ' ' + registros.apellido!),
      content: Container(
        height: 280,
        child: Column(
          //fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage(registros.image!),
              fit: BoxFit.cover,
            ),
            Text(registros.carro.toString() +
                '\n\n' +
                registros.servicio.toString()),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        )
      ]);
  showDialog(context: context, builder: (BuildContext context) => alert);
}

class _CallFirebaseState extends State<CallFirebase> {
  final firebaseConnection = FirebaseConnection();
  List<Registro> registros = [];
  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Wash"),
        centerTitle: true,
      ),
      body: Center(
        child: _createList(),
      ),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: registros.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(registros[index].image!),
          ),
          title:
              Text(registros[index].name! + ' ' + registros[index].apellido!),
          onTap: () {
            openAlertDialog(context, registros[index]);
          },
        );
      },
    );
  }

  void callDatabase() async {
    final respuestas = await firebaseConnection.getRegister();
    if (registros.length == 0) {
      setState(() {
        registros = respuestas.registros!;
      });
    }
  }
}
