import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoScreen extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio('assets/sounds/note$soundNumber.wav'),
    );
  }
 Expanded buildKey(Color color, Color iconColor,int soundNumber){
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary:color,
            // Colors.black
        ),


        onPressed: (){playSound(soundNumber);},

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.music_note,
              color: iconColor,


            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           buildKey( Colors.black,Colors.white,1),
           buildKey(Colors.white,Colors.black,2),
           buildKey(Colors.black,Colors.white,3),
           buildKey(Colors.white,Colors.black,4),
           buildKey(Colors.black,Colors.white,5),
           buildKey(Colors.white,Colors.black,6),
           buildKey(Colors.black,Colors.white,7),



      ],
    ),
        )


        );
  }
}
