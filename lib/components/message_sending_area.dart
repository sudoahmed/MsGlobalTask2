import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessageSendingArea extends StatelessWidget {
  const MessageSendingArea({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            height: 40,
            width: width * 0.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(1.0, 8.0), //(x,y)
                    blurRadius: 10.0,
                  ),
                ]),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // filled: true,
                    // fillColor: Colors.white,
                    isDense: true,
                    hintText: 'Write a reply ...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Icon(
              FontAwesomeIcons.faceSmile,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Icon(
              FontAwesomeIcons.image,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Icon(
              FontAwesomeIcons.paperclip,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: const Icon(
              FontAwesomeIcons.solidPaperPlane,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
