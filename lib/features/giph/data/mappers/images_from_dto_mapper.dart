import 'package:giphy_app/core/domain/contracts/mapper.dart';
import 'package:giphy_app/features/giph/data/models/images_dto.dart';
import 'package:giphy_app/features/giph/domain/models/images_model.dart';

class ImagesFromDtoMapper implements Mapper<ImagesDto, ImagesModel> {
  const ImagesFromDtoMapper({
    this.imageDataMapper = const ImageDataFromDtoMapper(),
  });

  final Mapper<ImageDataDto, ImageData> imageDataMapper;

  @override
  ImagesModel map(ImagesDto t) {
    return ImagesModel(
      original: t.original != null ? imageDataMapper.map(t.original!) : null,
      downsized: t.downsized != null ? imageDataMapper.map(t.downsized!) : null,
      downsizedLarge: t.downsizedLarge != null
          ? imageDataMapper.map(t.downsizedLarge!)
          : null,
      downsizedMedium: t.downsizedMedium != null
          ? imageDataMapper.map(t.downsizedMedium!)
          : null,
      downsizedSmall: t.downsizedSmall != null
          ? imageDataMapper.map(t.downsizedSmall!)
          : null,
      downsizedStill: t.downsizedStill != null
          ? imageDataMapper.map(t.downsizedStill!)
          : null,
      fixedHeight:
          t.fixedHeight != null ? imageDataMapper.map(t.fixedHeight!) : null,
      fixedHeightDownsampled: t.fixedHeightDownsampled != null
          ? imageDataMapper.map(t.fixedHeightDownsampled!)
          : null,
      fixedHeightSmall: t.fixedHeightSmall != null
          ? imageDataMapper.map(t.fixedHeightSmall!)
          : null,
      fixedHeightSmallStill: t.fixedHeightSmallStill != null
          ? imageDataMapper.map(t.fixedHeightSmallStill!)
          : null,
      fixedHeightStill: t.fixedHeightStill != null
          ? imageDataMapper.map(t.fixedHeightStill!)
          : null,
      fixedWidth:
          t.fixedWidth != null ? imageDataMapper.map(t.fixedWidth!) : null,
      fixedWidthDownsampled: t.fixedWidthDownsampled != null
          ? imageDataMapper.map(t.fixedWidthDownsampled!)
          : null,
      fixedWidthSmall: t.fixedWidthSmall != null
          ? imageDataMapper.map(t.fixedWidthSmall!)
          : null,
      fixedWidthSmallStill: t.fixedWidthSmallStill != null
          ? imageDataMapper.map(t.fixedWidthSmallStill!)
          : null,
      fixedWidthStill: t.fixedWidthStill != null
          ? imageDataMapper.map(t.fixedWidthStill!)
          : null,
      looping: t.looping != null ? imageDataMapper.map(t.looping!) : null,
      originalStill: t.originalStill != null
          ? imageDataMapper.map(t.originalStill!)
          : null,
      originalMp4:
          t.originalMp4 != null ? imageDataMapper.map(t.originalMp4!) : null,
      preview: t.preview != null ? imageDataMapper.map(t.preview!) : null,
      previewGif:
          t.previewGif != null ? imageDataMapper.map(t.previewGif!) : null,
      previewWebp:
          t.previewWebp != null ? imageDataMapper.map(t.previewWebp!) : null,
      fourHundredEightyWStill: t.fourHundredEightyWStill != null
          ? imageDataMapper.map(t.fourHundredEightyWStill!)
          : null,
    );
  }
}

class ImageDataFromDtoMapper implements Mapper<ImageDataDto, ImageData> {
  const ImageDataFromDtoMapper();

  @override
  ImageData map(ImageDataDto t) {
    return ImageData(
      height: double.tryParse(t.height ?? ''),
      width: double.tryParse(t.width ?? ''),
      size: double.tryParse(t.size ?? ''),
      url: t.url ?? '',
      mp4Size: double.tryParse(t.mp4Size ?? ''),
      mp4Url: t.mp4Url ?? '',
      webpSize: t.webpSize ?? '',
      webpUrl: t.webpUrl ?? '',
      frames: int.tryParse(t.frames ?? ''),
      hash: t.hash ?? '',
    );
  }
}
