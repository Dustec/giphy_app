import 'package:giphy_app/core/config/giphy_api.dart';
import 'package:giphy_app/core/domain/contracts/mapper.dart';
import 'package:giphy_app/core/domain/managers/http_manager.dart';
import 'package:giphy_app/features/giph/data/mappers/gif_from_dto_mapper.dart';
import 'package:giphy_app/features/giph/data/models/gif_dto.dart';
import 'package:giphy_app/features/giph/data/models/gif_request_dto.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/sources/giphy_source.dart';

class GiphyRemoteSource with GiphyApi implements GiphySource {
  GiphyRemoteSource({
    this.giphMapper = const GifFromDtoMapper(),
  });

  final Mapper<GifDto, GifModel> giphMapper;

  @override
  Stream<List<GifModel>> getGiphs({
    String? searchText,
    int? offset,
    int? limit,
  }) async* {
    yield* ((searchText ?? '').isEmpty
            ? http.get(
                Uri.https(baseUrl, '/v1/gifs/trending').toString(),
                queryParams: GifRequestQueriesDto(
                  offset: offset,
                  limit: limit,
                ).toJson(),
              )
            : http.get(Uri.https(baseUrl, '/v1/gifs/search').toString(),
                queryParams: GifRequestQueriesDto(
                  q: searchText,
                  offset: offset,
                  limit: limit,
                ).toJson()))
        .handle(mapper: (json) => GifRequestDto.fromJson(json))
        .map((dto) => dto.data?.map((e) => giphMapper.map(e)).toList() ?? []);
  }
}
