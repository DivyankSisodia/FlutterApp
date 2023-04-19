import 'package:flutter/material.dart';

class cloneWidget extends StatefulWidget {
  const cloneWidget({super.key});

  @override
  State<cloneWidget> createState() => _cloneWidgetState();
}

class _cloneWidgetState extends State<cloneWidget> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: 500,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://th.bing.com/th/id/R.9069ae2c83237354d556ac82e37c8066?rik=wVvlGFIhBYX5bg&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f06%2fHD-images-of-nature-download.jpg&ehk=J7hY3CfwcsW7lTkuGbE3nQPUYPdt1OTluYfKHRW62qs%3d&risl=&pid=ImgRaw&r=0'))
                          ),
                          height: 450,
                        ),
                      ),
                      
                      const Positioned(
                        bottom: 0,
                        right: 20,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-3.jpg'),
                          radius: 50,
                        ),
                      )
                    ],
                  ),
                )
                )
              ],
            ),
            Container(
              
              // color: Colors.blue,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: const [
                  Text(
                    'Madrid city tour for Designer',
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('this is a random description of the topic',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: 'Canterbury'
                  ),)
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconAndText('20', Icons.favorite_rounded),
                  rowIconAndText('34', Icons.upload),
                  rowIconAndText('82', Icons.message),
                  rowIconAndText('295', Icons.face),
                ],
              ),
            ),
            const Divider(),

            Container(
              padding: const EdgeInsets.all(10),
              child: const Text('orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'Canterbury',
              ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconAndText(String text, IconData icon){
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }

}