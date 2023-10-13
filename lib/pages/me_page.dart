import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        body: Center(
          child: Container(
            child: FloatingActionButton.large(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Icon(Icons.arrow_circle_up_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
