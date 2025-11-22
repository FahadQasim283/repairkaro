enum BookingStatus { pending, approved, inProgress, completed, cancelled }

class Booking {
  final String id;
  final String serviceId;
  final String serviceName;
  final String serviceImage;
  final DateTime bookingDate;
  final String timeSlot;
  final String address;
  final String notes;
  final double price;
  final BookingStatus status;
  final DateTime createdAt;
  final String? serviceProviderId;
  final String? serviceProviderName;

  Booking({
    required this.id,
    required this.serviceId,
    required this.serviceName,
    required this.serviceImage,
    required this.bookingDate,
    required this.timeSlot,
    required this.address,
    required this.notes,
    required this.price,
    required this.status,
    required this.createdAt,
    this.serviceProviderId,
    this.serviceProviderName,
  });

  String get statusText {
    switch (status) {
      case BookingStatus.pending:
        return 'Pending Approval';
      case BookingStatus.approved:
        return 'Approved';
      case BookingStatus.inProgress:
        return 'In Progress';
      case BookingStatus.completed:
        return 'Completed';
      case BookingStatus.cancelled:
        return 'Cancelled';
    }
  }
}
