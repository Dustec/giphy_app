// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GifDto _$GifDtoFromJson(Map<String, dynamic> json) => GifDto(
      id: json['id'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
      bitlyUrl: json['bitly_url'] as String?,
      bitlyGifUrl: json['bitly_gif_url'] as String?,
      embedUrl: json['embed_url'] as String?,
      username: json['username'] as String?,
      source: json['source'] as String?,
      rating: json['rating'] as String?,
      contentUrl: json['content_url'] as String?,
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      sourceTId: json['source_tld'] as String?,
      sourcePostUrl: json['source_post_url'] as String?,
      updateDateTime: json['update_datetime'] == null
          ? null
          : DateTime.parse(json['update_datetime'] as String),
      createDateTime: json['create_datetime'] == null
          ? null
          : DateTime.parse(json['create_datetime'] as String),
      importDateTime: json['import_datetime'] == null
          ? null
          : DateTime.parse(json['import_datetime'] as String),
      trendingDateTime: json['trending_datetime'] == null
          ? null
          : DateTime.parse(json['trending_datetime'] as String),
      images: json['images'] == null
          ? null
          : ImagesDto.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String?,
      altText: json['alt_text'] as String?,
    );

Map<String, dynamic> _$GifDtoToJson(GifDto instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'slug': instance.slug,
      'url': instance.url,
      'bitly_url': instance.bitlyUrl,
      'bitly_gif_url': instance.bitlyGifUrl,
      'embed_url': instance.embedUrl,
      'username': instance.username,
      'source': instance.source,
      'rating': instance.rating,
      'content_url': instance.contentUrl,
      'user': instance.user,
      'source_tld': instance.sourceTId,
      'source_post_url': instance.sourcePostUrl,
      'update_datetime': instance.updateDateTime?.toIso8601String(),
      'create_datetime': instance.createDateTime?.toIso8601String(),
      'import_datetime': instance.importDateTime?.toIso8601String(),
      'trending_datetime': instance.trendingDateTime?.toIso8601String(),
      'images': instance.images,
      'title': instance.title,
      'alt_text': instance.altText,
    };
