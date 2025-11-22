class UserProfile {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String? profileImage;
  final List<String> savedAddresses;

  UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    this.profileImage,
    this.savedAddresses = const [],
  });
}
