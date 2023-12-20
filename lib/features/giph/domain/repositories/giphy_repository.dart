import 'package:giphy_app/features/giph/domain/models/gif_model.dart';

abstract interface class GiphyRepository {
  Stream<List<GifModel>> getGiphs({
    String? searchText,
  });
}
