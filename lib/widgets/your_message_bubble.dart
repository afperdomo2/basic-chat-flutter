import 'package:flutter/material.dart';

class YourMessageBubble extends StatelessWidget {
  const YourMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          child: Text(
            'Consectetur anim pariatur ipsum anim laborum deserunt irure in duis sit anim do. Dolor deserunt commodo ipsum reprehenderit fugiat. Voluptate cupidatat eu occaecat amet eiusmod labore. Do nisi magna commodo proident et dolore in commodo.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 5),
      const _ImageBubble(),
      const SizedBox(height: 5),
    ]);
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://yesno.wtf/assets/yes/12-e4f57c8f172c51fdd983c2837349f853.gif",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
