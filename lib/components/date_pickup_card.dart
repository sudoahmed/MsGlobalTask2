import 'package:flutter/material.dart';

class DatePickupCard extends StatelessWidget {
  const DatePickupCard({
    Key? key,
    required this.width,
    required this.upperContainerColor,
    required this.upperContainerText,
    required this.lowerContainerText,
    required this.upperContainerTextColor,
  }) : super(key: key);

  final double width;
  final Color upperContainerColor;
  final Color upperContainerTextColor;
  final String upperContainerText;
  final String lowerContainerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(-1.0, 15.0), //(x,y)
              blurRadius: 15.0,
            ),
          ]),
      width: width * 0.22,
      height: width * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: width * 0.137,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: upperContainerColor,
            ),
            child: Center(
              child: Text(
                upperContainerText,
                style: TextStyle(
                    color: upperContainerTextColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            lowerContainerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
