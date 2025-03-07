import 'package:flutter/material.dart';
import 'globalboolean.dart';
import 'gamefinpg.dart';
class gamefinpg extends StatelessWidget {
  const gamefinpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Checklist')),
      ),
        body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://media.istockphoto.com/id/185090197/photo/blank-scroll-isolated-on-white.jpg?s=612x612&w=0&k=20&c=sJNd5jws0maScPIxsgwlDyH_wqgpiLM16MvcD6kBoP4=',
            ),
            fit: BoxFit.cover, // Makes the image cover the whole screen
          ),
        ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [ 
                  Text('GAMEFINISHED', style: TextStyle(color: GlobalState().isBagelOrdered ? Color.fromARGB(255, 255, 0, 0) : const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),

                ],
              ),
            ),
          ],
        ),
      ),
        ),
    );

  }

}
