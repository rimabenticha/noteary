import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/contenu/presentation/views/widgets/contenu_app_bar.dart';

class ContenuScreenBody extends StatelessWidget {
  const ContenuScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomScrollView(slivers: [ContenuAppBar()]),
      ],
    );
  }
}
