import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/package_card.dart';
import '../constants/color_constants.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildPackageAppBar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // color: Colors.orange,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/testImg.png',
                title: 'Shirts Dry and\nCleaning',
                price: '(\$60)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/testImg.png',
                smallCardImagePath2: 'assets/images/testImg.png',
                smallCardImagePath3: 'assets/images/testImg.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              )
            ],
          ),
        ),
      )),
    );
  }

  AppBar buildPackageAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: kDefaulTextColor,
      elevation: 20,
      shadowColor: kDefaulTextColor.withOpacity(0.6),
      shape: Border.all(color: kDefaulTextColor),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_outlined),
      ),
      title: const Center(
        child: Text(
          'Package',
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: const InkWell(
            child: Icon(FontAwesomeIcons.bars),
          ),
        )
      ],
    );
  }
}
