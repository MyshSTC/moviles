import 'package:flutter/material.dart';
import './widgets/customcard.dart';

void main() => runApp(MyApp());


//la bara en general con 3 iconos
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          title: const Text(
            ' PetWorld',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.tune, color: Colors.white)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Color.fromARGB(255, 255, 145, 1))),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white)),
          ],
        ),

        //el explore categorities
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const Center(
                child: Column(
                  children: [
                    Icon(Icons.pets, size: 36, color: Colors.brown),
                    SizedBox(height: 4),
                    Text(
                      'Explore Categories',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    Text(
                      'Encuentra tu compañero ideal ',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),


              //primer container mascota destacada xd

              const SizedBox(height: 16),


              Container(height: 3, color: Colors.black),
              const SizedBox(height: 8),
              const Text(
                ' Mascota Destacada',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

//carta de la mascota 
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.pets, size: 40, color: Colors.orange),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Max',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Golden Retriever • 3 años',
                                style: TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Juguetón, amigable y leal. Le encanta correr en el parque y jugar con niños. Vacunado y desparasitado.',
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                      const SizedBox(height: 8),
                      //boton de adoptar
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite, size: 16),
                          label: const Text('Adoptar'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 //otras categorias
              const SizedBox(height: 16),

              Container(height: 3, color: Colors.black),
              const SizedBox(height: 8),
              const Text(
                ' Explora por categoría',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),


              CustomCard(
                title: 'Perros',
                subtitle: 'Fieles compañeros para toda la vida',
                icono: Icons.pets,
                color: Colors.orange,
              ),
              CustomCard(
                title: 'Gatos',
                subtitle: 'Independientes y llenos de personalidad',
                icono: Icons.catching_pokemon,
                color: Colors.purple,
              ),
              CustomCard(
                title: 'Aves',
                subtitle: 'Coloridas y llenas de melodía',
                icono: Icons.flutter_dash,
                color: Colors.blue,
              ),
            ],
          ),
        ),

        //la barra de navegacion con 4 iconos
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Colors.orange,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ajustes',
            ),
          ],
        ),
      ),
    );
  }
}