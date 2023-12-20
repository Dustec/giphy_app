import 'package:giphy_app/features/giph/domain/models/images_model.dart';
import 'package:giphy_app/features/giph/domain/models/user_model.dart';

class GifModel {
  const GifModel({
    required this.id,
    required this.type,
    required this.slug,
    required this.url,
    required this.bitlyUrl,
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

  final String id;
  final String type;
  final String slug;
  final String url;
  final String bitlyUrl;
  final String embedUrl;
  final String username;
  final String source;
  final String rating;
  final String contentUrl;
  final UserModel? user;
  final String sourceTId;
  final String sourcePostUrl;
  final DateTime updateDateTime;
  final DateTime createDateTime;
  final DateTime importDateTime;
  final DateTime trendingDateTime;
  final ImagesModel? images;
  final String title;
  final String altText;
}
