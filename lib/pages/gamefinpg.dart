import 'package:flutter/material.dart';
import 'globalboolean.dart';
import 'package:scavenger_hunt/main.dart';

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
                    Text(
                      'GAME FINISHED',
                      style: TextStyle(
                        color: GlobalState().isBagelOrdered == true
                            ? const Color.fromARGB(255, 255, 0, 0)
                            : const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Resetting all global booleans to restart the game
                        GlobalState().isBagelOrdered = false;
                        GlobalState().basf = false;
                        GlobalState().donorwall = false;
                        GlobalState().spinnychair = false;
                        GlobalState().staircase = false;
                        GlobalState().centerofeng = false;
                        GlobalState().longHallway = false;
                        GlobalState().numChairs = false;

                        // Navigate back to the starting page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        "WOULD YOU LIKE TO PLAY AGAIN?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
