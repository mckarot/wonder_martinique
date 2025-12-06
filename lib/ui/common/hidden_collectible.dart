import 'package:flutter/material.dart';
import 'package:wonders/logic/data/wonder_type.dart';

class HiddenCollectible extends StatelessWidget {
  const HiddenCollectible(this.type, {super.key, required this.index, required this.size, this.focus});

  final WonderType type;
  final int index;
  final double size;
  final FocusNode? focus;

  @override
  Widget build(BuildContext context) {
    // This is a placeholder implementation.
    // In a real app, this would display the collectible if found,
    // or some kind of interactive element to find it.
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Text(
          'Collectible $index',
          style: TextStyle(fontSize: size * 0.2, color: Colors.blueGrey),
        ),
      ),
    );
  }
}