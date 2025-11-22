enum ServiceCategoryType {
  laptopComputer,
  homeAppliances,
  kitchenAppliances,
  carRepair,
  cctvSecurity,
  waterPurifier,
  liftMaintenance,
  amcServices,
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
