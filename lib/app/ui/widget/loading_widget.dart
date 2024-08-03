import 'package:flutter/material.dart';
import 'package:hw_app/app/core/colors/color_data.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorData.kColorPrimary,
      ),
    );
  }
}
