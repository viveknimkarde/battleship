import 'package:battleship/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ControllPanel extends StatelessWidget {
  const ControllPanel({
    Key? key,
    required this.bombLocationController,
  }) : super(key: key);

  final TextEditingController bombLocationController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 300,
            child: TextField(
              controller: bombLocationController,
              decoration: const InputDecoration(
                labelText: "Please enter the location to bomb",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(),
              ),
            )),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            context
                .read(battleFieldController.notifier)
                .bomb(bombLocationController.text);
          },
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Bomb",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
