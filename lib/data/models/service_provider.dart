class ServiceProvider {
  final String id;
  final String name;
  final String phoneNumber;
  final String email;
  final String profileImage;
  final double rating;
  final int completedJobs;
  final List<String> specializations;
  final bool isAvailable;
  final String? currentLocation;

  ServiceProvider({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.profileImage,
    this.rating = 4.5,
    this.completedJobs = 0,
    required this.specializations,
    this.isAvailable = true,
    this.currentLocation,
  });
}
