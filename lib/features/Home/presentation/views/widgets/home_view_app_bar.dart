import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Student Portal",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(90)),
          child: Image.asset(
            height: 60,
            width: 60,
            'assets/images/personImage.jpeg',
          ),
        )
      ],
    );
  }
}
