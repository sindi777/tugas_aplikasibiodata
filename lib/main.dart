import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final biodata = <String, String>{};

  MyApp({super.key}) {
    biodata['name'] = 'Sindi Nur Atika';
    biodata['image'] = 'sindi.jpg';
    biodata['nim'] = '212221024';
    biodata['prodi'] = 'Informatika';
    biodata['fakultas'] = 'FMIKOM';
    biodata['angkatan'] = '2021';
    biodata['phone'] = '087869132491';
    biodata['email'] = 'sindy3545@gmail.com';
    biodata['addr'] =
        'Jl.Hiu, Sikampuh Kayu Langit Kroya Cilacap Jawa Tengah Indonesia';
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Biodata',
      home: Scaffold(
        appBar: AppBar(title: const Text("Aplikasi Biodata")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  biodata['name'] ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Image(image: AssetImage('assets/${biodata["image"] ?? ''}')),
              SizedBox(height: 30),
              Row(
                children: [
                  btnContact(Icons.alternate_email, Colors.green[900]),
                  btnContact(
                      Icons.mark_email_unread_rounded, Colors.red),
                  btnContact(Icons.phone, Colors.blue)
                ],
              ),
              SizedBox(height: 10),
              textAttribute("Nama", biodata['name'] ?? ''),
              SizedBox(height: 5),
              textAttribute("NIM", biodata['nim'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Prodi", biodata['prodi'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Fakultas", biodata['fakultas'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Angkatan", biodata['angkatan'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Kontak", biodata['phone'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Email", biodata['email'] ?? ''),
              SizedBox(height: 5),
              textAttribute("Alamat", biodata['addr'] ?? '')
            ],
          ),
        ),
      ),
    );
  }

  Row textAttribute(String judul, String teks) {
    return Row(
      children: [
        Container(
          width: 120,
          child: Text("- $judul",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Text(":", style: TextStyle(fontSize: 18)),
        Text(teks, style: TextStyle(fontSize: 18))
      ],
    );
  }

  Expanded btnContact(IconData icon, var color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}

// coba dulu
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
