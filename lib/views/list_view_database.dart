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
      title: Text('${registros.name!} ${registros.apellido!}'),
      content: SizedBox(
        height: 280,
        child: Column(
          //fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage(registros.image!),
              fit: BoxFit.cover,
            ),
            Text('${registros.carro}\n\n${registros.servicio}'),
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
        return CustomCard(list: registros, index: index);
      },
    );
  }

  void callDatabase() async {
    final respuestas = await firebaseConnection.getRegister();
    if (registros.isEmpty) {
      setState(() {
        registros = respuestas.registros!;
      });
    }
  }
}

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
          width: 370,
          height: 120,
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
