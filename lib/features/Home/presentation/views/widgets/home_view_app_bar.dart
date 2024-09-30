import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text("Student Portal"),
        CircleAvatar(
          child: Image.asset(
            height: 60,
            width: 60,
            'assets/images/download.jpeg',
          ),
        )
      ],
    );
  }
}
