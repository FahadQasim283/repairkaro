import 'models/service.dart';
import 'models/service_category.dart';
import 'models/booking.dart';
import 'models/service_provider.dart';
import 'models/chat_message.dart';
import 'models/user_profile.dart';

class DummyData {
  // Service Categories
  static final List<ServiceCategory> categories = [
    ServiceCategory(
      id: '1',
      name: 'Laptop & Computer',
      description: 'Laptop, desktop & printer repair',
      icon: '💻',
      type: ServiceCategoryType.laptopComputer,
    ),
    ServiceCategory(
      id: '2',
      name: 'Home Appliances',
      description: 'Washing machine, refrigerator repair',
      icon: '🏠',
      type: ServiceCategoryType.homeAppliances,
    ),
    ServiceCategory(
      id: '3',
      name: 'Kitchen Appliances',
      description: 'Chimney & kitchen device repair',
      icon: '🍳',
      type: ServiceCategoryType.kitchenAppliances,
    ),
    ServiceCategory(
      id: '4',
      name: 'Car Repair',
      description: 'Vehicle repair & maintenance',
      icon: '🚗',
      type: ServiceCategoryType.carRepair,
    ),
    ServiceCategory(
      id: '5',
      name: 'CCTV & Security',
      description: 'Installation & maintenance',
      icon: '📹',
      type: ServiceCategoryType.cctvSecurity,
    ),
    ServiceCategory(
      id: '6',
      name: 'Water Purifier',
      description: 'RO service & installation',
      icon: '💧',
      type: ServiceCategoryType.waterPurifier,
    ),
    ServiceCategory(
      id: '7',
      name: 'Lift Maintenance',
      description: 'Lift repair & servicing',
      icon: '🛗',
      type: ServiceCategoryType.liftMaintenance,
    ),
    ServiceCategory(
      id: '8',
      name: 'AMC Services',
      description: 'Annual maintenance contracts',
      icon: '📋',
      type: ServiceCategoryType.amcServices,
    ),
  ];

