import 'package:giphy_app/core/domain/contracts/mapper.dart';
import 'package:giphy_app/features/giph/domain/models/user_model.dart';

import '../models/user_dto.dart';

class UserFromDtoMapper implements Mapper<UserDto, UserModel> {
  const UserFromDtoMapper();

  @override
  UserModel map(UserDto t) {
    return UserModel(
      avatarUrl: t.avatarUrl ?? '',
      bannerImage: t.bannerImage ?? '',
      bannerUrl: t.bannerUrl ?? '',
      profileUrl: t.profileUrl ?? '',
      username: t.username ?? '',
      displayName: t.displayName ?? '',
      description: t.description ?? '',
      instagramUrl: t.instagramUrl ?? '',
      websiteUrl: t.websiteUrl ?? '',
      isVerified: t.isVerified ?? false,
    );
  }
}
