import 'package:flutter/material.dart';
import 'package:ms_global_task2/components/small_card.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    Key? key,
    required this.height,
    required this.width,
    required this.mainImagePath,
    required this.title,
    required this.price,
    required this.description,
    required this.smallCardImagePath1,
    required this.smallCardText1,
    required this.smallCardText2,
    required this.smallCardText3,
    required this.smallCardImagePath2,
    required this.smallCardImagePath3,
  }) : super(key: key);

  final double height;
  final double width;
  final String mainImagePath,
      smallCardImagePath1,
      smallCardImagePath2,
      smallCardImagePath3;
  final String title,
      price,
      description,
      smallCardText1,
      smallCardText2,
      smallCardText3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: height * 0.26,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(1.0, 5.0), //(x,y)
              blurRadius: 15.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(1),
            width: width * 0.4,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(5.0, 5.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ]),
            child: Image.asset(
              mainImagePath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Text(
                      price,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      description,
                      style: const TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallCard(
                      cardImage: Image.asset(smallCardImagePath1),
                      cardText: smallCardText1),
                  SmallCard(
                      cardImage: Image.asset(smallCardImagePath2),
                      cardText: smallCardText2),
                  SmallCard(
                      cardImage: Image.asset(smallCardImagePath3),
                      cardText: smallCardText3),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
