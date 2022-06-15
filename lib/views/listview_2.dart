import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  ListView2({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _games = [
    {
      "image":
          "https://www.gamerfocus.co/wp-content/uploads/2020/10/GTA-Vice-city.jpg",
      "name": "Vice City"
    },
    {
      "image":
          "https://consolaytablero.com/wp-content/uploads/2021/07/Donkey-Kong-40-aniversario.jpg",
      "name": "DonKey Kong"
    },
    {
      "image":
          "https://media.vandal.net/m/21298/killer-instinct-2013111414346_1.jpg",
      "name": "Killer Instic"
    },
    {
      "image":
          "https://generacionxbox.com/wp-content/uploads/2021/10/halo-2-wallpaper.jpg",
      "name": "Halo"
    },
    {
      "image":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg",
      "name": "Tales of Demons and gods"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/inmortalkombat/images/f/fa/MortalKombat2.png/revision/latest?cb=20131011012949&path-prefix=es",
      "name": "Mortal combat II"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKpsKiXVnIfp3w4l7KmkwD8s5LTfHYfSoFp8F4_3AFDMsQ5x2wkH0Ar8Tkx7rPAIMraEM&usqp=CAU",
      "name": "Rock Man X"
    },
    {
      "image": "https://i.ytimg.com/vi/MbXxeKwH6JU/hqdefault.jpg",
      "name": "The Mask"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/gearsofwar/images/8/87/Gears_of_War_2_Portada.png/revision/latest?cb=20160706021554&path-prefix=es",
      "name": "Gear of War"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Video Game List'),
        ),
        body: ListView.builder(
            itemCount: _games.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: Image.network(_games[index]["image"]!).image,
                ),
                title: Text(_games[index]["name"]!),
                onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title:
                              Text('Haz tapeado en ${_games[index]["name"]}'),
                          content: const Text("Juego seleccionado"),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cerrar'),
                                child: const Text('Cerrar')),
                            TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK')),
                          ],
                        )),
              );
            })

        //ListView(
        //children: const [
        //ListTile(
        //leading: Icon(Icons.ac_unit_sharp),
        // ),
        // ],
        // ),
        );
  }
}
