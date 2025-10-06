import 'package:flutter/material.dart';

void navigate(
    {required BuildContext context, required String route, dynamic arguments}) {
  Navigator.pushNamed(
    context,
    route,
    arguments: arguments,
  );
}
