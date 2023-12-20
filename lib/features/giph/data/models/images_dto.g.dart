// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesDto _$ImagesDtoFromJson(Map<String, dynamic> json) => ImagesDto(
      original: json['original'] == null
          ? null
          : ImageDataDto.fromJson(json['original'] as Map<String, dynamic>),
      downsized: json['downsized'] == null
          ? null
          : ImageDataDto.fromJson(json['downsized'] as Map<String, dynamic>),
      downsizedLarge: json['downsized_large'] == null
          ? null
          : ImageDataDto.fromJson(
              json['downsized_large'] as Map<String, dynamic>),
      downsizedMedium: json['downsized_medium'] == null
          ? null
          : ImageDataDto.fromJson(
              json['downsized_medium'] as Map<String, dynamic>),
      downsizedSmall: json['downsized_small'] == null
          ? null
          : ImageDataDto.fromJson(
              json['downsized_small'] as Map<String, dynamic>),
      downsizedStill: json['downsized_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['downsized_still'] as Map<String, dynamic>),
      fixedHeight: json['fixed_height'] == null
          ? null
          : ImageDataDto.fromJson(json['fixed_height'] as Map<String, dynamic>),
      fixedHeightDownsampled: json['fixed_height_downsampled'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_height_downsampled'] as Map<String, dynamic>),
      fixedHeightSmall: json['fixed_height_small'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_height_small'] as Map<String, dynamic>),
      fixedHeightSmallStill: json['fixed_height_small_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_height_small_still'] as Map<String, dynamic>),
      fixedHeightStill: json['fixed_height_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_height_still'] as Map<String, dynamic>),
      fixedWidth: json['fixed_width'] == null
          ? null
          : ImageDataDto.fromJson(json['fixed_width'] as Map<String, dynamic>),
      fixedWidthDownsampled: json['fixed_width_downsampled'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_width_downsampled'] as Map<String, dynamic>),
      fixedWidthSmall: json['fixed_width_small'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_width_small'] as Map<String, dynamic>),
      fixedWidthSmallStill: json['fixed_width_small_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_width_small_still'] as Map<String, dynamic>),
      fixedWidthStill: json['fixed_width_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['fixed_width_still'] as Map<String, dynamic>),
      looping: json['looping'] == null
          ? null
          : ImageDataDto.fromJson(json['looping'] as Map<String, dynamic>),
      originalStill: json['original_still'] == null
          ? null
          : ImageDataDto.fromJson(
              json['original_still'] as Map<String, dynamic>),
      originalMp4: json['original_mp4'] == null
          ? null
          : ImageDataDto.fromJson(json['original_mp4'] as Map<String, dynamic>),
      preview: json['preview'] == null
          ? null
          : ImageDataDto.fromJson(json['preview'] as Map<String, dynamic>),
      previewGif: json['preview_gif'] == null
          ? null
          : ImageDataDto.fromJson(json['preview_gif'] as Map<String, dynamic>),
      previewWebp: json['preview_webp'] == null
          ? null
          : ImageDataDto.fromJson(json['preview_webp'] as Map<String, dynamic>),
      fourHundredEightyWStill: json['480w_still'] == null
          ? null
          : ImageDataDto.fromJson(json['480w_still'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesDtoToJson(ImagesDto instance) => <String, dynamic>{
      'original': instance.original,
      'downsized': instance.downsized,
      'downsized_large': instance.downsizedLarge,
      'downsized_medium': instance.downsizedMedium,
      'downsized_small': instance.downsizedSmall,
      'downsized_still': instance.downsizedStill,
      'fixed_height': instance.fixedHeight,
      'fixed_height_downsampled': instance.fixedHeightDownsampled,
      'fixed_height_small': instance.fixedHeightSmall,
      'fixed_height_small_still': instance.fixedHeightSmallStill,
      'fixed_height_still': instance.fixedHeightStill,
      'fixed_width': instance.fixedWidth,
      'fixed_width_downsampled': instance.fixedWidthDownsampled,
      'fixed_width_small': instance.fixedWidthSmall,
      'fixed_width_small_still': instance.fixedWidthSmallStill,
      'fixed_width_still': instance.fixedWidthStill,
      'looping': instance.looping,
      'original_still': instance.originalStill,
      'original_mp4': instance.originalMp4,
      'preview': instance.preview,
      'preview_gif': instance.previewGif,
      'preview_webp': instance.previewWebp,
      '480w_still': instance.fourHundredEightyWStill,
    };

ImageDataDto _$ImageDataDtoFromJson(Map<String, dynamic> json) => ImageDataDto(
      height: json['height'] as String?,
      width: json['width'] as String?,
      size: json['size'] as String?,
      url: json['url'] as String?,
      mp4Size: json['mp4_size'] as String?,
      mp4Url: json['mp4_url'] as String?,
      webpSize: json['webp_size'] as String?,
      webpUrl: json['webp_url'] as String?,
      frames: json['frames'] as String?,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$ImageDataDtoToJson(ImageDataDto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'size': instance.size,
      'url': instance.url,
      'mp4_size': instance.mp4Size,
      'mp4_url': instance.mp4Url,
      'webp_size': instance.webpSize,
      'webp_url': instance.webpUrl,
      'frames': instance.frames,
      'hash': instance.hash,
    };
