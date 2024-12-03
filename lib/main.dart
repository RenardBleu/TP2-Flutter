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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter TP2 Projet 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/cake.jpeg',fit: BoxFit.cover, height: 265,),
          Container(
            padding: const EdgeInsets.all(20),
            height: 400,
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Colors.blue.shade100
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : <Widget>[
                const Text(
                  'Gateau aux fruit de type fraise de couleur rouge',
                  style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  )),
                  Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                  textAlign: TextAlign.center,
                  'Alors du coup c\'est un gateau... \nAvec des fraises... Et genre c\'est un fruit... \nEt en faite elles sont rouges. \nVasi le gateau ma donnée pendant que je dev la page\n(F*ck l\'image sur mobile)',
                  style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lexend',
                  fontSize: 15,
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.blue.shade400),
                        Icon(Icons.star, color: Colors.blue.shade400),
                        Icon(Icons.star, color: Colors.blue.shade400),
                        const Icon(Icons.star),
                        const Icon(Icons.star),
                      ],
                    ),
                    const Text('170 Note')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.dining_rounded, color: Colors.blue.shade400, size: 40,),
                          const Text('Préparation'),
                          const Text('25min')
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.timer, color: Colors.blue.shade400, size: 40,),
                          const Text('Cuisson'),
                          const Text('1hr')
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                      children: <Widget>[
                        Icon(Icons.accessibility, color: Colors.blue.shade400, size: 40,),
                        const Text('Nb. Pers'),
                        const Text('4-6')
                      ],
                    )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
