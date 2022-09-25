import 'package:flutter/material.dart';
import 'package:have_it/constants.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ftcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Exercise',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
              Text('2/10= 20%'),
            ],
          ),
          Icon(Icons.settings),
        ],
      ),
    ),);
  }
}
