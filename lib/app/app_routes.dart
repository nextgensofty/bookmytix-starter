import 'package:flight_app/screens/explore/explore_main.dart';
import 'package:flight_app/screens/intro/intro_screen.dart';
import 'package:flight_app/screens/intro/start_screen.dart';
import 'package:flight_app/screens/orders/order_list.dart';
import 'package:flight_app/screens/profile/profile_main.dart';
import 'package:flight_app/screens/promo/promo_main.dart';
import 'package:flight_app/ui/layouts/general_layout.dart';
import 'package:flight_app/ui/layouts/home_layout.dart';
import 'package:get/route_manager.dart';
import 'package:flight_app/app/app_link.dart';

const int pageTransitionDuration = 200;

final List<GetPage> appRoutes = [
  /// HOME
  GetPage(
    name: AppLink.home,
    page: () => const StartScreen(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),
  GetPage(
    name: AppLink.intro,
    page: () => GeneralLayout(content: IntroScreen(saveIntroStatus: () {})),
  ),

  // MY TICKET
  GetPage(
    name: AppLink.myTicket,
    page: () => const HomeLayout(content: OrderList()),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),

  /// EXPLORE
  GetPage(
    name: AppLink.explore,
    page: () => const HomeLayout(content: ExploreMain()),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),

  /// PROMO
  GetPage(
    name: AppLink.promo,
    page: () => const HomeLayout(content: PromoMain()),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),

  // MY TICKET
  GetPage(
    name: AppLink.profile,
    page: () => const HomeLayout(content: OrderList()),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),

  GetPage(
    name: AppLink.profile,
    page: () => const HomeLayout(content: ProfileMain()),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: pageTransitionDuration)
  ),
];