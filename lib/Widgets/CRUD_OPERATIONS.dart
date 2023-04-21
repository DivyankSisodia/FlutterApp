import 'package:flutter/material.dart';
import 'package:tuts/functions/Database_options.dart';

import '../Pages/Schoolinfo.dart';

class CrudOp extends StatefulWidget {
  const CrudOp({super.key});

  @override
  State<CrudOp> createState() => _CrudOpState();
}

class _CrudOpState extends State<CrudOp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('create, read, update, delete'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                create('Chitkara', 'G-15', 'Dhruv', 2010991540, 20);
                create('Chitkara', 'G-11', 'Rdx', 2010991500, 21);
                create('Chitkara', 'G-13', 'Bomb', 2010991520, 20);
              }, child: const Text('Create')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => PetsList()));
              }, child: const Text('Read')),
              ElevatedButton(onPressed: (){
                update('Chitkara', 'G-15','Dhruv' , 'TNt');
              }, child: const Text('Update')),
              ElevatedButton(onPressed: (){
                delete('Chitkara', 'G-13');
              }, child: const Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}