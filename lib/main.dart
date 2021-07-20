import 'package:flutter/material.dart';
import './activity.dart';

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
        maxChildSize: 0.94,
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
              Activity(
                date: '10: 00 14/05/2021',
                name: 'Nguyễn Minh Tâm',
                comment: 'Ok ổn rồi đó',
                passed: true,
                position: 'Phó ban',
                lastNode: false,
              ),
              Activity(
                date: '10: 00 17/05/2021',
                name: 'Nguyễn Minh Tài',
                comment: 'Chưa ổn đâu.',
                passed: false,
                position: 'Trưởng ban',
                lastNode: false,
              ),
              Activity(
                date: '12: 00 18/05/2021',
                name: 'Nguyễn Trọng Tâm',
                comment: 'Đúng quy trình rồi. Chỉ cần thêm tài liệu là được',
                passed: true,
                position: 'Phó Giám Đốc',
                lastNode: false,
              ),
              Activity(
                date: '15: 00 18/05/2021',
                name: 'Nguyễn Trọng Đức',
                comment:
                    'Đã ổn. Mai lên họp tại công ty lúc 12 giờ ngày 19/05/2021. Nhớ đem theo các tài liệu cần thiết',
                passed: true,
                position: 'Giám Đốc',
                lastNode: true,
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
