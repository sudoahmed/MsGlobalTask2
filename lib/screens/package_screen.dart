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
                height: 20,
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/shirt.png',
                title: 'Shirts Dry and\nCleaning',
                price: '(\$60)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/washingMachine.png',
                smallCardImagePath2: 'assets/images/coat.png',
                smallCardImagePath3: 'assets/images/iron.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/jeansShirtShoes.png',
                title: 'Shirts jeans slip\nDry and cleaning',
                price: '(\$40)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/washingMachine.png',
                smallCardImagePath2: 'assets/images/coat.png',
                smallCardImagePath3: 'assets/images/iron.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/LaundryJeans.png',
                title: '5 Jeans Dry and\ncleaning',
                price: '(\$40)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/washingMachine.png',
                smallCardImagePath2: 'assets/images/coat.png',
                smallCardImagePath3: 'assets/images/iron.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/uniform.png',
                title: '2 Uniform Dry\nand cleaning',
                price: '(\$40)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/washingMachine.png',
                smallCardImagePath2: 'assets/images/coat.png',
                smallCardImagePath3: 'assets/images/iron.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              ),
              PackageCard(
                height: height,
                width: width,
                mainImagePath: 'assets/images/linen.png',
                title: '2 Linen Dry and\ncleaning',
                price: '(\$40)',
                description: 'You will get \$10 off\nbuy this package',
                smallCardImagePath1: 'assets/images/washingMachine.png',
                smallCardImagePath2: 'assets/images/coat.png',
                smallCardImagePath3: 'assets/images/iron.png',
                smallCardText1: 'Wash\n',
                smallCardText2: 'Dry\ncleaning',
                smallCardText3: 'Iron\n',
              ),
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
          child: InkWell(
            child: Icon(FontAwesomeIcons.bars),
            onTap: () {
              Navigator.pushNamed(context, '/pickup');
            },
          ),
        )
      ],
    );
  }
}
