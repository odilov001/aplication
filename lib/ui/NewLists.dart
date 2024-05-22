import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewLists extends StatelessWidget {
  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    studentData();
    return ListView.separated(
      separatorBuilder: (context, idx) {
        if (idx % 5 == 0 && idx != 0) {
          return Divider(
            thickness: 4,
            color: Colors.blue,
          );
        } else {
          return Divider(
            thickness: 0,
          );
        }
      },
      itemCount: allStudents.length,
      itemBuilder: (context, index) {
        return Card(
            color: index % 2 == 0 ? Colors.blue.shade800 : Colors.blue.shade900,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.media_bluetooth_off),
              title: Text(allStudents[index].ism),
              subtitle: Text(allStudents[index].izoh),
              trailing:
                  Icon(allStudents[index].jinsiyat ? Icons.male : Icons.female),
              onTap: () {
                debugPrint(allStudents[index].toString());
                toastMessage(index, false);
                showAlert(context);
              },
              onLongPress: () {
                debugPrint("Clicked Long Press");
                toastMessage(index, true);
                showAlert(context);
              },
            ));
      },
    );
  }

  void studentData() {
    allStudents = List.generate(
      21,
      (idx) => Student("Student $idx", "Student's Comment $idx", idx % 2 == 0),
    );
  }

  void toastMessage(int idx, bool longClick) {
    Fluttertoast.showToast(
      msg: longClick
          ? "Clicked Long Press " + allStudents[idx].toString()
          : "Clicked Tap " + allStudents[idx].toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.white,
      fontSize: 20.0,
    );
  }

  void showAlert(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: true,
        builder: (ctx) {
          return AlertDialog(
            title: Text("alert head qismi"),
            content: SingleChildScrollView(
              child: ListBody(
                // children: <Widget>[
                //   Text(
                //       "Alert Dialog" * 100  // textni songa ko'paytirsa otritib beradi
                //
                //   )
                // ],
                children: List<Widget>.generate(5, (index) => Text("Alert Dialog")),
              ),
            ),
            actions: <Widget>[
              ButtonBarTheme(
                data: ButtonBarThemeData(),  // This should not be null
                child: ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Clicked YES");
                        Navigator.of(ctx).pop();
                      },
                      child: Text("YES"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Clicked NO");
                        Navigator.of(ctx).pop();
                      },
                      child: Text("NO"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        }
    );
  }

}

class Student {
  late String ism;
  late String izoh;
  late bool jinsiyat;

  Student(this.ism, this.izoh, this.jinsiyat);

  @override
  String toString() {
    return "Tanlangan Student Name $ism Comment $izoh ";
  }
}
