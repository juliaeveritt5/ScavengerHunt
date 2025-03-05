import 'package:flutter/material.dart';

class GlobalState {
  static final GlobalState _instance = GlobalState._internal();

  bool isBagelOrdered = false; 
  bool basf = false; 
  bool donorwall = false; 
  bool spinnychair = false; 
  bool staircase = false; 
  bool centerofeng = false; 
  bool longHallway = false; 

  factory GlobalState() {
    return _instance;
  }

  GlobalState._internal();
}