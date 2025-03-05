import 'package:flutter/material.dart';
import 'globalboolean.dart';
import 'rightHallway.dart';

class bagel extends StatelessWidget {
  const bagel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('bagel')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://marvel-b1-cdn.bc0a.com/f00000000290274/www.lsu.edu/eng/images/hero_images/supporthero.jpg',
            ),
            fit: BoxFit.cover, // Makes the image cover the whole screen
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(
                padding: const EdgeInsets.all(4.0),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Bagel recieved CHECKLIST UPDATED ',
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const rightHallway()),
              );
           GlobalState().isBagelOrdered = true;
        },
        child: const Icon(Icons.arrow_forward),
      ),
      
    );
  }
}
