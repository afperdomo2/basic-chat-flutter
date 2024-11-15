import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          child: Text(
            'Hello again Salem!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 5),
    ]);
  }
}
