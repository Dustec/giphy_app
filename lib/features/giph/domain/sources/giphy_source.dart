import '../models/gif_model.dart';

abstract interface class GiphySource {
  Future<List<GifModel>> getGiphs({
    String? searchText,
  });
}
