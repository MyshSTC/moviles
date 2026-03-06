import 'package:flutter/material.dart';
import 'package:parcial2/widgets/customcard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String apptitle = "";

    return MaterialApp(
      title: apptitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      //AppBarr
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(apptitle),
              const SizedBox(width: 12),
              IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Menú',
                onPressed: () {
                  // Aquí puedes abrir un Drawer o menú
                },
              ),
              
              Text( "pajaros culiaos"),
              const SizedBox(width: 20, height: 20),
              
              
              Expanded(
                  child: Center(
                    child: Text(
                      apptitle,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  tooltip: 'Notificaciones',
                  onPressed: () {
                    // Aquí puedes mostrar notificaciones
                  },
                ),
              ],
            ),
          ),
        
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "¿Qué es una llamada de pájaros?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              // Fila de íconos con etiquetas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color.fromARGB(255, 251, 255, 0),
                        child: Icon(
                          Icons.insert_comment_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Comentar"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.insert_comment_sharp,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Responder"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.redAccent,
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Agregar"),
                    ],
                  ),
                const SizedBox(width: 10),
                   Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color.fromARGB(255, 60, 255, 0),
                        child: Icon(
                          Icons.insert_comment_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Comentar"),
                    ],
                  ),
                  const SizedBox(width: 10),
                   Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color.fromARGB(255, 255, 136, 0),
                        child: Icon(
                          Icons.insert_comment_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Comentar"),
                    ],
                  ),
                ],
              ),


              SizedBox(height: 24),

              // Imagen desde URL
              Image(
                image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.abl0GTIwyWQoVO4L6kF7KwHaEK?w=299&h=180&c=7&r=0&o=7&pid=1.7&rm=3",
                ),
              ),

              SizedBox(height: 16),

           
              // Texto 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Los paseriformes (Passeriformes) son un diverso orden de aves que abarca más de la mitad de las especies de aves del mundo, con unas 140 familias y aproximadamente 6500 especies.[1]​ Los paseriformes se conocen comúnmente como pájaros y a veces aves cantoras o pájaros cantores. Los pájaros son el grupo de vertebrados terrestres más diversificado, con más de cinco mil setecientas especies identificadas,[2]​ . Esto es casi dos veces el número de especies del orden de mamíferos más abundante, es decir, los roedores (Rodentia). Contienen, además, ciento diez familias, ocupando el segundo puesto entre los vertebrados (tras los perciformes, que incluyen alrededor del 40 % de todos los peces).[3]​ Su éxito evolutivo se debe a diversas adaptaciones al medio, muy variadas y complejas, que comprenden desde su capacidad para posarse en los árboles, los usos de sus cantos, su inteligencia y la complejidad y diversidad de sus nidos.",
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),

              //Tarjetas
              const SizedBox(height: 16),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const CustomCard(
                      title: 'Card Title',
                      subtitle: 'Card Subtitle',
                      icono: Icons.star,
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Phone',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
            
          ],
          ),
      ),
    );
    
  }
  
  
}