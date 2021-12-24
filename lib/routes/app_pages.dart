import 'package:ecommerce_app_ui/modules/bag/binding/bag_binding.dart';
import 'package:ecommerce_app_ui/modules/bag/view/bag_page.dart';
import 'package:ecommerce_app_ui/modules/brand/binding/brand_binding.dart';
import 'package:ecommerce_app_ui/modules/brand/view/brand_page.dart';
import 'package:ecommerce_app_ui/modules/container/binding/container_binding.dart';
import 'package:ecommerce_app_ui/modules/container/view/container_page.dart';
import 'package:ecommerce_app_ui/modules/detail/binding/detail_binding.dart';
import 'package:ecommerce_app_ui/modules/detail/view/detail_product_page.dart';
import 'package:ecommerce_app_ui/modules/favorites/binding/favorite_binding.dart';
import 'package:ecommerce_app_ui/modules/favorites/view/favorite_page.dart';
import 'package:ecommerce_app_ui/modules/filters/view/filters_page.dart';
import 'package:ecommerce_app_ui/modules/forgotpassword/view/forgot_password_page.dart';
import 'package:ecommerce_app_ui/modules/home/binding/home_binding.dart';
import 'package:ecommerce_app_ui/modules/login/view/login_page.dart';
import 'package:ecommerce_app_ui/modules/home/view/home_page.dart';
import 'package:ecommerce_app_ui/modules/profile/view/profile_page.dart';
import 'package:ecommerce_app_ui/modules/settings/binding/settings_binding.dart';
import 'package:ecommerce_app_ui/modules/settings/view/settings_page.dart';
import 'package:ecommerce_app_ui/modules/shop/binding/shop_binding.dart';
import 'package:ecommerce_app_ui/modules/shop/view/shop_page.dart';
import 'package:ecommerce_app_ui/modules/signup/view/signup_page.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

final routePages = [
  GetPage(name: Routes.SIGNUP, page: () => const SignUpPage()),
  GetPage(name: Routes.LOGIN, page: () => const LoginPage()),
  GetPage(name: Routes.FORGOTPASSWORD, page: () => const ForgotPasswordPage()),
  GetPage(
    name: Routes.HOME,
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.BAG,
    page: () => const BagPage(),
    binding: BagBinding(),
  ),
  GetPage(
    name: Routes.FAVORITES,
    page: () => const FavoritePage(),
    binding: FavoriteBinding(),
  ),
  GetPage(name: Routes.PROFILE, page: () => const ProfilePage()),
  GetPage(
    name: Routes.CONTAINER,
    page: () => const ContainerPage(),
    bindings: [
      ContainerBinding(),
      ShopBinding(),
      FavoriteBinding(),
      BagBinding(),
      HomeBinding(),
    ],
  ),
  GetPage(name: Routes.FILTERS, page: () => const FiltersPage()),
  GetPage(
    name: Routes.BRAND,
    page: () => const BrandPage(),
    binding: BrandBinding(),
  ),
  GetPage(
    name: Routes.DETAIL,
    page: () => const DetailProductPage(),
    binding: DetailBinding(),
  ),
  GetPage(
    name: Routes.SHOP,
    page: () => const ShopPage(),
    binding: ShopBinding(),
  ),
  GetPage(
    name: Routes.SETTINGS,
    page: () => const SettingsPage(),
    binding: SettingsBinding(),
  ),
];
