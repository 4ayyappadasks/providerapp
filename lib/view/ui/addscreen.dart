import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class Addscreen extends StatelessWidget {
  const Addscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AppTextstyle(text: "this is addscreen"),),
    );
  }
}
