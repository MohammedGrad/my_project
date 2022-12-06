import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'new_box.dart';


class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            //Back Button and Menu Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: NewBox(child: Icon(Icons.arrow_back)),
                ),
                Text('P L A Y L I S T'),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: NewBox(child: Icon(Icons.menu)),
                ),
              ],
            ),

            const SizedBox(height: 25),
            //Cover Art, Artist Name, song Name
            NewBox(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                      child: Image.asset('lib/images/img1.jpg'),//
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                                'Maher Zain',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blueGrey[700]
                              ),

                            ),

                           const SizedBox(height: 10),

                            Text(
                                'Ramadan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red[300]
                              ),

                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
              ),

            const SizedBox(height: 30),
            
            
            //Start Time, shuffle Bottun, repeat button,end time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.share_outlined),
                Icon(Icons.add),
                Icon(Icons.library_music_outlined),
                Icon(
                  Icons.favorite_rounded,
                  color: Colors.redAccent,
                  size: 30,

                )
              ],
            ),

            const SizedBox(height: 40),


            //liner bar
            NewBox(
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.7,
                progressColor: Colors.red[300],
                barRadius: Radius.circular(4),
                backgroundColor: Colors.blueGrey[700],
              ),
            ),

            const SizedBox(height: 30),

            //previous song, pause play, Skip Next Song
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 2,right: 2),
                    child: NewBox(child: Icon(
                      Icons.shuffle_outlined,
                      size: 25,

                    )

                    ),
                  ),
                  ),


                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 1,right: 1),
                    child: NewBox(child: Icon(
                        Icons.skip_previous_rounded,
                      size: 25,

                    )),
                  ),
                  ),


                  Expanded(
                    flex: 2,
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: NewBox(child: Icon(
                        Icons.play_arrow_rounded,
                      size: 30,

                    )),
                  )
                  ),


                   Expanded(child: Padding(
                     padding: const EdgeInsets.only(left: 1,right: 1),
                     child: NewBox(child: Icon(
                        Icons.skip_next_rounded,
                        size: 25,

                      )),
                   ),
                    ),


                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 2,right: 2),
                    child: NewBox(child: Icon(
                      Icons.repeat_one_rounded,
                      size: 25,
                    )),
                  ),
                  ),

                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
