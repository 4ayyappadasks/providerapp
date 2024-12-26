import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AppTextstyle(text: "this is cartscreen"),),
    );
  }
}
