import 'package:flutter/material.dart';

const elevation = 5.0;
final boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(6.0),
  color: Colors.grey.shade50,
  shape: BoxShape.rectangle,
  boxShadow: [
    BoxShadow(
        color: Colors.grey.shade300,
        spreadRadius: 0.0,
        blurRadius: elevation,
        offset: const Offset(3.0, 3.0)),
    BoxShadow(
        color: Colors.grey.shade400,
        spreadRadius: 0.0,
        blurRadius: elevation / 2.0,
        offset: const Offset(3.0, 3.0)),
    const BoxShadow(
        color: Colors.white,
        spreadRadius: 2.0,
        blurRadius: elevation,
        offset: Offset(-3.0, -3.0)),
    const BoxShadow(
        color: Colors.white,
        spreadRadius: 2.0,
        blurRadius: elevation / 2,
        offset: Offset(-3.0, -3.0)),
  ],
);
