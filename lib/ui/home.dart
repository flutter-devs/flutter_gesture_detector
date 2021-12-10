import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {

  @override
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  Color color = Colors.teal;
  Text text = Text("Hello! it's Teal Color",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text('Gesture Detector Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
           setState(() {
             color = Colors.amber;
             text = Text("Hello! it's Amber Color",
               style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold
               ),);
           });
          },

          onDoubleTap: (){
            setState(() {
              color = Colors.blueAccent;
              text = Text("Hello! it's Blue Color",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),);
            });
          },

          onLongPress: (){
            setState(() {
              color = Colors.deepOrangeAccent;
              text = Text("Hello! it's Orange Color",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),);
            });
          },

          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20)
            ),
            width: 250,
            height: 200,
              child: Center(
                  child: text,
              )),
        ),
      ),
    );
  }
}


