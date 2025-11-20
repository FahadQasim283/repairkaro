import 'service_category.dart';

class Service {
  final String id;
  final String name;
  final String description;
  final String longDescription;
  final double price;
  final String duration;
  final String imageUrl;
  final ServiceCategoryType category;
  final bool isHot;
  final bool isOnSale;
  final double? originalPrice;
  final double rating;
  final int reviewsCount;

  Service({
    required this.id,
    required this.name,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.duration,
    required this.imageUrl,
    required this.category,
    this.isHot = false,
    this.isOnSale = false,
    this.originalPrice,
    this.rating = 4.5,
    this.reviewsCount = 0,
  });
}
