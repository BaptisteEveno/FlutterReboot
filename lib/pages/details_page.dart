import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String name; // NE PEUT PAS ÊTRE NULL

  const DetailsPage({
    super.key,
    required this.name, // obligatoire
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Retour"),
            ),
          ],
        ),
      ),
    );
  }
}
