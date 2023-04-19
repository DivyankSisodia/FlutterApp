import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: ListView(
            children: [
              DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Row(children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg')),
                    SizedBox(width: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Divyank Sisodia',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Flutter'),
                        ])
                  ]),
                ),
              ),
            ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              const ListTile(
                leading: Icon(Icons.message),
                title: Text('My Messages'),
              ),
              const ListTile(
                leading: Icon(Icons.supervised_user_circle),
                title: Text('My Personal'),
              ),
              const ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text('My Mail'),
              ),
              const ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('My Balance'),
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('My Shares'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('LogOut'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: const Text('Drawer Tut'),),

      body: Container(
        child: const Center(
          child: Text('hey there')),
      ),
    );
  }
}