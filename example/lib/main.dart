import 'package:custom_radial_menu/custom_radial_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomRadialMenu(
          radius: 100,
          centerWidget: FloatingActionButton(
            child: const Icon(Icons.account_circle_outlined),
            onPressed: () {},
          ),
          children: [
            FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Hi'),
              onPressed: () {},
            ),
            const Text("Hi Radial"),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            const FlutterLogo(),
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              height: 50,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