  // Services
  static final List<Service> services = [
    Service(
      id: '1',
      name: 'Laptop Screen Repair',
      description: 'Display replacement & repair',
      longDescription:
          'Professional laptop screen repair and replacement service. We fix cracked screens, dead pixels, backlight issues, and display flickering. Use genuine display panels with 30-day warranty. On-site diagnosis available.',
      price: 3500,
      duration: '2-3 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.laptopComputer,
      isHot: true,
      rating: 4.9,
      reviewsCount: 248,
    ),
    Service(
      id: '2',
      name: 'Washing Machine Repair',
      description: 'All brands servicing',
      longDescription:
          'Expert washing machine repair for all brands. Fix drainage issues, drum problems, water leaks, and electrical faults. Genuine spare parts used. Same-day service available.',
      price: 499,
      duration: '1-2 hours',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.homeAppliances,
      isOnSale: true,
      originalPrice: 699,
      rating: 4.8,
      reviewsCount: 312,
    ),
    Service(
      id: '3',
      name: 'Chimney Repair & Service',
      description: 'Kitchen chimney maintenance',
      longDescription:
          'Complete chimney repair and servicing. Deep cleaning, motor repair, filter replacement, and duct cleaning. Works for all brands. Certified technicians ensure proper ventilation.',
      price: 599,
      duration: '1-2 hours',
      imageUrl: 'assets/images/service2.jpg',
      category: ServiceCategoryType.kitchenAppliances,
      rating: 4.7,
      reviewsCount: 156,
    ),
    Service(
      id: '4',
      name: 'Car AC Repair',
      description: 'Vehicle AC servicing',
      longDescription:
          'Professional car AC repair and gas refilling. Fix cooling issues, compressor problems, and refrigerant leaks. Complete inspection and cleaning service available.',
      price: 1200,
      duration: '2-3 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.carRepair,
      isHot: true,
      rating: 4.8,
      reviewsCount: 189,
    ),
    Service(
      id: '5',
      name: 'CCTV Installation',
      description: '4-8 camera setup',
      longDescription:
          'Complete CCTV installation with HD cameras, DVR/NVR setup, and mobile connectivity. Includes wiring, configuration, and training. 1-year warranty on equipment.',
      price: 8999,
      duration: '4-6 hours',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.cctvSecurity,
      rating: 4.9,
      reviewsCount: 267,
    ),
    Service(
      id: '6',
      name: 'RO Water Purifier Service',
      description: 'All brands maintenance',
      longDescription:
          'Complete RO service including filter replacement, membrane cleaning, TDS adjustment, and leak fixing. Genuine spare parts used. Annual maintenance contracts available.',
      price: 399,
      duration: '1 hour',
      imageUrl: 'assets/images/service2.jpg',
      category: ServiceCategoryType.waterPurifier,
      isOnSale: true,
      originalPrice: 599,
      rating: 4.8,
      reviewsCount: 421,
    ),
    Service(
      id: '7',
      name: 'Lift Maintenance',
      description: 'Elevator servicing',
      longDescription:
          'Professional lift maintenance and repair service. Safety inspection, cable checking, door mechanism repair, and emergency brake testing. AMC contracts available.',
      price: 2500,
      duration: '3-4 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.liftMaintenance,
      rating: 4.7,
      reviewsCount: 98,
    ),
    Service(
      id: '8',
      name: 'Annual Maintenance Contract',
      description: 'Unlimited repairs & priority service',
      longDescription:
          'Comprehensive AMC package with unlimited repairs, priority service, scheduled maintenance visits, genuine spare parts, and 24/7 customer support. Flexible plans for all appliances.',
      price: 9999,
      duration: 'Annual',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.amcServices,
      rating: 4.9,
      reviewsCount: 534,
    ),
  ];

  // Service Providers
  static final List<ServiceProvider> serviceProviders = [
    ServiceProvider(
      id: '1',
      name: 'Rajesh Kumar',
      phoneNumber: '+91 98765 43210',
      email: 'rajesh.kumar@repairkro.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.8,
      completedJobs: 245,
      specializations: ['Laptop Repair', 'Computer Hardware'],
      isAvailable: true,
      currentLocation: '2.5 km away',
    ),
    ServiceProvider(
      id: '2',
      name: 'Amit Sharma',
      phoneNumber: '+91 98765 54321',
      email: 'amit.sharma@repairkro.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.9,
      completedJobs: 312,
      specializations: ['Home Appliances', 'Washing Machine'],
      isAvailable: true,
      currentLocation: '1.8 km away',
    ),
    ServiceProvider(
      id: '3',
      name: 'Vikram Singh',
      phoneNumber: '+91 98765 65432',
      email: 'vikram.singh@repairkro.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.7,
      completedJobs: 189,
      specializations: ['CCTV Installation', 'Security Systems'],
      isAvailable: false,
    ),
    ServiceProvider(
      id: '4',
      name: 'Suresh Patel',
      phoneNumber: '+91 98765 76543',
      email: 'suresh.patel@repairkro.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.6,
      completedJobs: 156,
      specializations: ['Car Repair', 'RO Service'],
      isAvailable: true,
      currentLocation: '3.2 km away',
    ),
  ];

