import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: () {
          Routemaster.of(context).push('/home/principal/profile');
        },
      ),
    );
  }
}
