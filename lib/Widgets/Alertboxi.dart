import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Box'),
      ),

      body: Center(
        child: ElevatedButton(child: const Text('Alert Alert'),
        onPressed: () {
          showDialogue(context);
        },),
      ),
    );
  }
}

Future<void> showDialogue(BuildContext context) async{
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        scrollable: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('this is an alert'),
        content: SingleChildScrollView(
          
          child: Column(
            children: const [
              
              Text('demo yikes'),Padding(padding: EdgeInsets.all(10)),
              Text('this is snow walker'),
              ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text('Approve')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
        ],
      );
    }
  );
}