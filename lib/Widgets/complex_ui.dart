// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ComplexUi extends StatelessWidget {
  const ComplexUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.white,
        title: const Text('Wanda\'s',
        style: TextStyle(
          color: Colors.black,
          
          fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              // color: Colors.amber,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: 180,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-3.jpg'),
                          radius: 50,
                        ),
                        Text('Divyank',
                          style: TextStyle(color: Colors.black,
                          fontSize: 20),
                        ),
                        Text('Software Developer',
                          style: TextStyle(color: Colors.red,
                          fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                    // color: Colors.tealAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Container(
                          child: Row(
                            children: [
                              profileDetails('0', 'Posts'),
                              const SizedBox(
                                width: 20,
                              ),
                              profileDetails('125', 'followers'),
                              const SizedBox(
                                width: 20,
                              ),
                              profileDetails('130', 'following'),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded( 
                                
                                child: Container(
                                  height: 40,
                                  child: ElevatedButton(
                                    
                                    onPressed: (){},
                                    child: const Text('follow'),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        )
                                      )
                                    ),
                                ),
                               ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.arrow_downward_sharp,
                                color: Colors.blue,),
                                
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 125,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(7),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/mustang.jpg'),
                          fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      const Text('Hi !')
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.deepPurpleAccent,
            // ),
            Expanded(child: Container(
              // color: Colors.lightBlue,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  ),
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/r32.jpg',
                        ),
                        fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.brown[400],
                    ),
                    margin: const EdgeInsets.all(5),
                    height: 200,
                    width: 200,
                    
                  );
                }),
            ))
          ],
        ),
      ),
    );
  }
}

Widget profileDetails(String text1, String text2){
  return Column(
      children:[
        Text(text1,style: const TextStyle(fontSize: 20),),
        Text(text2,style: const TextStyle(fontSize: 14),),
       ],
  );
}