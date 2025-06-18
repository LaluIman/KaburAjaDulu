import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    super.key, required this.image, required this.name,
  });

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: 120,),
        Text(name, style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),)
      ],
    );
  }
}