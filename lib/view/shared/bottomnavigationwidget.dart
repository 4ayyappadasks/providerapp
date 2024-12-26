import 'package:flutter/material.dart';

import 'colors.dart';

class Bottomnavigationwidget extends StatelessWidget {
  const Bottomnavigationwidget({
    super.key,
    required this.tapfun,
    required this.icon,
    this.isSelected = false,
  });

  final VoidCallback tapfun;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapfun,
      child: Icon(
        icon,
        color: AppColors.white,
        size: isSelected ? 30.0 : 24.0, // Increase size if selected
      ),
    );
  }
}
