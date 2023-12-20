import 'package:giphy_app/core/config/giphy_api.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/sources/giphy_source.dart';

class GiphyRemoteSource with GiphyApi implements GiphySource {
  @override
  Stream<List<GifModel>> getGiphs({
    String? searchText,
  }) async* {
    // yield* http.get('/v1/gifs/trending')`
  }
}
