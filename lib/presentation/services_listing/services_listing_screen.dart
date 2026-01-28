import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/constants/string_consts.dart';
import '../../data/dummy_data.dart';
import '../../data/models/service.dart';
import '../../data/models/service_category.dart';
import '../../core/routes/route_names.dart';
import '../widgets/custom_textfield.dart';

class ServicesListingScreen extends StatefulWidget {
  final ServiceCategoryType? category;

  const ServicesListingScreen({super.key, this.category});

  @override
  State<ServicesListingScreen> createState() => _ServicesListingScreenState();
}

class _ServicesListingScreenState extends State<ServicesListingScreen> {
  List<Service> services = [];

  @override
  void initState() {
    super.initState();
    services = widget.category != null
        ? DummyData.getServicesByCategory(widget.category!)
        : DummyData.services;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: AppColors.neutral800),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          AppStrings.services,
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.neutral800,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.slider_horizontal_3, color: AppColors.neutral800),
            onPressed: () {
              // Show filter bottom sheet
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: IOSSearchBar(
              hint: AppStrings.searchServices,
              onChanged: (value) {
                // Filter services
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _ServiceListCard(
                    service: service,
                    onTap: () {
                      context.push('${RouteNames.serviceDetails}?serviceId=${service.id}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceListCard extends StatelessWidget {
  final Service service;
  final VoidCallback onTap;

  const _ServiceListCard({required this.service, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Container(
                width: 100,
                height: 120,
                color: AppColors.neutral100,
                child: service.imageUrl.isNotEmpty
                    ? Image.network(service.imageUrl, fit: BoxFit.cover)
                    : const Icon(Icons.image, size: 40, color: AppColors.neutral400),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            service.name,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.neutral800,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (service.isHot || service.isOnSale)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: service.isHot ? AppColors.red : AppColors.secondary,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              service.isHot ? 'HOT' : 'SALE',
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      service.description,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.neutral500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          service.rating.toString(),
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.neutral800,
                          ),
                        ),
                        Text(
                          ' (${service.reviewsCount})',
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.neutral500,
                          ),
                        ),
                        const Spacer(),
                        // Price removed
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
