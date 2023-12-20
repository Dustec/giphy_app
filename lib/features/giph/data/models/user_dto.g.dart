// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      avatarUrl: json['avatar_url'] as String?,
      bannerImage: json['banner_image'] as String?,
      bannerUrl: json['banner_url'] as String?,
      profileUrl: json['profile_url'] as String?,
      username: json['username'] as String?,
      displayName: json['display_name'] as String?,
      description: json['description'] as String?,
      instagramUrl: json['instagram_url'] as String?,
      websiteUrl: json['website_url'] as String?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'banner_image': instance.bannerImage,
      'banner_url': instance.bannerUrl,
      'profile_url': instance.profileUrl,
      'username': instance.username,
      'display_name': instance.displayName,
      'description': instance.description,
      'instagram_url': instance.instagramUrl,
      'website_url': instance.websiteUrl,
      'is_verified': instance.isVerified,
    };
