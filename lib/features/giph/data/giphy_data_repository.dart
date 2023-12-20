import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/repositories/giphy_repository.dart';
import 'package:giphy_app/features/giph/domain/sources/giphy_source.dart';

class GiphDataRepository implements GiphyRepository {
  GiphDataRepository({
    required this.remoteSource,
  });
  final GiphySource remoteSource;

  @override
  Stream<List<GifModel>> getGiphs({
    String? searchText,
    int? offset,
    int? limit,
  }) async* {
    yield* remoteSource.getGiphs(
      searchText: searchText,
      offset: offset,
      limit: limit,
    );
  }
}
