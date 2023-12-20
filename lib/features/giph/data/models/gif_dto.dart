import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_app/features/giph/data/models/images_dto.dart';
import 'package:giphy_app/features/giph/data/models/user_dto.dart';

part 'gif_dto.g.dart';

@JsonSerializable()
class GifDto {
  const GifDto({
    required this.id,
    required this.type,
    required this.slug,
    required this.url,
    required this.bitlyUrl,
    required this.bitlyGifUrl,
    required this.embedUrl,
    required this.username,
    required this.source,
    required this.rating,
    required this.contentUrl,
    required this.user,
    required this.sourceTId,
    required this.sourcePostUrl,
    required this.updateDateTime,
    required this.createDateTime,
    required this.importDateTime,
    required this.trendingDateTime,
    required this.images,
    required this.title,
    required this.altText,
  });

  final String? id;
  final String? type;
  final String? slug;
  final String? url;
  @JsonKey(name: 'bitly_url')
  final String? bitlyUrl;
  @JsonKey(name: 'bitly_gif_url')
  final String? bitlyGifUrl;
  @JsonKey(name: 'embed_url')
  final String? embedUrl;
  final String? username;
  final String? source;
  final String? rating;
  @JsonKey(name: 'content_url')
  final String? contentUrl;
  final UserDto? user;
  @JsonKey(name: 'source_tld')
  final String? sourceTId;
  @JsonKey(name: 'source_post_url')
  final String? sourcePostUrl;
  @JsonKey(name: 'update_datetime')
  final DateTime? updateDateTime;
  @JsonKey(name: 'create_datetime')
  final DateTime? createDateTime;
  @JsonKey(name: 'import_datetime')
  final DateTime? importDateTime;
  @JsonKey(name: 'trending_datetime')
  final DateTime? trendingDateTime;
  final ImagesDto? images;
  final String? title;
  @JsonKey(name: 'alt_text')
  final String? altText;

  factory GifDto.fromJson(Map<String, dynamic> json) => _$GifDtoFromJson(json);
}
