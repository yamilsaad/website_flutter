import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
        body: Row(
          children: [
            const Text('Contacto'),
            Center(
              child: FloatingActionButton.large(
                onPressed: () => Navigator.pushNamed(context, '/home'),
                child: const Icon(Icons.arrow_circle_up_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
