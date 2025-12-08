import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/notes/presentation/views/widgets/note_content_screen_body.dart';

class NoteContentScreen extends StatelessWidget {
  const NoteContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ad Content', style: TextStyle(fontSize: 26)),
      ),
      body: const NoteContentScreenBody(),
    );
  }
}
