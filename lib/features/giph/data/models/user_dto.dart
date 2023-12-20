import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  const UserDto({
    required this.avatarUrl,
    required this.bannerImage,
    required this.bannerUrl,
    required this.profileUrl,
    required this.username,
    required this.displayName,
    required this.description,
    required this.instagramUrl,
    required this.websiteUrl,
    required this.isVerified,
  });

  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @JsonKey(name: 'banner_image')
  final String? bannerImage;
  @JsonKey(name: 'banner_url')
  final String? bannerUrl;
  @JsonKey(name: 'profile_url')
  final String? profileUrl;

  final String? username;
  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'instagram_url')
  final String? instagramUrl;
  @JsonKey(name: 'website_url')
  final String? websiteUrl;
  @JsonKey(name: 'is_verified')
  final bool? isVerified;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
