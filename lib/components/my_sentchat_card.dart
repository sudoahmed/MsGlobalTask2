import 'package:flutter/material.dart';

class MySentChatCard extends StatelessWidget {
  const MySentChatCard({
    Key? key,
    required this.width,
    required this.height,
    required this.messageText,
  }) : super(key: key);

  final double width;
  final double height;
  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          alignment: Alignment.topRight,
          width: width * 0.55,
          height: height * 0.09,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(-1.0, 10.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ]),
          child: Center(
            child: Text(
              messageText,
              style: const TextStyle(fontSize: 13),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