  // Bookings
  static final List<Booking> bookings = [
    Booking(
      id: '1',
      serviceId: '1',
      serviceName: 'Laptop Screen Repair',
      serviceImage: 'assets/images/service.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 2)),
      timeSlot: '10:00 AM - 2:00 PM',
      address: 'Flat 45, Sector 18, Noida',
      notes: 'Laptop screen has dead pixels',
      price: 3500,
      status: BookingStatus.pending,
      createdAt: DateTime.now(),
    ),
    Booking(
      id: '2',
      serviceId: '2',
      serviceName: 'Washing Machine Repair',
      serviceImage: 'assets/images/service1.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 1)),
      timeSlot: '9:00 AM - 12:00 PM',
      address: 'Apartment 12B, Bandra West, Mumbai',
      notes: 'Not draining water properly',
      price: 499,
      status: BookingStatus.approved,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      serviceProviderId: '1',
      serviceProviderName: 'Rajesh Kumar',
    ),
    Booking(
      id: '3',
      serviceId: '5',
      serviceName: 'CCTV Installation',
      serviceImage: 'assets/images/service1.jpg',
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
      timeSlot: '2:00 PM - 4:00 PM',
      address: 'Office 301, Connaught Place, Delhi',
      notes: '6 camera installation needed',
      price: 8999,
      status: BookingStatus.completed,
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      serviceProviderId: '2',
      serviceProviderName: 'Amit Sharma',
    ),
    Booking(
      id: '4',
      serviceId: '4',
      serviceName: 'Car AC Repair',
      serviceImage: 'assets/images/service.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 3)),
      timeSlot: '11:00 AM - 2:00 PM',
      address: 'House 23, Koramangala, Bangalore',
      notes: 'Car AC not cooling properly',
      price: 1200,
      status: BookingStatus.pending,
      createdAt: DateTime.now(),
    ),
  ];

  // Chat Messages
  static final List<ChatMessage> chatMessages = [
    ChatMessage(
      id: '1',
      senderId: 'provider_1',
      senderName: 'Rajesh Kumar',
      message: 'Hello! I will be arriving in 10 minutes.',
      timestamp: DateTime.now().subtract(const Duration(minutes: 15)),
      isMe: false,
    ),
    ChatMessage(
      id: '2',
      senderId: 'user_1',
      senderName: 'You',
      message: 'Great! Please call me when you arrive.',
      timestamp: DateTime.now().subtract(const Duration(minutes: 14)),
      isMe: true,
    ),
    ChatMessage(
      id: '3',
      senderId: 'provider_1',
      senderName: 'Rajesh Kumar',
      message: 'Sure, will do. Do you have any specific instructions?',
      timestamp: DateTime.now().subtract(const Duration(minutes: 13)),
      isMe: false,
    ),
    ChatMessage(
      id: '4',
      senderId: 'user_1',
      senderName: 'You',
      message: 'Please focus on the conference room and manager cabins first.',
      timestamp: DateTime.now().subtract(const Duration(minutes: 12)),
      isMe: true,
    ),
    ChatMessage(
      id: '5',
      senderId: 'provider_1',
      senderName: 'Rajesh Kumar',
      message: 'Understood. I have all the necessary equipment with me.',
      timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
      isMe: false,
    ),
  ];

  // User Profile
  static final UserProfile userProfile = UserProfile(
    id: 'user_1',
    name: 'Rahul Sharma',
    email: 'rahul.sharma@example.com',
    phoneNumber: '+91 98765 98765',
    profileImage: 'assets/images/profile.jpg',
    savedAddresses: [
      'Office 301, Connaught Place, Delhi',
      'Flat 45, Sector 18, Noida',
      'Apartment 12B, Bandra West, Mumbai',
    ],
  );

  // Helper methods
  static List<Service> getHotServices() {
    return services.where((service) => service.isHot).toList();
  }

  static List<Service> getServicesByCategory(ServiceCategoryType category) {
    return services.where((service) => service.category == category).toList();
  }

  static Service? getServiceById(String id) {
    try {
      return services.firstWhere((service) => service.id == id);
    } catch (e) {
      return null;
    }
  }

  static List<Booking> getBookingsByStatus(BookingStatus status) {
    return bookings.where((booking) => booking.status == status).toList();
  }

  static List<ServiceProvider> getAvailableProviders() {
    return serviceProviders.where((provider) => provider.isAvailable).toList();
  }
}
