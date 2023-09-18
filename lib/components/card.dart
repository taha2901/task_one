import 'package:flutter/material.dart';

class ccard extends StatelessWidget {
  const ccard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.0), 
          width: double.infinity, 
          height: 100.0, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), 
            image: DecorationImage(
              image: AssetImage(
                  'assets/FB_IMG_1692010229930.jpg'), 
              fit: BoxFit.cover, 
            ),
          ),
        ),
        Text('Taha'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Taha'),
            Icon(Icons.favorite)
          ],
        ),
      ],
    );
  }
}
