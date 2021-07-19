import 'package:flutter/material.dart';

const header1 = TextStyle(fontSize: 18, color: Colors.black38);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Show Tracker",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => BuildSheet()),
        ),
      ),
    );
  }
}

class BuildSheet extends StatelessWidget {
  const BuildSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: DisabledGlowScroll(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.81,
        minChildSize: 0.8,
        maxChildSize: 0.81,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
          ),
          padding: EdgeInsets.only(top: 15, right: 15, left: 15),
          child: ListView(
            controller: controller,
            children: [
              //Top bar
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Center(
                    child: Text(
                      'Lịch sử phê duyệt',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 25,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),

              //Divider
              Divider(height: 25, color: Colors.black26, thickness: 0.2),
              SizedBox(height: 5),

              //Main content
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: 10,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 5,
                              color: Colors.black12,
                              margin: const EdgeInsets.only(left: 5, right: 5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(185, 128, 30, 1),
                          ),
                        ),
                        child: Container(
                          width: 31,
                          height: 31,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 8,
                              color: const Color.fromRGBO(245, 177, 60, 1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('08 : 00 14/05/2021', style: header1),
                              Text('Chuyên viên Phòng CNTT', style: header1),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      'Nguyễn Đức Cảnh',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(225, 232, 253, 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 3,
                                          ),
                                          child: Text(
                                            "Duyệt",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  120, 153, 250, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: SizedBox(
                                  width: 300,
                                  height: 35,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 2,
                                        height: 35,
                                        color: const Color.fromRGBO(
                                            65, 105, 146, 1),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Tờ trình đầy đủ nội dung rồi em, ổn rồi đó",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: const Color.fromRGBO(
                                                65, 105, 146, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: 10,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 5,
                              color: Colors.black12,
                              margin: const EdgeInsets.only(left: 5, right: 5),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(185, 128, 30, 1),
                          ),
                        ),
                        child: Container(
                          width: 31,
                          height: 31,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 8,
                              color: const Color.fromRGBO(245, 177, 60, 1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('10 : 00 14/05/2021', style: header1),
                              Text('Chuyên viên Phòng CNTT', style: header1),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      'Nguyễn Công Thịnh',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(225, 232, 253, 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 3,
                                          ),
                                          child: Text(
                                            "Duyệt",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  120, 153, 250, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 2,
                                        height: 20,
                                        color: const Color.fromRGBO(
                                            65, 105, 146, 1),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Giấy tờ đầy đủ.",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: const Color.fromRGBO(
                                                65, 105, 146, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(198, 61, 64, 1),
                          ),
                        ),
                        child: Container(
                          width: 31,
                          height: 31,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 8,
                              color: const Color.fromRGBO(231, 118, 143, 1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('10 : 00 14/05/2021', style: header1),
                              Text('Trưởng Phòng CNTT', style: header1),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      'Phạm Hoàng Phong',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(250, 227, 228, 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 3,
                                          ),
                                          child: Text(
                                            "Không Duyệt",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  229, 89, 97, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 2,
                                        height: 20,
                                        color: const Color.fromRGBO(
                                            65, 105, 146, 1),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "Chưa đúng quy trình.",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: const Color.fromRGBO(
                                                65, 105, 146, 1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisabledGlowScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
