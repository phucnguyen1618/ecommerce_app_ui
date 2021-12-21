import 'package:ecommerce_app_ui/modules/brand/view/brand_page.dart';
import 'package:ecommerce_app_ui/modules/container/view/container_page.dart';
import 'package:ecommerce_app_ui/modules/detail/view/detail_product_page.dart';
import 'package:ecommerce_app_ui/modules/filters/filters_page.dart';
import 'package:ecommerce_app_ui/modules/forgotpassword/view/forgot_password_page.dart';
import 'package:ecommerce_app_ui/modules/login/view/login_page.dart';
import 'package:ecommerce_app_ui/modules/home/view/home_page.dart';
import 'package:ecommerce_app_ui/modules/settings/view/settings_page.dart';
import 'package:ecommerce_app_ui/modules/signup/view/signup_page.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

final routePages = [
  GetPage(name: Routes.SIGNUP, page: () => const SignUpPage()),
  GetPage(name: Routes.LOGIN, page: () => const LoginPage()),
  GetPage(name: Routes.FORGOTPASSWORD, page: () => const ForgotPasswordPage()),
  GetPage(name: Routes.HOME, page: () => const HomePage()),
  GetPage(name: Routes.SHOP, page: () => const HomePage()),
  GetPage(name: Routes.BAG, page: () => const HomePage()),
  GetPage(name: Routes.FAVORITES, page: () => const HomePage()),
  GetPage(name: Routes.PROFILE, page: () => const HomePage()),
  GetPage(name: Routes.CONTAINER, page: () => const ContainerPage()),
  GetPage(name: Routes.FILTERS, page: () => const FiltersPage()),
  GetPage(name: Routes.BRAND, page: () => const BrandPage()),
  GetPage(name: Routes.DETAIL, page: () => const DetailProductPage()),
  GetPage(name: Routes.SETTINGS, page: () => const SettingsPage()),
];