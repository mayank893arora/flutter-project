import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  late AssetImage diceimage;
  late AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = two;
    });
  }

  void rollDice() {
    int rnd = 1 + Random().nextInt(6);
    int rnd2 = 1 + Random().nextInt(6);

    AssetImage newImage;
    AssetImage newImage2;

    switch (rnd) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
        newImage = one;
    }

    switch (rnd2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
      default:
        newImage2 = one;
    }

    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice ROller')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: diceimage, width: 200.0, height: 200.0),
              Image(image: diceimage2, width: 200.0, height: 200.0),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: rollDice,
                  child: Text('change dice number'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
