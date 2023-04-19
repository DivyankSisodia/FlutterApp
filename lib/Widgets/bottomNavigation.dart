// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tuts/Widgets/Snackbar.dart';

import 'Dismissible.dart';
import 'ModalBottom.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override

int selectIndex = 0;

PageController pagePatroling = PageController();

// List<Widget> widgets = [
//   Text("Home"),
//   Text("User"),
//   Text("Add"),
// ];

void onTapping(int index){
  setState(() {
    selectIndex = index;
  });
  pagePatroling.jumpToPage(index);
}

  Widget build(BuildContext context) {
    return Scaffold(
      

      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Bottom Nav'),
      // ),

      body: PageView(
        controller: pagePatroling,
        children: [
          BottomSheetWidget(),
          SnackbarWidget(),
          DismissibleWidget(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervised_user_circle,
          ),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: 'Add',
        ),
      ],
      currentIndex: selectIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onTapping,
      ),
    );
  }
}