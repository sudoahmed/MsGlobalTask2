import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ms_global_task2/components/my_sentchat_card.dart';
import 'package:ms_global_task2/painter/custom_painter.dart';

import '../components/message_sending_area.dart';
import '../components/other_sentchat_cardblock.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: MessageSendingArea(width: width),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined),
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(FontAwesomeIcons.bars))
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: height * 0.87,
            child: CustomPaint(
              size: const Size(720, 1600),
              painter: PathPainter(),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.solidComments,
                        size: 28,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                    child: const Text(
                      'Hi There!',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                    child: const Text(
                      'Welcome to Online Service. How can\nwe help you today?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 140),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MySentChatCard(
                          width: width,
                          height: height,
                          messageText:
                              'Of course. Are you interested in\nmonth-to-month or long term'),
                    ],
                  ),
                  const Center(
                    child: Text(
                      'July 25 23:34',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  OtherSentchatCardBlock(
                    width: width,
                    height: height,
                    messageText:
                        'Hi. Could you tell me more about\nyour subscription options?',
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MySentChatCard(
                width: width,
                height: height,
                messageText:
                    'Of course. Are you interested in\nmonth-to-month or long term',
              ),
              OtherSentchatCardBlock(
                width: width,
                height: height,
                messageText:
                    'Hi. Could you tell me more about\nyour subscription options',
              ),
              MySentChatCard(
                width: width,
                height: height,
                messageText:
                    'Of course. Are you interested in\nmonth-to-month or long term',
              ),
              MySentChatCard(
                width: width,
                height: height,
                messageText:
                    'Of course. Are you interested in\nmonth-to-month or long term',
              ),
            ],
          )
        ],
      ),
    );
  }
}
