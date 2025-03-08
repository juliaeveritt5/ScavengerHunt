import 'package:flutter/material.dart';
import 'package:scavenger_hunt/pages/panera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PFT Scavenger Hunt'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity:
                  0.3, // Adjust transparency (0.0 = fully transparent, 1.0 = fully opaque)
              child: Image.asset(
                'assets/pft.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            // Ensures content is centered
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/logo.png', width: 200),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Welcome to Patrick F. Taylor Hall!',
                    style: TextStyle(
                      color: Colors.black, // Ensure text is visible
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'This app will take you on a scavenger hunt through the building.',
                    style: TextStyle(
                      color: Colors.black, // Ensure text is visible
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Click the button to get started!',
                  style: TextStyle(
                    color: Colors.black, // Ensure text is visible
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              // builder: (context) => const Option1A()),
                              builder: (context) => const Panera()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      child: Text(
                        "Let's Geaux",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
