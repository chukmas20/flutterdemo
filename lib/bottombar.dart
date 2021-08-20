import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  static ValueNotifier <String> enteredValue = ValueNotifier('');
  @override
  Widget build(BuildContext context){
    return Container(
      height: 200,
      child: Column(
        children: [
          Text(
            "View Form Data below",style: TextStyle(
            color:Colors.purple,
            fontSize: 24,
          ),
          ),
          SizedBox(height: 5,),
          ValueListenableBuilder(
            valueListenable: enteredValue,
            builder: (BuildContext context, String newValue, Widget?  child){
              return Text(
                newValue,
                style: TextStyle(fontSize: 24),
              );
            },
          ),
        ],
      ),
    );
  }
}
