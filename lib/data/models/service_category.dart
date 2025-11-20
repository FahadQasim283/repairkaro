enum ServiceCategoryType {
  housekeeping,
  sanitization,
  pantry,
  floorCarpet,
  guestHouse,
  hvac,
  electrical,
  mechanical,
  plumbing,
  carpentry,
  ifm,
}

class ServiceCategory {
  final String id;
  final String name;
  final String description;
  final String icon;
  final ServiceCategoryType type;

  ServiceCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.type,
  });
}
