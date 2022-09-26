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
    ['Code', true, 0,30],
    ['Cooking', true, 4,50],
    ['Read', false, 5,20],
  ];

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
            ontap: (){},
            onSettingsTapped: (){},
            timeSpent: habitList[index][2],
            timeGoal: habitList[index][3],
            habitStrted: habitList[index][1],); 
      }))
      // Column(
      //   children: [
      //     HabitTile(
      //       habitName: habitList[0][0],
      //       ontap: (){},
      //       onSettingsTapped: (){},
      //       habitStrted: habitList[0][1],
      //       timeSpent: habitList[0][2],
      //       timeGoal: habitList[0][3],),
      //     HabitTile(
      //       habitName: habitList[1][0],
      //       ontap: (){},
      //       onSettingsTapped: (){},
      //       habitStrted: habitList[1][1],
      //       timeSpent: habitList[1][2],
      //       timeGoal: habitList[1][3],),
      //     HabitTile(
      //       habitName: habitList[2][0],
      //       ontap: (){},
      //       onSettingsTapped: (){},
      //       habitStrted: habitList[2][1],
      //       timeSpent: habitList[2][2],
      //       timeGoal: habitList[2][3],),
      //     HabitTile(
      //       habitName: habitList[3][0],
      //       ontap: (){},
      //       onSettingsTapped: (){},
      //       habitStrted: habitList[3][1],
      //       timeSpent: habitList[3][2],
      //       timeGoal: habitList[3][3],),
      //   ],
      // ),
    );
  }
}
