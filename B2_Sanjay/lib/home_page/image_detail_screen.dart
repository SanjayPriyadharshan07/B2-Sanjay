
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;

  const ImageDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detail'), 
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl, 
          placeholder: (context, url) => const CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
          ), 
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: Colors.red,
          ),
          fit: BoxFit.cover, 
          memCacheHeight: 330,
          memCacheWidth: 330, 
        ),
      ),
    );
  }
}
