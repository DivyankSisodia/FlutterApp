import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    // using media query
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      
      appBar: AppBar(title: Text('row and cols')),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blueGrey,
        child: Wrap(
          
          // direction: Axis.vertical,
          // alignment: WrapAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('hello kdsjkcvbbkjcvwekbcsjw'),
            Container(height: 50, width: 60,color: Colors.brown,),
            Container(height: 50, width: 60,color: Colors.green,),
            Container(height: 50, width: 60,color: Colors.orange,),
            Container(height: 50, width: 60,color: Colors.pink),
            Container(height: 50, width: 60,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}