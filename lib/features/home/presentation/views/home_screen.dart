import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:flutter_application_1/features/notes/presentation/views/new_note_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: HomeScreenBody()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewNoteScreen()),
          );
        },
        child: const Icon(Icons.add, size: 36),
      ),
    );
  }
}
