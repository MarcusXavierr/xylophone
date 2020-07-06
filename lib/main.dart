import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    ),
  );
}

class Xylophone extends StatelessWidget {
  final player = AudioCache();

  void _sound(int number) {
    player.play('note$number.wav');
  }

  Widget _buildKey(int soundNumber, Color colors) {
    return Expanded(
      child: RaisedButton(
        color: colors,
        onPressed: () => _sound(soundNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKey(1, Colors.red),
            _buildKey(2, Colors.orange),
            _buildKey(3, Colors.yellow),
            _buildKey(4, Colors.green),
            _buildKey(5, Colors.teal),
            _buildKey(6, Colors.blue),
            _buildKey(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}
