import 'package:flutter/material.dart';
import 'globalboolean.dart';
class Checklist extends StatelessWidget {
  const Checklist({super.key});

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
                  Text('ORDER BAGEL', style: TextStyle(color: GlobalState().isBagelOrdered ? Color.fromARGB(255, 255, 0, 0) : const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Find the royal throne', style: TextStyle(color:  GlobalState().spinnychair ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Figure out the sponser of the Sustainable living lab', style: TextStyle(color:  GlobalState().basf ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Something about one of the donors on the donor wall', style: TextStyle(color:  GlobalState().donorwall ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Find the flier on the wall', style: TextStyle(color:  GlobalState().numChairs ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Something about big stairs', style: TextStyle(color:  GlobalState().staircase ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
                  SizedBox(height: 20),
                  Text('Something about center of engineering', style: TextStyle(color:  GlobalState().centerofeng ? Color.fromARGB(255, 255, 0, 0): const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
          

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
