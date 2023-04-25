import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> images = [
    'assets/img/un.jpg',
    'assets/img/deux.jpeg',
    'assets/img/trois.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'training',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    text: 'A LA UNE',
                  ),
                  Tab(
                    text: '#AFGHANISTAN',
                  ),
                  Tab(
                    text: '#EURO-2021',
                  ),
                  Tab(
                    text: '#TOUR',
                  ),
                ],
              ),
              shadowColor: Colors.white,
              title: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 35,
                    color: Colors.black,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                  ),
                  Center(
                      child: Image.asset(
                    'assets/img/logoo.png',
                    fit: BoxFit.contain,
                    height: 42,
                  )),
                ],
              ),
              backgroundColor: Colors.white,
            ),
            body: TabBarView(children: [
              ListView(
                padding: const EdgeInsets.all(0),
                children: <Widget>[
                  Stack(children: [
                    Container(
                      child: Image.asset(
                        images[0],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      padding: const EdgeInsets.only(left: 30),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45
                        ],
                      )),
                      child: const Text(
                          "Covid-19 : ces soignants qui refusent d'être vacccinés",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0)),
                    ),
                    Container(
                        width: 20,
                        height: 205,
                        padding: const EdgeInsets.only(top: 0),
                        alignment: Alignment.bottomLeft,
                        child: const Icon(
                          Icons.video_camera_back,
                          color: Colors.blue,
                        )),
                  ]),
                  const Text(
                      '⇒ Covid-19 en france: une 4ieme vague mois forte à la rentrée, selon le Pr Delfraissey',
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  const Padding(padding: EdgeInsets.only(bottom: 8)),
                  const Text(
                      '⇒ Covid-19 : les tests seront payants en France à partir du 7 juillet pour les touristes étrangers',
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                  Image.asset(
                    images[1],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                  Image.asset(
                    images[2],
                  ),
                ],
              ),
              const Icon(Icons.nature),
              const Icon(Icons.home),
              const Icon(Icons.add)
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Accueil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_add),
                  label: 'nous suivre',
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ),
        ));
  }
}
