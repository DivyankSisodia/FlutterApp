import 'package:flutter/material.dart';


class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
List<String> Anime = ['vagabond' , 'Berserk' , 'Vinland Saga', 'Attack on titan', 'love'];

Map Anime_char = {
  'Name' : ['vagabond' , 'Berserk' , 'Vinland Saga', 'Attack on titan', 'love'],
  'MC' : ['mitsushi' , 'Guts' , 'Thorfin', 'eren', 'mikasa']
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and grid'),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 8,
      ),
      // body: ListView.builder(
      //   itemCount: Anime.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: Icon(Icons.person_pin),
      //         title: Text(Anime_char['Name'][index]),
      //         subtitle: Text(Anime_char['Name'][index]),
      //       ),
      //     );
      //   },
      // ),

      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        // mainAxisExtent: 200,
        ),
        itemCount: Anime.length,
        itemBuilder: (context, index) {
          return Card(
            child: 
              Center(child: Text(Anime_char['Name'][index])),
          );
        },
      ),
    );
  }
}