// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiPage extends StatefulWidget {
  const ConfettiPage({Key? key}) : super(key: key);

  @override
  State<ConfettiPage> createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {

  final _controller = ConfettiController();
  bool isplaying = false;
  @override

  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            leading: Icon(Icons.webhook_sharp),
            centerTitle:true,
            title: Text('Let\'s Have a fun'),
            toolbarHeight: 80,
          ),

          body: Center(child: MaterialButton(
            onPressed: (){
              if(isplaying){
                _controller.stop();
              }else{
                _controller.play();
              }
              isplaying = !isplaying;
            },
              child: Text('Let\'s Enjoy', style: TextStyle(color: Colors.white),),
              color: Colors.green[900]
            ),),
        ),
        ConfettiWidget(
          confettiController: _controller,
          blastDirectionality: BlastDirectionality.explosive,
          colors: [
            Colors.yellow,
            Colors.deepPurple,
          ],

        ),
      ],

    );
  }
}
