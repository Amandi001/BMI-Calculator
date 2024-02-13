import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController gender = TextEditingController();
    TextEditingController height = TextEditingController();
    TextEditingController weight = TextEditingController();
    TextEditingController bmi = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 100, 84, 223),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'UserName',
                            prefixIcon: Icon(Icons.people),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: gender,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: height,
                          decoration: InputDecoration(
                            labelText: 'Height (cm)',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: weight,
                          decoration: InputDecoration(
                            labelText: 'Weight (kg)',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: bmi,
                          decoration: InputDecoration(
                            labelText: 'BMI',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Update'),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 52, 122, 160),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 20.0),
                              textStyle: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/profile.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 15.5,
                    child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey, shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          size: 30.0,
                        )),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder myInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 4, 3, 3),
          width: 3,
        ));
  }

  OutlineInputBorder myFocusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 28, 98, 195),
          width: 3,
        ));
  }
}
