import 'package:flutter/material.dart';
import 'package:project_uas/utils/constants/sized.dart';

import '../../../utils/constants/colors.dart';

/// A circular loader widget with customizable foreground and background colors.
class BCircularLoader extends StatelessWidget {
  /// Default constructor for the TCircularLoader.
  ///
  /// Parameters:
  ///   - foregroundColor: The color of the circular loader.
  ///   - backgroundColor: The background color of the circular loader.
  const BCircularLoader({
    super.key,
    this.foregroundColor = BColors.white,
    this.backgroundColor = BColors.primary,
  });

  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(BSize.Lg),
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle), // Circular background
      child: Center(
        child: CircularProgressIndicator(color: foregroundColor, backgroundColor: Colors.transparent), // Circular loader
      ),
    );
  }
}