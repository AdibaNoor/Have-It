import 'package:flutter/material.dart';
import 'package:have_it/constants.dart';
import 'package:have_it/util/habit_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Column(
        children: [
          HabitTile(
              habitName: "Exercise",
          ontap: (){},
          onSettingsTapped: (){},
          habitStrted: true,
          timeGoal: 10,
          timeSpent: 6,),
          // HabitTile(habitName:"Painting"),
          // HabitTile(habitName: 'Cooking',),
          // HabitTile(habitName: 'Movie',),
        ],
      ),
    );
  }
}
