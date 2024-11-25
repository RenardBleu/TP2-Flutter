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
  bool likeBool = false;

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
            IconButton(onPressed: _likeThis, icon: _account)
        ],
        backgroundColor: Colors.blue,
        ),
        body: Center(child: Text('Regard ce super bouton là =)')),
        floatingActionButton:  FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.blue,
            child: const Icon(Icons.home),
            )
    );
  }
}