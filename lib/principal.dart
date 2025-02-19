import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Principal', style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white))),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xff15181e),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/diputacion.png', fit: BoxFit.cover
                  ),
                SizedBox(height: 5),
                Text(
                  'Actividad subvencionada por la Diputación de Jaén', 
                  style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ),
          Expanded(
            child: Container(
            color: const Color(0xff15181e),
            ),
          ),
        ],
      ),
    );
  }
} 