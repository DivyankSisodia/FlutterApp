import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

create(String School, Class, StudentName, int RollNo, int Age) async{
  await FirebaseFirestore.instance.collection(School).doc(Class).set(
    {
      'Name' : StudentName,
      'Roll Number' : RollNo,
      'Age' : Age,
    }
  );
  print('DataBase Update');
}

update(String School, Class, field, var newFieldtext ) async{
  await FirebaseFirestore.instance.collection(School).doc(Class).set({
    field : newFieldtext,
  });
  print('Field updated');
}

delete(String School, String Class) async{
  await FirebaseFirestore.instance.collection(School).doc(Class).delete();
  print('Document Delete');
}