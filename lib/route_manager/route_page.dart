import 'package:Dibadnd/route_manager/route_name.dart';
import 'package:Dibadnd/view/categories_screen.dart';
import 'package:Dibadnd/view/home_screen.dart';
import 'package:Dibadnd/view/notification_screen.dart';
import 'package:Dibadnd/view/profile_screen.dart';
import 'package:Dibadnd/view/saved_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.RouteHomeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: NamedRoute.RouteCategoriesScreen,
      page: () => const CategoriesScreen(),
    ),
    GetPage(
      name: NamedRoute.RouteNotificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: NamedRoute.RouteSavedScreen,
      page: () => const SavedScreen(),
    ),
    GetPage(
      name: NamedRoute.RouteProfileScreen,
      page: () => ProfileScreen(),
    ),
  ];
}
