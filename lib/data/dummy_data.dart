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
      name: 'Housekeeping',
      description: 'Regular cleaning and maintenance',
      icon: '🏠',
      type: ServiceCategoryType.housekeeping,
    ),
    ServiceCategory(
      id: '2',
      name: 'Sanitization',
      description: 'Deep sanitization services',
      icon: '🧼',
      type: ServiceCategoryType.sanitization,
    ),
    ServiceCategory(
      id: '3',
      name: 'Pantry Services',
      description: 'Staff for pantry management',
      icon: '☕',
      type: ServiceCategoryType.pantry,
    ),
    ServiceCategory(
      id: '4',
      name: 'Floor & Carpet',
      description: 'Cleaning and maintenance',
      icon: '🧹',
      type: ServiceCategoryType.floorCarpet,
    ),
    ServiceCategory(
      id: '5',
      name: 'Guest House',
      description: 'Guest house operations',
      icon: '🏨',
      type: ServiceCategoryType.guestHouse,
    ),
    ServiceCategory(
      id: '6',
      name: 'HVAC',
      description: 'Heating, ventilation, AC',
      icon: '❄️',
      type: ServiceCategoryType.hvac,
    ),
    ServiceCategory(
      id: '7',
      name: 'Electrical',
      description: 'Electrical maintenance',
      icon: '⚡',
      type: ServiceCategoryType.electrical,
    ),
    ServiceCategory(
      id: '8',
      name: 'Plumbing',
      description: 'Plumbing services',
      icon: '🔧',
      type: ServiceCategoryType.plumbing,
    ),
    ServiceCategory(
      id: '9',
      name: 'Carpentry',
      description: 'Carpentry services',
      icon: '🪚',
      type: ServiceCategoryType.carpentry,
    ),
    ServiceCategory(
      id: '10',
      name: 'IFM',
      description: 'Integrated facility management',
      icon: '🏢',
      type: ServiceCategoryType.ifm,
    ),
  ];

  // Services
  static final List<Service> services = [
    Service(
      id: '1',
      name: 'Office Deep Cleaning',
      description: 'Complete office cleaning service',
      longDescription:
          'Professional deep cleaning service for your office spaces. Includes dusting, vacuuming, sanitization of all surfaces, window cleaning, and trash removal. Our trained staff uses eco-friendly products to ensure a healthy workspace.',
      price: 2500,
      duration: '3-4 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.housekeeping,
      isHot: true,
      rating: 4.8,
      reviewsCount: 124,
    ),
    Service(
      id: '2',
      name: 'COVID-19 Sanitization',
      description: 'Professional disinfection service',
      longDescription:
          'Hospital-grade sanitization service to protect against COVID-19 and other viruses. We use EPA-approved disinfectants and follow CDC guidelines. Complete coverage of all high-touch surfaces and common areas.',
      price: 3500,
      duration: '2-3 hours',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.sanitization,
      isOnSale: true,
      originalPrice: 4500,
      rating: 4.9,
      reviewsCount: 89,
    ),
    Service(
      id: '3',
      name: 'Pantry Management',
      description: 'Complete pantry operations',
      longDescription:
          'Professional pantry staff for your office. Includes tea/coffee preparation, maintaining cleanliness, inventory management, and serving guests. Our trained staff ensures smooth pantry operations.',
      price: 15000,
      duration: 'Monthly',
      imageUrl: 'assets/images/service2.jpg',
      category: ServiceCategoryType.pantry,
      rating: 4.7,
      reviewsCount: 56,
    ),
    Service(
      id: '4',
      name: 'Carpet Deep Cleaning',
      description: 'Professional carpet cleaning',
      longDescription:
          'Deep carpet cleaning using organic chemicals and industrial equipment. Removes stains, odors, and allergens. Hot water extraction method ensures thorough cleaning without damaging fibers.',
      price: 1800,
      duration: '2-3 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.floorCarpet,
      isHot: true,
      isOnSale: true,
      originalPrice: 2200,
      rating: 4.6,
      reviewsCount: 78,
    ),
    Service(
      id: '5',
      name: 'AC Maintenance',
      description: 'HVAC inspection and service',
      longDescription:
          'Comprehensive AC maintenance including filter cleaning, gas refilling, coil cleaning, and performance check. Preventative maintenance to ensure optimal cooling and energy efficiency.',
      price: 2000,
      duration: '1-2 hours',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.hvac,
      rating: 4.7,
      reviewsCount: 112,
    ),
    Service(
      id: '6',
      name: 'Electrical Inspection',
      description: 'Complete electrical checkup',
      longDescription:
          'Thorough electrical safety inspection covering wiring, switches, circuit breakers, and electrical panels. Identifies potential hazards and ensures compliance with safety standards.',
      price: 1500,
      duration: '2 hours',
      imageUrl: 'assets/images/service2.jpg',
      category: ServiceCategoryType.electrical,
      rating: 4.8,
      reviewsCount: 93,
    ),
    Service(
      id: '7',
      name: 'Plumbing Services',
      description: 'Repair and maintenance',
      longDescription:
          'Complete plumbing solutions including leak repairs, pipe installation, drain cleaning, and fixture repairs. 24/7 emergency service available for urgent issues.',
      price: 1200,
      duration: '1-2 hours',
      imageUrl: 'assets/images/service.jpg',
      category: ServiceCategoryType.plumbing,
      rating: 4.5,
      reviewsCount: 67,
    ),
    Service(
      id: '8',
      name: 'Furniture Repair',
      description: 'Carpentry services',
      longDescription:
          'Professional carpentry services for furniture repair, custom installations, and woodwork maintenance. Skilled craftsmen for all your carpentry needs.',
      price: 1800,
      duration: '2-4 hours',
      imageUrl: 'assets/images/service1.jpg',
      category: ServiceCategoryType.carpentry,
      rating: 4.6,
      reviewsCount: 45,
    ),
  ];

  // Service Providers
  static final List<ServiceProvider> serviceProviders = [
    ServiceProvider(
      id: '1',
      name: 'Ahmed Hassan',
      phoneNumber: '+92 300 1234567',
      email: 'ahmed.hassan@densat.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.8,
      completedJobs: 245,
      specializations: ['Housekeeping', 'Sanitization'],
      isAvailable: true,
      currentLocation: '2.5 km away',
    ),
    ServiceProvider(
      id: '2',
      name: 'Muhammad Ali',
      phoneNumber: '+92 300 2345678',
      email: 'muhammad.ali@densat.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.9,
      completedJobs: 312,
      specializations: ['HVAC', 'Electrical'],
      isAvailable: true,
      currentLocation: '1.8 km away',
    ),
    ServiceProvider(
      id: '3',
      name: 'Bilal Khan',
      phoneNumber: '+92 300 3456789',
      email: 'bilal.khan@densat.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.7,
      completedJobs: 189,
      specializations: ['Plumbing', 'Carpentry'],
      isAvailable: false,
    ),
    ServiceProvider(
      id: '4',
      name: 'Usman Malik',
      phoneNumber: '+92 300 4567890',
      email: 'usman.malik@densat.com',
      profileImage: 'assets/images/profile.jpg',
      rating: 4.6,
      completedJobs: 156,
      specializations: ['Floor & Carpet', 'Housekeeping'],
      isAvailable: true,
      currentLocation: '3.2 km away',
    ),
  ];

  // Bookings
  static final List<Booking> bookings = [
    Booking(
      id: '1',
      serviceId: '1',
      serviceName: 'Office Deep Cleaning',
      serviceImage: 'assets/images/service.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 2)),
      timeSlot: '10:00 AM - 2:00 PM',
      address: 'Office 301, Bahria Town, Lahore',
      notes: 'Please bring all equipment',
      price: 2500,
      status: BookingStatus.pending,
      createdAt: DateTime.now(),
    ),
    Booking(
      id: '2',
      serviceId: '2',
      serviceName: 'COVID-19 Sanitization',
      serviceImage: 'assets/images/service1.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 1)),
      timeSlot: '9:00 AM - 12:00 PM',
      address: 'Building A, DHA Phase 5, Karachi',
      notes: 'Focus on conference rooms',
      price: 3500,
      status: BookingStatus.approved,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      serviceProviderId: '1',
      serviceProviderName: 'Ahmed Hassan',
    ),
    Booking(
      id: '3',
      serviceId: '5',
      serviceName: 'AC Maintenance',
      serviceImage: 'assets/images/service1.jpg',
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
      timeSlot: '2:00 PM - 4:00 PM',
      address: 'House 45, F-7 Islamabad',
      notes: 'Gas refilling needed',
      price: 2000,
      status: BookingStatus.completed,
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      serviceProviderId: '2',
      serviceProviderName: 'Muhammad Ali',
    ),
    Booking(
      id: '4',
      serviceId: '4',
      serviceName: 'Carpet Deep Cleaning',
      serviceImage: 'assets/images/service.jpg',
      bookingDate: DateTime.now().add(const Duration(days: 3)),
      timeSlot: '11:00 AM - 2:00 PM',
      address: 'Apartment 12B, Gulberg, Lahore',
      notes: 'Two large carpets',
      price: 1800,
      status: BookingStatus.pending,
      createdAt: DateTime.now(),
    ),
  ];

  // Chat Messages
  static final List<ChatMessage> chatMessages = [
    ChatMessage(
      id: '1',
      senderId: 'provider_1',
      senderName: 'Ahmed Hassan',
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
      senderName: 'Ahmed Hassan',
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
      senderName: 'Ahmed Hassan',
      message: 'Understood. I have all the necessary equipment with me.',
      timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
      isMe: false,
    ),
  ];

  // User Profile
  static final UserProfile userProfile = UserProfile(
    id: 'user_1',
    name: 'John Doe',
    email: 'john.doe@example.com',
    phoneNumber: '+92 300 9876543',
    profileImage: 'assets/images/profile.jpg',
    savedAddresses: [
      'Office 301, Bahria Town, Lahore',
      'House 45, F-7 Islamabad',
      'Apartment 12B, Gulberg, Lahore',
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
