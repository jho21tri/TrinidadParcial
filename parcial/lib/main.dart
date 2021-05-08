import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial',
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              //fondo
              Container(
                color: Colors.grey[400],
              ),
              //Cabecera
              Container(
                  height: 250,
                  width: 390,
                  margin: EdgeInsets.all(5),
                  child: (Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/messi.png',
                            fit: BoxFit.none,
                            scale: 2,
                          ),
                          Icon(
                            FontAwesomeIcons.solidImages,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lionel Messi',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          Icon(
                            FontAwesomeIcons.edit,
                            color: Colors.white,
                            size: 20.0,
                          )
                        ],
                      )
                    ],
                  )),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(
                          colors: [Colors.pink[800], Colors.purple[700]],
                          stops: [0.2, 0.7],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter))),
              Container(
                margin: EdgeInsets.only(top: 255, left: 5),
                color: Colors.grey[200],
                width: 385,
                height: 445,
              ),
              Container(
                margin: EdgeInsets.only(top: 200, left: 20),
                color: Colors.white,
                width: 360,
                height: 440,
                child: ListView(
                  padding: EdgeInsets.all(15),
                  children: [
                    Center(
                      child: Text(
                        "USER PROFILE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User name",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold),
                    ),
                    InputUser(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email Id",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold),
                    ),
                    InputEmail(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold),
                    ),
                    InputPhone(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date of Birth",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold),
                    ),
                    InputDate(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sex",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontWeight: FontWeight.bold),
                    ),
                    SwitchSex(),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[700],
                      ),
                      onPressed: () {},
                      child: Text('SAVE'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchSex extends StatefulWidget {
  const SwitchSex({
    Key key,
  }) : super(key: key);

  @override
  _SwitchSexState createState() => _SwitchSexState();
}

class _SwitchSexState extends State<SwitchSex> {
  bool isSwitchedMale = false;
  bool isSwitchedFemale = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: isSwitchedMale,
          onChanged: (value) {
            setState(() {
              isSwitchedMale = value;
              masculino();
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Male"),
        Switch(
          value: isSwitchedFemale,
          onChanged: (value) {
            setState(() {
              isSwitchedFemale = value;
              femenino();
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Female"),
      ],
    );
  }

  void masculino() {
    if (isSwitchedMale == true) {
      isSwitchedFemale = false;
    }
  }

  void femenino() {
    if (isSwitchedFemale == true) {
      isSwitchedMale = false;
    }
  }
}

class InputPhone extends StatefulWidget {
  const InputPhone({
    Key key,
  }) : super(key: key);

  @override
  _InputPhoneState createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.phone_iphone,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Mobile number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputEmail extends StatefulWidget {
  const InputEmail({
    Key key,
  }) : super(key: key);

  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputUser extends StatefulWidget {
  const InputUser({
    Key key,
  }) : super(key: key);

  @override
  _InputUserState createState() => _InputUserState();
}

class _InputUserState extends State<InputUser> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.userCircle,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter User Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputDate extends StatefulWidget {
  const InputDate({
    Key key,
  }) : super(key: key);

  @override
  _InputDateState createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
  String fecha = '';
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.calendarAlt,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'DD / MM / YYYY',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onTap: () {
        //Para que no se muestre el teclado al momento de mandar el calendario
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(1990),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {
        fecha = date.toString();
        textController.text = fecha;
      });
    }
  }
}
