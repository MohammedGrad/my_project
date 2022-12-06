import 'package:flutter/material.dart';


class NewBox extends StatelessWidget {
  final child;
  const NewBox({Key? key, required this.child} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15), bottomLeft:Radius.circular(15),bottomRight:Radius.circular(15)),
          color: Colors.grey[300],
          boxShadow: [
            // Darker Shadow on The Bottom Right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 5,
              offset: Offset(10,10),
            ),

            //lighter Shadow on The Top left
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              offset: Offset(-10,-10),

            ),


          ]
      ),

    );
  }
}
