import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/notes/presentation/views/widgets/note_screen_body.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NoteScreenBody());
  }
}
