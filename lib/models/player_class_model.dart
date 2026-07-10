import 'package:flutter/material.dart';

class PlayerClass {
  final String id;
  final String name;
  final String description;
  final String focus;
  final String ability;
  final String iconPath;
  final bool iconIsSelfContained;
  final Color color;

  const PlayerClass({
    required this.id,
    required this.name,
    required this.description,
    required this.focus,
    required this.ability,
    required this.iconPath,
    this.iconIsSelfContained = false,
    required this.color,
  });

  static const List<PlayerClass> all = [
    PlayerClass(
      id: 'fighter',
      name: 'Fighter',
      description: 'Masters of close combat and physical prowess',
      focus: 'Focus: Strength & Vitality',
      ability: 'Direct confrontation, high damage output',
      iconPath: 'assets/icons/sword.svg',
      iconIsSelfContained: true,
      color: Color(0xFFFF5A36),
    ),
    PlayerClass(
      id: 'assassin',
      name: 'Assassin',
      description: 'Swift and deadly, striking from the shadows',
      focus: 'Focus: Agility & Precision',
      ability: 'Speed-based attacks, critical strikes',
      iconPath: 'assets/icons/circle.svg',
      color: Color(0xFFD946EF),
    ),
    PlayerClass(
      id: 'mage',
      name: 'Mage',
      description: 'Wielders of arcane power and devastating spells',
      focus: 'Focus: Intelligence & Mana',
      ability: 'Ranged magic attacks, crowd control',
      iconPath: 'assets/icons/lighting_bolt_02.svg',
      color: Color(0xFF3B82F6),
    ),
    PlayerClass(
      id: 'tank',
      name: 'Tank',
      description: 'Immovable defenders who protect allies',
      focus: 'Focus: Defense & Endurance',
      ability: 'Damage absorption, team protection',
      iconPath: 'assets/icons/shield.svg',
      color: Color(0xFF10B981),
    ),
    PlayerClass(
      id: 'strategist',
      name: 'Strategist',
      description: 'Tactical geniuses who outthink their opponents',
      focus: 'Focus: Intelligence & Perception',
      ability: 'Buff allies, debuff enemies, analyze weaknesses',
      iconPath: 'assets/icons/brain.svg',
      color: Color(0xFFF59E0B),
    ),
  ];
}