import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AppTextstyle(text: "this is profilescreen"),),
    );
  }
}
