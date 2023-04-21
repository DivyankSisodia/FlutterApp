// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetsList extends StatefulWidget {
  const PetsList({super.key});

  @override
  State<PetsList> createState() => _PetsListState();
}

class _PetsListState extends State<PetsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Information'),),

      body: Container(
        margin: const EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('School').snapshots(),
          builder: (context, schoolSnapshot){
            if(schoolSnapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              final schDocs = schoolSnapshot.data!.docs;
              return ListView.builder(
                itemCount: schDocs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(schDocs[index]['name']),
                      subtitle: Text(schDocs[index]['G-15']),
                    ),
                  );
                },
              );
            }
          },
        )

      ),
    );
  }
}