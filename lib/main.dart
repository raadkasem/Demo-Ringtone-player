import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {

  void playMusic(int musicNumber){
      final player = AudioCache();
      player.play('music-$musicNumber.mp3');
    }

  @override
  Widget build(BuildContext context) {

    Expanded myButton(int musicNumber,Color buttonColor, String buttonText){
      return Expanded(
              // ignore: deprecated_member_use
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    playMusic(musicNumber);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.music_note,
                        color: buttonColor,),
                        SizedBox(width: 20.0,),
                        Text(
                          '$buttonText',
                          style: TextStyle(
                            fontSize: 20,
                            color: buttonColor
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );

    }
    

    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('My Ringtones'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            
          myButton(7,Colors.red,'iPhone Tones'),
          
          myButton(6,Colors.blue,'Samsung Tones'),
          
          myButton(1,Colors.green,'Xiaomi Tones'),
          
          myButton(2,Colors.orange,'Huawei Tones'),
          
          myButton(3,Colors.pink,'Oppo Tones'),
          
          myButton(4,Colors.black,'Sony Tones'),
          
          myButton(5,Colors.purple,'Vivo Tones'),

          ],
        ),
      ),
    );
  }
}
