import 'package:flutter/material.dart';

enum ExpenseType {
  fuel(description: 'Abastecimento', icon: Icons.local_gas_station),
  repair(description: 'Manutenção', icon: Icons.car_repair),
  accessories(
      description: 'Peças e Acessórios', icon: Icons.sports_motorsports),
  cleaning(description: 'Limpeza', icon: Icons.local_car_wash);

  const ExpenseType({required this.description, required this.icon});

  final String description;
  final IconData icon;

}
