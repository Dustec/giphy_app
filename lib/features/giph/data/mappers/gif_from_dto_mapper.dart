import 'package:giphy_app/core/domain/contracts/mapper.dart';
import 'package:giphy_app/features/giph/data/mappers/images_from_dto_mapper.dart';
import 'package:giphy_app/features/giph/data/mappers/user_from_dto_mapper.dart';
import 'package:giphy_app/features/giph/data/models/gif_dto.dart';
import 'package:giphy_app/features/giph/data/models/images_dto.dart';
import 'package:giphy_app/features/giph/data/models/user_dto.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/models/images_model.dart';
import 'package:giphy_app/features/giph/domain/models/user_model.dart';

class GifFromDtoMapper implements Mapper<GifDto, GifModel> {
  const GifFromDtoMapper({
    this.userMapper = const UserFromDtoMapper(),
    this.imagesMapper = const ImagesFromDtoMapper(),
  });

  final Mapper<UserDto, UserModel> userMapper;
  final Mapper<ImagesDto, ImagesModel> imagesMapper;

  @override
  GifModel map(GifDto t) {
    return GifModel(
      id: t.id ?? '',
      type: t.type ?? '',
      slug: t.slug ?? '',
      url: t.url ?? '',
      bitlyUrl: t.bitlyUrl ?? '',
      embedUrl: t.embedUrl ?? '',
      username: t.username ?? '',
      source: t.source ?? '',
      rating: t.rating ?? '',
      contentUrl: t.contentUrl ?? '',
      user: t.user != null ? userMapper.map(t.user!) : null,
      sourceTId: t.sourceTId ?? '',
      sourcePostUrl: t.sourcePostUrl ?? '',
      updateDateTime: t.updateDateTime ?? DateTime(0),
      createDateTime: t.createDateTime ?? DateTime(0),
      importDateTime: t.importDateTime ?? DateTime(0),
      trendingDateTime: t.trendingDateTime ?? DateTime(0),
      images: t.images != null ? imagesMapper.map(t.images!) : null,
      title: t.title ?? '',
      altText: t.altText ?? '',
    );
  }
}
