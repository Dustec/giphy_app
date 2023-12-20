import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:shimmer/shimmer.dart';

class GifCard extends StatelessWidget {
  const GifCard(
    this.gif, {
    Key? key,
  }) : super(key: key);

  final GifModel gif;

  @override
  Widget build(BuildContext context) {
    final double height = ((gif.images?.downsized?.height) ?? 0) / 2;
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: CachedNetworkImage(
        imageUrl: gif.images?.downsized?.url ?? '',
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[400]!,
          highlightColor: Colors.grey[500]!,
          child: Container(
            color: Colors.white,
            height: height,
          ),
        ),
      ),
    );
  }
}
