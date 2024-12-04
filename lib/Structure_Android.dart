// ignore_for_file: unused_import, prefer_final_fields
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter TP2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _coeur = const Icon(Icons.favorite_border, color: Colors.white,);
  Icon _account = const Icon(Icons.account_circle, color: Colors.yellow,);
  int _selectdIndex = 0;
  String _affichage = ' Accueil';
  String _images = 'https://friendsofanimals.org/wp-content/uploads/2023/12/foxfb.png';
  final _textPage = 'Vous êtes sur :';
  bool likeBool = false;

   void _itemClique(int index){
    setState(() {
      _selectdIndex = index;
      switch(_selectdIndex){
        case 0:
        {
          _affichage = ' Accueil';
          _images = 'https://friendsofanimals.org/wp-content/uploads/2023/12/foxfb.png';
        }
        case 1:
        {
          _affichage = ' Profile';
          _images = 'https://images.stockcake.com/public/e/1/9/e19eab4f-3030-4113-82aa-4e9fec401f56_large/fox-in-snow-stockcake.jpg';

        }
        case 2:
        {
          _affichage = ' Message';
          _images = 'https://as2.ftcdn.net/v2/jpg/00/76/47/97/1000_F_76479767_gv1iIKiZ0e9K1gw8YLGx5HBAQRHufrFB.jpg';

        }
        case 3:
        {
          _affichage = ' Paramètre';
          _images = 'https://miro.medium.com/v2/resize:fit:1400/1*jj818i6pGhnuWjwGOi8v8g.jpeg';
        }
        break;
      }
    });
   }

  void _likeThis(){
    setState(() {
      if (likeBool){
        _coeur = const Icon(Icons.favorite_border, color: Colors.white,);
      }
      else {
        _coeur = const Icon(Icons.favorite, color: Colors.red,);
      }
    });
  }

  @override
  // On bluid en utilisant 'Scaffold' ici la appbar 
  // qui contient un titre et 2 bouton 'like' et 'account'
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(onPressed: _likeThis, icon: _coeur),
            IconButton(onPressed: () {}, icon: _account)
        ],
        backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu de navigation =)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Accueil'),
                onTap: (){
                  setState(() {
                    _affichage = ' Accueil';
                    _images = 'https://friendsofanimals.org/wp-content/uploads/2023/12/foxfb.png';
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: (){
                  setState(() {
                    _affichage = ' Profile';
                    _images = 'https://images.stockcake.com/public/e/1/9/e19eab4f-3030-4113-82aa-4e9fec401f56_large/fox-in-snow-stockcake.jpg';
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: (){
                  setState(() {
                    _affichage = ' Message';
                    _images = 'https://as2.ftcdn.net/v2/jpg/00/76/47/97/1000_F_76479767_gv1iIKiZ0e9K1gw8YLGx5HBAQRHufrFB.jpg';
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.build_circle_sharp),
                title: const Text('Paramètre'),
                onTap: (){
                  setState(() {
                    _affichage = ' Paramètre';
                    _images = 'https://miro.medium.com/v2/resize:fit:1400/1*jj818i6pGhnuWjwGOi8v8g.jpeg';
                  });
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/image_pdp_2025.png'),
                    const Flexible(
                            child: Text('Regard ces supers boutons là =)')
                          ),
                    Text(_textPage + _affichage),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('L\'image en dessous provient du web'),
                    ),
                    Image.network(_images)
                  ],
                ),
              ),
        floatingActionButton:  FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.blue,
          child: const Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build_circle_sharp),
              label: 'Paramètre',
            ),
          ],
          currentIndex: _selectdIndex, 
          onTap: _itemClique,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.black87,
        ),
    );
  }
}