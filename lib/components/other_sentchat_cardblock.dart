import 'package:flutter/material.dart';

class OtherSentchatCardBlock extends StatelessWidget {
  const OtherSentchatCardBlock({
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/ahmed.JPG',
                ),
                // backgroundColor: Colors.blue,
                radius: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ahmed Ansari',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '1m ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.topRight,
                  width: width * 0.55,
                  height: height * 0.09,
                  decoration: const BoxDecoration(
                      color: Colors.white,
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
                      style: const TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
