import 'dart:async';

import 'package:flutter/material.dart';
import 'package:have_it/constants.dart';
import 'package:have_it/util/habit_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List habitList=[
    //[habitName, habitStrted, timeSpent, timeGoal]
    ['Exercise', false, 0,10],
    ['Code', false, 0,30],
    ['Cooking', false, 0,50],
    ['Read', false, 0,20],
  ];
  void habitPlayed(int index){
    var startTime = DateTime.now();
    var elapsedTime = habitList[index][2];
    setState(() {
      habitList[index][1] = !habitList[index][1];
    });
    if(habitList[index][1]){
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if(!habitList[index][1]){
            timer.cancel();
          }

          var currentTime = DateTime.now();
          habitList[index][2] = elapsedTime + currentTime.second - startTime.second +
              60*(currentTime.minute - startTime.minute) +
              3600*(currentTime.hour - startTime.hour);
        });
      });
    }
  }
  void settingsOpened(int index){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Settings for '+habitList[index][0]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ficolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Have-It',style: TextStyle(
          color: sccolor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body:ListView.builder(
        itemCount: habitList.length,
          itemBuilder: ((context,index){
        return HabitTile(
            habitName: habitList[index][0],
            ontap: (){
              habitPlayed(index);
            },
            onSettingsTapped: (){
              settingsOpened(index);
            },
            timeSpent: habitList[index][2],
            timeGoal: habitList[index][3],
            habitStrted: habitList[index][1],);
      }),
      )

    );
  }
}
