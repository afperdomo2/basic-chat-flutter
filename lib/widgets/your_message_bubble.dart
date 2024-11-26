import 'package:flutter/material.dart';
import 'package:yes_no_app/models/message.dart';

class YourMessageBubble extends StatelessWidget {
  const YourMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 5),
      if (message.imageUrl != null) _ImageBubble(message.imageUrl ?? ''),
      const SizedBox(height: 5),
    ]);
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            color: Colors.grey[300],
            child: const _LoadingImage(),
          );
        },
      ),
    );
  }
}

class _LoadingImage extends StatelessWidget {
  const _LoadingImage();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
