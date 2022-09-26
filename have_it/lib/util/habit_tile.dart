import 'package:flutter/material.dart';
import 'package:have_it/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final VoidCallback ontap;
  final VoidCallback onSettingsTapped;
  final int timeSpent;
  final int timeGoal;
  final bool habitStrted;

  const HabitTile({Key? key,
    required this.habitName,
    required this.ontap,
    required this.onSettingsTapped,
    required this.timeSpent,
    required this.timeGoal,
    required this.habitStrted}) : super(key: key);

  //converting timeSpent time into minute:sec format
  String convertToMinSec(int totalSec){
    String sec = (totalSec % 60).toString();
    String min = (totalSec/60).toStringAsFixed(4);
    if(sec.length ==1){
      sec = '0'+sec;
    }

    if(min[1] == '.'){
      min = min.substring(0,1);
    }
    return min + ':' + sec;
  }
// percentage calculation

  double PercentCompleted(){
    return timeSpent/(timeGoal*60);
  }
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
          Row(
            children: [
            GestureDetector(
              onTap: ontap,
              child: SizedBox(
                 height: 60,
                 width: 60,
                 child: Stack(
                   children: [
                     CircularPercentIndicator(
                       radius: 30,
                       lineWidth: 9,
                       percent: PercentCompleted()< 1? PercentCompleted(): 1,
                       progressColor: sccolor,
                       backgroundColor: trcolor,
                     ),
                     //play button
                     Center(child: Icon(habitStrted? Icons.pause: Icons.play_arrow, color: Colors.white,),)
                   ],
                 ),
               ),
            ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(habitName,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: fscolor),),
                  Text(convertToMinSec(timeSpent)+'/'+timeGoal.toString()
                      +' = '+ (PercentCompleted()*100).toStringAsFixed(0)+'%',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: fscolor),),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: onSettingsTapped,
              child: Icon(Icons.settings, size: 40,color: fscolor,)),
        ],
      ),
    ),);
  }
}
