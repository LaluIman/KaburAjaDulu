import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key, required this.icon, required this.title, required this.subtitle, this.color,
  });

  final String icon, title, subtitle;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 35, color: color,),
        SizedBox(width: 6,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),),
            Text(subtitle, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff868686)
            ),)
          ],
        ),
      ],
    );
  }
}