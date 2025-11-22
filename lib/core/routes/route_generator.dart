import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/splash/splash_screen.dart';
import '../../presentation/main_tab/main_tab_screen.dart';
import '../../presentation/auth/login_screen.dart';
import '../../presentation/auth/signup_screen.dart';
import '../../presentation/service_details/service_details_screen.dart';
import '../../presentation/book_service/book_service_screen.dart';
import '../../presentation/in_app_communication/chat_screen.dart';
import '../../presentation/admin_enquiry/admin_enquiry_screen.dart';
import '../../presentation/provider_tracking/service_providers_screen.dart';
import '../../presentation/role_selector/role_selector_screen.dart';
import '../../presentation/serviceman/auth/serviceman_login_screen.dart';
import '../../presentation/serviceman/main_tab/serviceman_main_tab_screen.dart';
import '/core/routes/route_names.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.splash,
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        name: 'splash',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RouteNames.mainTab,
        name: 'mainTab',
        builder: (BuildContext context, GoRouterState state) {
          return const MainTabScreen();
        },
      ),
      GoRoute(
        path: RouteNames.login,
        name: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: RouteNames.signup,
        name: 'signup',
        builder: (BuildContext context, GoRouterState state) {
          return const SignupScreen();
        },
      ),
      GoRoute(
        path: RouteNames.serviceDetails,
        name: 'serviceDetails',
        builder: (BuildContext context, GoRouterState state) {
          final serviceId = state.uri.queryParameters['serviceId'] ?? '';
          return ServiceDetailsScreen(serviceId: serviceId);
        },
      ),
      GoRoute(
        path: RouteNames.bookService,
        name: 'bookService',
        builder: (BuildContext context, GoRouterState state) {
          final serviceId = state.uri.queryParameters['serviceId'] ?? '';
          return BookServiceScreen(serviceId: serviceId);
        },
      ),
      GoRoute(
        path: RouteNames.chat,
        name: 'chat',
        builder: (BuildContext context, GoRouterState state) {
          final providerId = state.uri.queryParameters['providerId'] ?? '';
          return ChatScreen(providerId: providerId);
        },
      ),
      GoRoute(
        path: RouteNames.serviceProviders,
        name: 'serviceProviders',
        builder: (BuildContext context, GoRouterState state) {
          final bookingId = state.uri.queryParameters['bookingId'] ?? '';
          return ServiceProvidersScreen(bookingId: bookingId);
        },
      ),
      GoRoute(
        path: RouteNames.adminEnquiry,
        name: 'adminEnquiry',
        builder: (BuildContext context, GoRouterState state) {
          return const AdminEnquiryScreen();
        },
      ),
      GoRoute(
        path: RouteNames.roleSelector,
        name: 'roleSelector',
        builder: (BuildContext context, GoRouterState state) {
          return const RoleSelectorScreen();
        },
      ),
      GoRoute(
        path: RouteNames.servicemanLogin,
        name: 'servicemanLogin',
        builder: (BuildContext context, GoRouterState state) {
          return const ServicemanLoginScreen();
        },
      ),
      GoRoute(
        path: RouteNames.servicemanMainTab,
        name: 'servicemanMainTab',
        builder: (BuildContext context, GoRouterState state) {
          return const ServicemanMainTabScreen();
        },
      ),
    ],
    errorBuilder: (context, state) =>
        ErrorScreen(errorMessage: state.error?.toString(), currentLocation: state.matchedLocation),
  );
}

class ErrorScreen extends StatelessWidget {
  final String? errorMessage;
  final String? currentLocation;

  const ErrorScreen({super.key, this.errorMessage, this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () => context.go(RouteNames.splash),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 80, color: Colors.red),
              const SizedBox(height: 24),
              const Text(
                'Oops! Something went wrong',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              if (errorMessage != null) ...[
                Text(
                  errorMessage!,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
              ],
              if (currentLocation != null && kDebugMode) ...[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Location: $currentLocation',
                    style: const TextStyle(fontSize: 12, fontFamily: 'monospace'),
                  ),
                ),
                const SizedBox(height: 16),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => context.go(RouteNames.splash),
                    icon: const Icon(Icons.home),
                    label: const Text('Go Home'),
                  ),
                  const SizedBox(width: 16),
                  TextButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Go Back'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
