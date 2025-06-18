import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class NearbyItem extends StatelessWidget {
  const NearbyItem({
    super.key, required this.icon, required this.name,
  });

  final String icon, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Color(0xffD8D8D8),),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(icon, width: 30,),
            SizedBox(height: 7,),
            Text(name, style: TextStyle(
              color: Color(0xffAFAFAF),
            ),)
          ],
        ),
      ),
    );
  }
}
