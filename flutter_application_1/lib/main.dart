import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle="A";
    return MaterialApp(
      title: apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text (apptitle)),
          
        body:  const Center(
          child: Column(
            children:[
              Image( image: NetworkImage("https://th.bing.com/th/id/OIP.abl0GTIwyWQoVO4L6kF7KwHaEK?w=299&h=180&c=7&r=0&o=7&pid=1.7&rm=3"),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TITULO ARRIBA"),
                        Text("Subtítulo"),
                      ],
                    ),
                  ),
                  
                  Icon(Icons.star,size: 50, color: Colors.redAccent,),
                  Text("5"),
                ],
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.insert_comment_outlined, size: 50,color: Color.fromARGB(255, 251, 255, 0),),
                        Text("A"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.insert_comment_sharp, size: 50 , color: Colors.blueAccent,),
                        Text("B"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.add, size: 50, color: Colors.redAccent,),
                        Text("nose"),
                      ],
                    ),
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                  Text("¿Qué es una llamada de pajaros?")
                  
                ],)
                
                
              
            ],
          ),
        ),
      ),
    );
  }
}
