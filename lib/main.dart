import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My App'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // width: MediaQuery.of(context).size.width,
            children: [
              CupertinoButton(
                onPressed: () {},
                // width : 100,

                child: const Text('Berita Terbaru'),
              ),
              CupertinoButton(onPressed: () {}, child: const Text('Live')),
            ],
          ),
          Container(
            child: Column(
              children: [
                //put image from internet
                Image.network(
                  'https://www.custompc.com/wp-content/sites/custompc/2023/03/nvidia-geforce-rtx-4090-review-01-580x334.jpg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                const Text('Nvidia GeForce RTX 4090 Review',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Image.network(
                  'https://www.lowyat.net/wp-content/uploads/2022/09/AMD-Ryzen-9-7950X-2.jpg',
                  width: MediaQuery.of(context).size.width / 2,
                  height: 100,
                ),
                Container(
                  padding: MediaQuery.of(context).padding,
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Column(
                    children: [
                      Text('Ryzen 7950HX',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text('Persaingan Intel dan Amd semakin ketat, Berikut',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
              
            ),
            
          )
        ]),
      ),
    );
  }
}
