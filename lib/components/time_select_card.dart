import 'package:flutter/material.dart';

class TimeSelectCard extends StatelessWidget {
  const TimeSelectCard({
    Key? key,
    required this.width,
    required this.backgroundColor,
    required this.timeRange,
    required this.textColor,
  }) : super(key: key);

  final double width;
  final Color backgroundColor;
  final Color textColor;
  final String timeRange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
      width: width * 0.27,
      height: width * 0.13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(-1.0, 10.0), //(x,y)
              blurRadius: 10.0,
            ),
          ]),
      child: Center(
        child: Text(
          timeRange,
          style: TextStyle(color: textColor, fontSize: 15),
        ),
      ),
    );
  }
}
