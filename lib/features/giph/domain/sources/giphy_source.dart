import '../models/gif_model.dart';

abstract interface class GiphySource {
  Stream<List<GifModel>> getGiphs({
    String? searchText,
    int? offset,
    int? limit,
  });
}
