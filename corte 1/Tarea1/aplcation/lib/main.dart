import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle = "Mi App Flutter";

    return MaterialApp(
      title: apptitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(apptitle),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen desde URL
              Image(
                image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.abl0GTIwyWQoVO4L6kF7KwHaEK?w=299&h=180&c=7&r=0&o=7&pid=1.7&rm=3",
                ),
              ),

              SizedBox(height: 16),

              // Fila con título, ícono y puntuación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Título Principal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text("Subtítulo descriptivo"),
                      ],
                    ),
                  ),
                  Icon(Icons.star, size: 50, color: Colors.redAccent),
                  Text(
                    "5",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Fila de íconos con etiquetas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.insert_comment_outlined,
                        size: 50,
                        color: Color.fromARGB(255, 251, 255, 0),
                      ),
                      Text("Comentar"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(
                        Icons.insert_comment_sharp,
                        size: 50,
                        color: Colors.blueAccent,
                      ),
                      Text("Responder"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(Icons.add, size: 50, color: Colors.redAccent),
                      Text("Agregar"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 24),

              // Texto final
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿Qué es una llamada de pájaros?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}