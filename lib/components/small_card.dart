import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
    required this.cardImage,
    required this.cardText,
  }) : super(key: key);

  final Image cardImage;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1.0, 5.0), //(x,y)
                  blurRadius: 5.0,
                ),
              ]),
          child: cardImage,
        ),
        Container(
          margin: EdgeInsets.all(4),
          child: Text(
            cardText,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        )
      ],
    );
  }
}
