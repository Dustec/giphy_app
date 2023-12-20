class UserModel {
  const UserModel({
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

  final String avatarUrl;
  final String bannerImage;
  final String bannerUrl;
  final String profileUrl;
  final String username;
  final String displayName;
  final String description;
  final String instagramUrl;
  final String websiteUrl;
  final bool isVerified;
}
