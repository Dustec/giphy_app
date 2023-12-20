import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../giph/domain/models/gif_model.dart';
import 'gif_card.dart';

class GifGrid extends StatelessWidget {
  const GifGrid(this.gifs, {Key? key}) : super(key: key);

  final List<GifModel> gifs;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: gifs.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GifCard(gifs[index]);
      },
    );
  }
}
