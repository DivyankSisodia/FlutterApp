import 'package:flutter/material.dart';

class  ContainerSized extends StatelessWidget {
  const ContainerSized ({super.key});

  @override
  Widget build(BuildContext context) {
    var height2 = 50;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Container and sizedbox"),
      ),

      body:Center(
        child: Container(
            
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20),
              ),
              color: Colors.cyan,
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 5,
                  color: Colors.white10, 
                )
              ]
            ),
            child:  Center(
              // child: Text("hello", style: TextStyle(fontSize: 10)),
                  child: Container(color: Colors.red,margin: EdgeInsets.all(10),),
                  
              ),
          ),
      ),

    );
  }
}