
import 'package:flutter/material.dart';
import 'package:freshapp/bottombar.dart';

class Myscreen extends StatelessWidget {
  TextEditingController  textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Text(
            "ENTER DATA HERE",
            style: TextStyle(color: Colors.blueGrey, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Enter Value",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed:(){
              BottomBar.enteredValue.value = textEditingController.text;
            },
            child: Text("Send data"),),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/hng.png",height: 60, fit: BoxFit.cover,),
                  Image.asset("assets/ingressive.png", height: 60, fit: BoxFit.cover,),
                  Image.asset("assets/zuri.png",height: 60, fit: BoxFit.cover,),
                ],
              ),
            ),
          ),
          Divider(),
          BottomBar(),
        ],
      ),
    );
  }
}
