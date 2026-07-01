import 'package:flutter/material.dart';

class PlayerClass {
  final String id;
  final String name;
  final String description;
  final String focus;
  final String ability;
  final IconData icon;
  final Color color;

  const PlayerClass({
    required this.id,
    required this.name,
    required this.description,
    required this.focus,
    required this.ability,
    required this.icon,
    required this.color,
  });

  static const List<PlayerClass> all = [
    PlayerClass(
      id: 'fighter',
      name: 'Fighter',
      description: 'Masters of close combat and physical prowess',
      focus: 'Focus: Strength & Vitality',
      ability: 'Direct confrontation, high damage output',
      icon: Icons.sports_martial_arts,
      color: Color(0xFFFF5A36),
    ),
    PlayerClass(
      id: 'assassin',
      name: 'Assassin',
      description: 'Swift and deadly, striking from the shadows',
      focus: 'Focus: Agility & Precision',
      ability: 'Speed-based attacks, critical strikes',
      icon: Icons.gps_fixed,
      color: Color(0xFFD946EF),
    ),
    PlayerClass(
      id: 'mage',
      name: 'Mage',
      description: 'Wielders of arcane power and devastating spells',
      focus: 'Focus: Intelligence & Mana',
      ability: 'Ranged magic attacks, crowd control',
      icon: Icons.bolt,
      color: Color(0xFF3B82F6),
    ),
    PlayerClass(
      id: 'tank',
      name: 'Tank',
      description: 'Immovable defenders who protect allies',
      focus: 'Focus: Defense & Endurance',
      ability: 'Damage absorption, team protection',
      icon: Icons.shield,
      color: Color(0xFF10B981),
    ),
    PlayerClass(
      id: 'strategist',
      name: 'Strategist',
      description: 'Tactical geniuses who outthink their opponents',
      focus: 'Focus: Intelligence & Perception',
      ability: 'Buff allies, debuff enemies, analyze weaknesses',
      icon: Icons.psychology,
      color: Color(0xFFF59E0B),
    ),
  ];
}