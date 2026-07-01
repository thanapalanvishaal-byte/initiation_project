import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import '../models/player_class_model.dart';

class OnboardingProvider extends ChangeNotifier {
  String hunterName = '';
  PlayerClass? selectedClass;
  String? playerId;

  void setHunterName(String name) {
    hunterName = name;
    notifyListeners();
  }

  void selectClass(PlayerClass playerClass) {
    selectedClass = playerClass;
    notifyListeners();
  }

  Future<void> completeOnboarding() async {
    playerId = const Uuid().v4();
    final box = await Hive.openBox('playerBox');
    await box.put('playerId', playerId);
    await box.put('hunterName', hunterName);
    await box.put('selectedClass', selectedClass?.id);
    await box.put('onboardingComplete', true);
    notifyListeners();
  }
}