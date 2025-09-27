import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final bgColor = const [
    Color(0xFFEF9A9A), // soft red
    Color(0xFF90CAF9), // soft blue
    Color(0xFFA5D6A7), // mint green
    Color(0xFFFFF59D), // pastel yellow
    Color(0xFFFFCC80), // warm orange
    Color(0xFFCE93D8), // lavender purple
    Color(0xFF80CBC4), // teal pastel
    Color(0xFFFFAB91), // peach
    Color(0xFFB39DDB), // soft indigo
    Color(0xFFC5E1A5), // lime green
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        itemCount: bgColor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: NotesItem(bgColor: bgColor[index]),
          );
        },
      ),
    );
  }
}
