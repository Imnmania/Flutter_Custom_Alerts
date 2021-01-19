import 'package:alert_test_01/ratingAlert.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alert Test'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  _onAlertWithStylePressed(context);
                },
                child: Text('Rating Alert'),
              ),
              SizedBox(
                height: 100,
              ),
              FlatButton(
                onPressed: () {
                  _tutionSetAlert(context);
                },
                child: Text('Tution Alert'),
              ),
              SizedBox(
                height: 100,
              ),
              FlatButton(
                onPressed: () {
                  _youSureAlert(context);
                },
                child: Text('You Sure Alert'),
              ),
              SizedBox(
                height: 100,
              ),
              FlatButton(
                onPressed: () {
                  _tutionCodeAlert(context);
                },
                child: Text('Tution Code Alert'),
              ),
            ],
          ),
        ),
      ),
    );
  }

//////////////////////////////////////////////////////////////////////////////////////////
  // Pop up rating button
  _onAlertWithStylePressed(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 600),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        constraints: BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: Color(0x77000000),
        // overlayColor: Color(0xFFE5F6E3),
        // overlayColor: Color(0x551976d2),
        alertElevation: 0,
        backgroundColor: Color(0xFFE5F6E3),
        alertAlignment: Alignment.center);

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      // type: AlertType.error,
      title: '',
      // desc: "Flutter is more awesome with RFlutter Alert.",

      content: Column(
        children: [
          Container(
            height: 100,
            child: Image.asset('assets/images/logo2.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Thanks for using our service',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 5),
            // color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Now it\'s time for your valuable feedback',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RateF(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                Text(
                  'Share your feedback',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width,
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 5),
            // color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          )
        ],
      ),
      buttons: [
        DialogButton(
          child: Text(
            "Submit",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(30.0),
          width: 150,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
        ),
      ],
    ).show();
  }

////////////////////////////////////////////////////////////////////////////////////////////////////
  // Pop up tution button
  _tutionSetAlert(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 600),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40
              // topLeft: Radius.circular(40),
              // bottomRight: Radius.circular(40),
              ),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        constraints: BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: Color(0x77000000),
        // overlayColor: Color(0xFFE5F6E3),
        // overlayColor: Color(0x551976d2),
        alertElevation: 0,
        backgroundColor: Color(0xFFE5F6E3),
        alertAlignment: Alignment.center);

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      // type: AlertType.error,
      title: '',
      // desc: "Flutter is more awesome with RFlutter Alert.",

      content: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            // Text Field for topic
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 1),
                ],
              ),
              child: TextField(
                controller: null,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Topic',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                          spreadRadius: 1),
                    ],
                  ),
                  child: TextField(
                    controller: null,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'From',
                      border: InputBorder.none,
                    ),
                  ),
                ),

                // Text Field for "To"
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                          spreadRadius: 1),
                    ],
                  ),
                  child: TextField(
                    controller: null,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'To',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // Text Field for Date and Time
            Container(
              // width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 1),
                ],
              ),
              child: TextField(
                controller: null,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Date and Time',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(
            "Confirm",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(30.0),
          width: 150,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
        ),
      ],
    ).show();
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  ///

  _youSureAlert(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 600),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        constraints: BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: Color(0x77000000),
        // overlayColor: Color(0xFFE5F6E3),
        // overlayColor: Color(0x551976d2),
        alertElevation: 0,
        backgroundColor: Color(0xFFE5F6E3),
        alertAlignment: Alignment.center);

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      // type: AlertType.error,
      title: '',
      desc: "Are you sure you want to cancel?",

      // content: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 10),
      //       child: Text(
      //         'Are you sure you want to cancel?',
      //         style: TextStyle(fontSize: 14),
      //       ),
      //     ),
      //   ],
      // ),
      buttons: [
        DialogButton(
          child: Text(
            "Yes",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(30.0),
          width: 30,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
        ),
        DialogButton(
          child: Text(
            "No",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.red,
          radius: BorderRadius.circular(30.0),
          width: 30,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
        ),
      ],
    ).show();
  }

////////////////////////////////////////////////////////////////////////////////////////////////////
  // Pop up tution button

  // Tution Code Alert

  _tutionCodeAlert(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 600),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        constraints: BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: Color(0x77000000),
        // overlayColor: Color(0xFFE5F6E3),
        // overlayColor: Color(0x551976d2),
        alertElevation: 0,
        backgroundColor: Color(0xFFE5F6E3),
        alertAlignment: Alignment.center);

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      // type: AlertType.error,
      title: '',
      // desc: "Are you sure you want to cancel?",

      content: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 8),
            alignment: Alignment.topLeft,
            child: Text(
              'Enter Code:',
            ),
          ),
          OTPTextField(
            length: 5,
            width: MediaQuery.of(context).size.width * 0.8,
            fieldWidth: 40,
            style: TextStyle(fontSize: 20),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              setState(
                () {
                  // tempOtpNum = pin;
                  // Do something
                },
              );
              print("Completed: " + pin);
              // print(tempOtpNum);
            },
          ),
        ],
      ),
      buttons: [
        DialogButton(
          child: Text(
            "Confirm",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(30.0),
          width: 150,
          height: 50,
          margin: EdgeInsets.only(bottom: 20, top: 10),
        ),
      ],
    ).show();
  }
}
