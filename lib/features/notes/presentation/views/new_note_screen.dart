import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/notes/presentation/views/widgets/new_note_screen_body.dart';

class NewNoteScreen extends StatelessWidget {
  const NewNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Note')),
      body: const NewNoteScreenBody(),
    );
  }
}
