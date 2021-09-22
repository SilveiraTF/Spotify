import 'package:flutter/material.dart';
import 'package:spotify/nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Gotham'), home: principal());
  }

  Widget principal() {
    return Stack(
      children: [inicio()],
    );
  }

  Widget inicio() {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {}),
                Text(
                  "Início",
                  style: TextStyle(color: Colors.white),
                )
              ]),
              Column(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {}),
                Text(
                  "Buscar",
                  style: TextStyle(color: Colors.white),
                )
              ]),
              Column(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                    icon: Icon(Icons.library_music),
                    color: Colors.white,
                    onPressed: () {}),
                Text(
                  "Sua Biblioteca",
                  style: TextStyle(color: Colors.white),
                )
              ]),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.1, 0.1),
                        colors: [Color.fromRGBO(80, 80, 80, 1), Colors.black])),
                child: DefaultTextStyle(
                    child: painelInicio(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gotham")))));
  }

  Widget painelInicio() {
    return Expanded(
        child: Column(
      children: [titulo(), ultimosAlbuns(), lancamento(), perfil()],
    ));
  }

  Widget lancamento() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                backgroundImage: AssetImage("albuns/albumemicida.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("qkwnd"),
                ),
                Text("sjdc")
              ],
            )
          ],
        ),
        Row(children: [
          albumLancamento("albuns/albumemicida.png",
              "Teste emicida Pantera Negra ", "qdiuhbsic")
        ]),
      ]),
    );
  }

  Widget albumLancamento(foto, album, style) {
    return Expanded(
        flex: 6,
        child: Container(
          child: Row(children: [
            ClipRRect(
                child: Image(image: AssetImage(foto), width: 100),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            Flexible(
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(album),
                          Text(style),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  color: Colors.white,
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.play_circle),
                                  color: Colors.white,
                                  onPressed: () {}),
                            ],
                          )
                        ]),
                    margin: EdgeInsets.all(5)))
          ]),
          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(70, 70, 70, 1),
              borderRadius: BorderRadius.circular(4)),
        ));
  }

  Widget perfil() {
    return Column(children: [
      Row(children: [
        fotoPerfil("albuns/perfil.png",
            "Thiago Silveira \n\n Idade: 21 anos \n\n Engenharia de Software \n\n UNI-FACEF ")
      ]),
    ]);
  }

  Widget fotoPerfil(foto, album) {
    return Expanded(
        flex: 6,
        child: Container(
          child: Row(children: [
            Flexible(
                child: Container(
                    child: Text(
                      album,
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    margin: EdgeInsets.all(5))),
            ClipRRect(
                child: Image(image: AssetImage(foto), width: 100),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
          ]),
          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(70, 70, 70, 1),
              borderRadius: BorderRadius.circular(4)),
        ));
  }

  Widget titulo() {
    return Row(children: [
      Expanded(
          flex: 9, child: Text("Boa noite", style: TextStyle(fontSize: 20))),
      Expanded(
        flex: 2,
        child: Icon(
          Icons.notifications_outlined,
          color: Colors.white,
        ),
      ),
      Expanded(
        flex: 2,
        child: Icon(Icons.alarm, color: Colors.white),
      ),
      Expanded(
          flex: 2, child: Icon(Icons.settings_outlined, color: Colors.white))
    ]);
  }

  Widget miniAlbum(foto, album) {
    return Expanded(
        flex: 6,
        child: Container(
          child: Row(children: [
            ClipRRect(
                child: Image(image: AssetImage(foto), width: 50),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4))),
            Flexible(
                child: Container(child: Text(album), margin: EdgeInsets.all(5)))
          ]),
          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(70, 70, 70, 1),
              borderRadius: BorderRadius.circular(4)),
        ));
  }

  Widget ultimosAlbuns() {
    return Column(children: [
      Row(children: [
        miniAlbum("albuns/albumed.png", "Ed Sheeran"),
        miniAlbum("albuns/albumpink.png", "Pink Floyd")
      ]),
      Row(children: [
        miniAlbum("albuns/albumemicida.png", "Emicida"),
        miniAlbum("albuns/albumpink.png", "Pink Floyd")
      ])
    ]);
  }
}
