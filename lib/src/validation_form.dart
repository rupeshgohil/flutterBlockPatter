
import 'package:flutter/material.dart';
import 'package:flutter_bloc_patter_demo/src/simple_bloc_validation.dart';

class MyBlocActivity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyFormFormActivity();
  }

}

// ignore: camel_case_types
class MyFormFormActivity extends State<MyBlocActivity>{
  List<String> mBlockArray = List<String>();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mBlockArray.add("Simple Bloc Validation");
    mBlockArray.add("Bloc Validation");
    mBlockArray.add("Bloc with Rest API");
    mBlockArray.add("Bloc with Rest API with validations");
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body:ListView.builder(
            itemCount: mBlockArray.length,
            itemBuilder: (context, position) {
            return  Padding(
              padding: const EdgeInsets.only(top:20,right: 15,left: 15),
              child: MaterialButton(
                onPressed: () {
                  if(position == 0){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SimpleBlocValidation(),
                      ),
                    );
                  }
                },
                color: Colors.black,
                elevation: 8,
                child: Text(
                  mBlockArray[position],
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
            );
        }),
      ),
    );
  }

}