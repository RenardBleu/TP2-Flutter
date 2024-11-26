import 'package:flutter/material.dart';

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
  Icon _coeur = Icon(Icons.favorite_border, color: Colors.white,);
  Icon _account = Icon(Icons.account_circle, color: Colors.yellow,);
  int _selectdIndex = 0;
  String _affichage = ' Accueil';
  final _textPage = 'Vous êtes sur :';
  bool likeBool = false;

   void _itemClique(int index){
    setState(() {
      _selectdIndex = index;
      switch(_selectdIndex){
        case 0:
        {
          _affichage = ' Accueil';
        }
        case 1:
        {
          _affichage = ' Profile';
        }
        case 2:
        {
          _affichage = ' Message';
        }
        case 3:
        {
          _affichage = ' Paramètre';
        }
        break;
      }
    });
   }

  void _likeThis(){
    setState(() {
      if (likeBool){
        _coeur = Icon(Icons.favorite_border, color: Colors.white,);
        bool likeBool = false;
      }
      else {
        _coeur = Icon(Icons.favorite, color: Colors.red,);
        bool likeBool = true;
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
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.build_circle_sharp),
                title: const Text('Paramètre'),
                onTap: (){},
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Flexible(
                            child: Text('Regard ces supers boutons là =)')
                          ),
                    Text(_textPage + _affichage),
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