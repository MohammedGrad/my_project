import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'confetti_page.dart';
import 'package:google_fonts/google_fonts.dart';



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "ÇUKUR",
            style: GoogleFonts.changa(
            fontSize: 30,
            color: Colors.blueGrey[100],
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          leading: Icon(Icons.settings_ethernet_rounded, size: 40,color: Colors.blueGrey[100],),
          backgroundColor: Colors.blueGrey[800],
        ),
        //Adding SpinCircleBottomBarHolder to body of Scaffold
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [
                Color.fromRGBO(55, 70, 78, 1.0),
                Color.fromRGBO(255, 255, 255, 1.0),
                Color.fromRGBO(182, 28, 28, 1.0)],
              iconTheme: IconThemeData(color: Colors.black45),
              activeIconTheme: IconThemeData(color: Colors.red[900]),
              backgroundColor: Colors.blueGrey[100],
              titleStyle: TextStyle(color: Colors.black45,fontSize: 12),
              activeTitleStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Color.fromRGBO(182, 28, 28, 1.0),
                  icon: Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2
              ),
              elevation: 2.0,
              items: [
                // Suggested count : 4
                SCBottomBarItem(icon: Icons.verified_user, title: "User", onPressed: () {

                }),
                SCBottomBarItem(icon: Icons.supervised_user_circle, title: "Details", onPressed: () {}),
                SCBottomBarItem(icon: Icons.notifications, title: "Notification", onPressed: () {}),
                SCBottomBarItem(icon: Icons.details, title: "New Data", onPressed: () {}),
              ],
              circleItems: [
                //Suggested Count: 3
                SCItem(icon: Icon(Icons.add), onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfettiPage()));
                }),
                SCItem(icon: Icon(Icons.print,color: Colors.white,), onPressed: () {}),
                SCItem(icon: Icon(Icons.map, color: Colors.white), onPressed: () {}),
              ],
              bnbHeight: 80 // Suggested Height 80
          ),
          child: Container(
            color: Colors.blueGrey[100],
            child: Center(child: Text("Just a Simple UI !"),),
          ),
        ),
      ),
    );
  }
}