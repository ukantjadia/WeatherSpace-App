import 'package:flutter/material.dart';

class textFormFiedlMod extends StatefulWidget {
  const textFormFiedlMod({super.key});

  @override
  State<textFormFiedlMod> createState() => _textFormFiedlModState();
}

class _textFormFiedlModState extends State<textFormFiedlMod> {
  @override
  Widget build(BuildContext context) {
    return field();
  }
}

Widget field() {
  return Scaffold(
    backgroundColor: Color(0xFFF9FAFC),
    appBar: AppBar(
      title: Text("sdfsjdflsdjflsdfj"),
    ),
    body: Center(
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.black12,
          filled: true,
          focusColor: Colors.amber,
          border: OutlineInputBorder(gapPadding: 50.0),
          floatingLabelStyle: TextStyle(backgroundColor:Colors.red),//,decorationStyle: ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: "heelsodfsdf",
          labelStyle: TextStyle(
            // decoration: TextDecoration(ActivateIntentconst TextDecorationStyle())
            // background: Paint(),

            // backgroundColor: Color(0xFFF9FAFC),
color: Color(0xFF6E717C),
backgroundColor: Color(0xFFF9FAFC)
          ),
            // color: Color(0xFF25292D),
        ),
      ),
    ),
  );
}
