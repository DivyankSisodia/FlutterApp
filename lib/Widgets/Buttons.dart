import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Koniichiwa')
      ),
       body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            
            style: ButtonStyle(

              padding: MaterialStateProperty.all(EdgeInsets.all(30)),
              overlayColor: MaterialStateProperty.all(Colors.black12),
               elevation: MaterialStateProperty.all(10),
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
            child: const Text(
              'Press me',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {},
          ),

          const SizedBox(
            height: 100,
          ),

          Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
              ),
              onPressed: (){
              print('Love');
              },
              child: const Text(
                'Press me',
                style: TextStyle(fontSize: 20, color:  Colors.cyanAccent),
              ),
            ),
          )
        ])
      )
    );
  }
}