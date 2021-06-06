

import 'package:flutter/material.dart';

class SimpleBlocValidation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MySimpleBlocValidation();
  }
}
class MySimpleBlocValidation extends State<SimpleBlocValidation>{

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:20,right: 15,left: 15),
              child: TextFormField(
                controller: _emailController,
                textAlign: TextAlign.start,
                autofocus: false,
                cursorColor: Colors.black,
                obscureText: true,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                  filled: false,
                  fillColor: Colors.white,
                  hintText: '',
                  labelText: 'Enter email address',
                  labelStyle: TextStyle(
                      color:Colors.black
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20,right: 15,left: 15),
              child: TextFormField(
                controller: _passwordController,
                textAlign: TextAlign.start,
                autofocus: false,
                cursorColor: Colors.black,
                obscureText: true,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                  filled: false,
                  fillColor: Colors.white,
                  hintText: '',
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(
                      color:Colors.black
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                        width: 3,
                        style: BorderStyle.solid,
                        color: Colors.black
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                        width: 3,
                        style: BorderStyle.solid,
                        color: Colors.black
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                        width: 3,
                        style: BorderStyle.solid,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20,right: 15,left: 15),
              child: MaterialButton(
                onPressed: () {
                  print("click");
                },
                color: Colors.black,
                elevation: 8,
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                textColor: Colors.white,
                disabledTextColor: Colors.amber,
                focusColor:Colors.black12,
                focusElevation: 8,
                height: 50,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}