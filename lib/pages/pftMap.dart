import 'package:flutter/material.dart';
import 'package:scavenger_hunt/pages/basf.dart';
import 'package:scavenger_hunt/pages/centerofEng.dart';
import 'package:scavenger_hunt/pages/chairroom.dart';
import 'package:scavenger_hunt/pages/commonArea.dart';
import 'package:scavenger_hunt/pages/donorwall.dart';
import 'package:scavenger_hunt/pages/panera.dart';
import 'package:scavenger_hunt/pages/rightHallway.dart';
import 'package:scavenger_hunt/pages/stairarea.dart';

void main() {
  runApp(MaterialApp(home: MapPage()));
}

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Building Map")),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20),
          minScale: 0.5,
          maxScale: 3.0,
          child: Stack(
            children: [
              Image.asset("assets/map.png"),
              _buildHotspot(context, Panera(), "Panera", 440, 225),
              _buildHotspot(context, basf(), "BASF Lab", 545, 550),
              _buildHotspot(context, Stairarea(), "Atrium Stairs", 810, 255),
              _buildHotspot(context, centerofEng(), "Engineering Center", 980, 290),
              _buildHotspot(context, commonArea(), "Commmons", 560, 250),
              _buildHotspot(context, RightHallway(), "Hallway", 500, 400),
              _buildHotspot(context, donorwall(), "Donor Wall", 985, 500),        
              _buildHotspot(context, chairroom(), "Chair Room", 300, 275)      
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHotspot(BuildContext context, Widget page, String text, left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Container(
          //size
          width: 80, 
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              text, 
              style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              )
            ),
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  final String imageName;

  const ImagePage(this.imageName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(imageName)),
      body: Center(
        child: Image.asset("assets/$imageName.png"), // Ensure images are in assets folder
      ),
    );
  }
}
