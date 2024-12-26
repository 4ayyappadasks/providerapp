import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AppTextstyle(text: "this is searchscreen"),),
    );
  }
}
