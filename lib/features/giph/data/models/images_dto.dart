import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_dto.g.dart';

@JsonSerializable()
class ImagesDto {
  ImagesDto({
    this.original,
    this.downsized,
    this.downsizedLarge,
    this.downsizedMedium,
    this.downsizedSmall,
    this.downsizedStill,
    this.fixedHeight,
    this.fixedHeightDownsampled,
    this.fixedHeightSmall,
    this.fixedHeightSmallStill,
    this.fixedHeightStill,
    this.fixedWidth,
    this.fixedWidthDownsampled,
    this.fixedWidthSmall,
    this.fixedWidthSmallStill,
    this.fixedWidthStill,
    this.looping,
    this.originalStill,
    this.originalMp4,
    this.preview,
    this.previewGif,
    this.previewWebp,
    this.fourHundredEightyWStill,
  });

  final ImageDataDto? original;
  final ImageDataDto? downsized;
  @JsonKey(name: 'downsized_large')
  final ImageDataDto? downsizedLarge;
  @JsonKey(name: 'downsized_medium')
  final ImageDataDto? downsizedMedium;
  @JsonKey(name: 'downsized_small')
  final ImageDataDto? downsizedSmall;
  @JsonKey(name: 'downsized_still')
  final ImageDataDto? downsizedStill;
  @JsonKey(name: 'fixed_height')
  final ImageDataDto? fixedHeight;
  @JsonKey(name: 'fixed_height_downsampled')
  final ImageDataDto? fixedHeightDownsampled;
  @JsonKey(name: 'fixed_height_small')
  final ImageDataDto? fixedHeightSmall;
  @JsonKey(name: 'fixed_height_small_still')
  final ImageDataDto? fixedHeightSmallStill;
  @JsonKey(name: 'fixed_height_still')
  final ImageDataDto? fixedHeightStill;
  @JsonKey(name: 'fixed_width')
  final ImageDataDto? fixedWidth;
  @JsonKey(name: 'fixed_width_downsampled')
  final ImageDataDto? fixedWidthDownsampled;
  @JsonKey(name: 'fixed_width_small')
  final ImageDataDto? fixedWidthSmall;
  @JsonKey(name: 'fixed_width_small_still')
  final ImageDataDto? fixedWidthSmallStill;
  @JsonKey(name: 'fixed_width_still')
  final ImageDataDto? fixedWidthStill;
  final ImageDataDto? looping;
  @JsonKey(name: 'original_still')
  final ImageDataDto? originalStill;
  @JsonKey(name: 'original_mp4')
  final ImageDataDto? originalMp4;
  final ImageDataDto? preview;
  @JsonKey(name: 'preview_gif')
  final ImageDataDto? previewGif;
  @JsonKey(name: 'preview_webp')
  final ImageDataDto? previewWebp;
  @JsonKey(name: '480w_still')
  final ImageDataDto? fourHundredEightyWStill;

  factory ImagesDto.fromJson(Map<String, dynamic> json) =>
      _$ImagesDtoFromJson(json);
}

@JsonSerializable()
class ImageDataDto {
  const ImageDataDto({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4Url,
    this.webpSize,
    this.webpUrl,
    this.frames,
    this.hash,
  });

  final String? height;
  final String? width;
  final String? size;
  final String? url;
  @JsonKey(name: 'mp4_size')
  final String? mp4Size;
  @JsonKey(name: 'mp4_url')
  final String? mp4Url;
  @JsonKey(name: 'webp_size')
  final String? webpSize;
  @JsonKey(name: 'webp_url')
  final String? webpUrl;
  final String? frames;
  final String? hash;

  factory ImageDataDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDataDtoFromJson(json);
}
