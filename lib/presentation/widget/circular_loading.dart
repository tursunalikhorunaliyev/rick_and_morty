import 'package:flutter/material.dart';

class CircularLoading extends StatelessWidget {
  final double scale;
  final Color color;

  const CircularLoading({super.key, this.scale = 0.8, this.color = Colors.purple});

  @override
  Widget build(BuildContext context) {
    return Center(child: Transform.scale(scale: scale, child: CircularProgressIndicator(color: color, strokeWidth: 2)));
  }
}
