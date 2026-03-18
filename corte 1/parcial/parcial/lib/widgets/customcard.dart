import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icono;
  final Color? cardColor;
  final Color? iconColor;
  //final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icono,
    this.cardColor,
    this.iconColor,
   // required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        leading: Icon(icono, size: 40.0, color: iconColor ?? Theme.of(context).colorScheme.primary),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
          //subtitle: Text(subtitle),
          //trailing: const Icon(Icons.arrow_forward_ios),
      )
    );
 
  }
}