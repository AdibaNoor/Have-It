import 'package:flutter/material.dart';
import 'package:have_it/constants.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'Home.dart';

class SlidePage extends StatefulWidget {
  const SlidePage({Key? key}) : super(key: key);

  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ftcolor,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome!!!",style: TextStyle(color: fscolor,fontSize: 32,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                SlideAction(
                  borderRadius: 12,
                  outerColor: sccolor,
                  innerColor: ficolor,
                  text: " Slide To Proceed",
                  sliderButtonIcon: Icon(Icons.chevron_right),
                  onSubmit: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                  },
                  sliderRotate: false,

                )
              ],
            )
        ),
      ),
    );
  }
}
