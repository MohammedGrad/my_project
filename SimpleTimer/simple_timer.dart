import 'package:exam/am_pm.dart';
import 'package:exam/convex.dart';
import 'package:exam/hours.dart';
import 'package:exam/minutes.dart';
import 'package:flutter/material.dart';

class SimpleTimer extends StatefulWidget {
  const SimpleTimer({Key? key}) : super(key: key);

  @override
  State<SimpleTimer> createState() => _SimpleTimerState();
}

class _SimpleTimerState extends State<SimpleTimer> {

  int currentHour = 0;
  int currentMinutes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Hours wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (value){
                      //Do stuff
                      setState(() {
                      currentHour = value;
                      });
                    },
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 13,
                      builder: (context, index){
                        return MyHours(
                          hours: index,
                        );
                  },
                ),

              ),
          ),

          SizedBox(
            width: 10,
          ),

          //Minutes wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value){
                setState(() {
                  currentMinutes = value;
                });
              },
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index){
                  return MyMinutes(
                    mins: index,
                  );
                },
              ),

            ),
          ),

          SizedBox(width: 10),

          // AM or PM
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index){
                  if(index == 0){
                    return AmPm(isItAm: true);
                  }
                  else{
                    return AmPm(isItAm: false);
                  }
                },
              ),

            ),
          ),

        ],
      ),
    );
  }
}
