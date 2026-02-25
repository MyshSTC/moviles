import 'package:flutter/material.dart';
import './widgets/customcard.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    
    


    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Text('AppBar Demo'),
        ),
        body: const Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                title: 'Card Title',
                subtitle: 'Card Subtitle',
                icono: Icons.star,
                
              ),
              CustomCard(
                title: 'Card Title',
                subtitle: 'Card Subtitle',
                icono: Icons.star,
                
              ),
              CustomCard(
                title: 'Card Title',
                subtitle: 'Card Subtitle',
                icono: Icons.star,
                
              ),
              CustomCard(
                title: 'Card Title',
                subtitle: 'Card Subtitle',
                icono: Icons.star,
                
              ),
            ],        
           
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


