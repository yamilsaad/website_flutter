import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
        body: Center(
          child: FloatingActionButton.large(
            onPressed: () => Navigator.pushNamed(context, '/home'),
            child: const Icon(Icons.arrow_circle_up_outlined),
          ),
        ),
      ),
    );
  }
}
