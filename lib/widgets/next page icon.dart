import 'package:flutter/material.dart';

NextPageIconButton() {
  return Container(
    alignment: Alignment.bottomRight,
    height: 75,
    width: 85,
    padding: const EdgeInsets.only(right: 20, bottom: 15),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.5),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(100),
      ),
    ),
    child: const Icon(
      Icons.arrow_forward,
      size: 30,
      color: Colors.white,
    ),
  );
}
