import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ms_global_task2/components/custom_button.dart';
import 'package:ms_global_task2/constants/color_constants.dart';

import '../components/date_pickup_card.dart';
import '../components/time_select_card.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({Key? key}) : super(key: key);

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  bool _isOn = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'When Would You like your Pickup',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        FontAwesomeIcons.calendarDays,
                        color: kDefaulTextColor,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DatePickupCard(
                      width: width,
                      upperContainerColor: Colors.grey,
                      upperContainerText: 'Fri',
                      upperContainerTextColor: Colors.white,
                      lowerContainerText: '25 Jun\nYesterday',
                    ),
                    DatePickupCard(
                        width: width,
                        upperContainerColor: Colors.blue,
                        upperContainerText: 'Sat',
                        lowerContainerText: '26 Jun\nToday',
                        upperContainerTextColor: Colors.white),
                    DatePickupCard(
                        width: width,
                        upperContainerColor: Colors.white,
                        upperContainerText: 'Mon',
                        lowerContainerText: '27 Jun\nTomorrow',
                        upperContainerTextColor: Colors.black),
                    DatePickupCard(
                        width: width,
                        upperContainerColor: Colors.red,
                        upperContainerText: 'Mon',
                        lowerContainerText: '29 Jun\nBlockday',
                        upperContainerTextColor: Colors.white),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: const Text(
                    'Available time slots',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TimeSelectCard(
                      width: width,
                      backgroundColor: Colors.blue,
                      timeRange: '7am - 9pm',
                      textColor: Colors.white,
                    ),
                    TimeSelectCard(
                      width: width,
                      backgroundColor: Colors.white,
                      timeRange: '10am - 12pm',
                      textColor: Colors.black,
                    ),
                    TimeSelectCard(
                      width: width,
                      backgroundColor: Colors.white,
                      timeRange: '1pm - 2pm',
                      textColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TimeSelectCard(
                      width: width,
                      backgroundColor: Colors.white,
                      timeRange: '4pm - 6pm',
                      textColor: Colors.black,
                    ),
                    TimeSelectCard(
                      width: width,
                      backgroundColor: Colors.white,
                      timeRange: '8pm - 10pm',
                      textColor: Colors.black,
                    ),
                  ],
                ),
                buildLongRectCard(
                  width: width,
                  leading: 'Repeat Pickup',
                  action: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: CupertinoSwitch(
                      value: _isOn,
                      onChanged: (value) {
                        setState(() {
                          _isOn = !_isOn;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: const Text(
                    'How often Repeat',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                buildLongRectCard(
                  width: width,
                  leading: 'Every Week',
                  action: DropdownButton(
                      underline: Container(),
                      icon: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(FontAwesomeIcons.chevronDown)),
                      items: <String>['Daily', 'Weekly', 'Monthly']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                value,
                              )),
                        );
                      }).toList(),
                      onChanged: (_) {}),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: const Text(
                    'How many times',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                buildLongRectCard(
                  width: width,
                  leading: '1',
                  action: DropdownButton(
                      underline: Container(),
                      icon: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(FontAwesomeIcons.chevronDown)),
                      items: <String>['Daily', 'Weekly', 'Monthly']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                value,
                              )),
                        );
                      }).toList(),
                      onChanged: (_) {}),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                    buttonText: 'Continue',
                    buttonColor: Colors.blue,
                    buttonFunction: () {},
                    desiredWidth: 250),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildLongRectCard(
      {required double width,
      required String leading,
      required Widget action}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: width * 0.9,
      height: width * 0.12,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(-1.0, 10.0), //(x,y)
              blurRadius: 10.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              leading,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
          ),
          action,
        ],
      ),
    );
  }

  AppBar buildCustomAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: kDefaulTextColor,
      elevation: 20,
      shadowColor: kDefaulTextColor.withOpacity(0.6),
      shape: Border.all(color: kDefaulTextColor),
      leading: InkWell(
        onTap: () {},
        child: Icon(Icons.arrow_back_outlined),
      ),
      title: const Center(
        child: Text(
          'Pick up Date',
        ),
      ),
      actions: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(child: Icon(FontAwesomeIcons.bars)))
      ],
    );
  }
}
