import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterRebootApp());
}

class FlutterRebootApp extends StatelessWidget {
  const FlutterRebootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Compteur : $counter", style: const TextStyle(fontSize: 24)),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: increment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // couleur du bouton
                  foregroundColor: Colors.white, // couleur du texte
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // arrondi
                  ),
                ),
                child: const Text("Incrémenter"),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: reset,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // couleur du bouton
                  foregroundColor: Colors.white, // couleur du texte
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // arrondi
                  ),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
