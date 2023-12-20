class ImagesModel {
  const ImagesModel({
    required this.original,
    required this.downsized,
    required this.downsizedLarge,
    required this.downsizedMedium,
    required this.downsizedSmall,
    required this.downsizedStill,
    required this.fixedHeight,
    required this.fixedHeightDownsampled,
    required this.fixedHeightSmall,
    required this.fixedHeightSmallStill,
    required this.fixedHeightStill,
    required this.fixedWidth,
    required this.fixedWidthDownsampled,
    required this.fixedWidthSmall,
    required this.fixedWidthSmallStill,
    required this.fixedWidthStill,
    required this.looping,
    required this.originalStill,
    required this.originalMp4,
    required this.preview,
    required this.previewGif,
    required this.previewWebp,
    required this.fourHundrerEightyWStill,
  });

  final ImageData original;
  final ImageData downsized;
  final ImageData? downsizedLarge;
  final ImageData? downsizedMedium;
  final ImageData? downsizedSmall;
  final ImageData? downsizedStill;
  final ImageData? fixedHeight;
  final ImageData? fixedHeightDownsampled;
  final ImageData? fixedHeightSmall;
  final ImageData? fixedHeightSmallStill;
  final ImageData? fixedHeightStill;
  final ImageData? fixedWidth;
  final ImageData? fixedWidthDownsampled;
  final ImageData? fixedWidthSmall;
  final ImageData? fixedWidthSmallStill;
  final ImageData? fixedWidthStill;
  final ImageData? looping;
  final ImageData? originalStill;
  final ImageData? originalMp4;
  final ImageData? preview;
  final ImageData? previewGif;
  final ImageData? previewWebp;
  final ImageData? fourHundrerEightyWStill;
}

class ImageData {
  const ImageData({
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

  final double? height;
  final double? width;
  final double? size;
  final String? url;
  final double? mp4Size;
  final String? mp4Url;
  final String? webpSize;
  final String? webpUrl;
  final int? frames;
  final String? hash;
}
