import 'package:flutter/material.dart';

const header1 = TextStyle(fontSize: 18, color: Colors.black38);
const mainHeader = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const left5 = EdgeInsets.only(left: 5);

const darkYellow = Color.fromRGBO(185, 128, 30, 1);
const lightYellow = Color.fromRGBO(245, 177, 60, 1);
const darkRed = Color.fromRGBO(198, 61, 64, 1);
const lightRed = Color.fromRGBO(231, 118, 143, 1);
const darkBlue = Color.fromRGBO(65, 105, 146, 1);
const textPassed = Color.fromRGBO(225, 232, 253, 1);
const textFailed = Color.fromRGBO(250, 227, 228, 1);
const boxPassed = Color.fromRGBO(120, 153, 250, 1);
const boxFailed = Color.fromRGBO(229, 89, 97, 1);

class Activity extends StatelessWidget {
  final String date;
  final String position;
  final String name;
  final bool passed;
  final String comment;
  final bool lastNode;

  const Activity({
    Key? key,
    required this.date,
    required this.position,
    required this.name,
    required this.passed,
    required this.comment,
    required this.lastNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: left5,
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            //Draw ode line
            lastNode
                ? Container()
                : Positioned(
                    top: 5,
                    left: 10,
                    child: Container(
                      height: 200,
                      width: 5,
                      color: Colors.black12,
                      margin: left5,
                    ),
                  ),

            //Draw node color
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: passed
                    ? Border.all(width: 2, color: darkYellow)
                    : Border.all(width: 2, color: darkRed),
              ),
              child: Container(
                width: 31,
                height: 31,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: passed
                      ? Border.all(width: 8, color: lightYellow)
                      : Border.all(width: 8, color: lightRed),
                ),
              ),
            ),

            //Draw main content
            Positioned(
              left: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Date section
                  Text(date, style: header1),

                  //Position section
                  Text(position, style: header1),

                  //Name section
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        //Draw name
                        Text(name, style: mainHeader),

                        //Draw passed badge
                        Padding(
                          padding: left5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: passed ? textPassed : textFailed,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 3),
                              child: Text(
                                passed ? "Duyệt" : "Không Duyệt",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: passed ? boxPassed : boxFailed,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //Comment section
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          VerticalDivider(width: 2, color: darkBlue),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 250,
                            child: Text(
                              comment,
                              style: TextStyle(fontSize: 17, color: darkBlue),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
