import 'package:ecommerce_app_ui/modules/bag/binding/bag_binding.dart';
import 'package:ecommerce_app_ui/modules/bag/view/bag_page.dart';
import 'package:ecommerce_app_ui/modules/brand/binding/brand_binding.dart';
import 'package:ecommerce_app_ui/modules/brand/view/brand_page.dart';
import 'package:ecommerce_app_ui/modules/checkout/binding/checkout_binding.dart';
import 'package:ecommerce_app_ui/modules/checkout/view/checkout_page.dart';
import 'package:ecommerce_app_ui/modules/container/binding/main_container_binding.dart';
import 'package:ecommerce_app_ui/modules/container/view/main_container_page.dart';
import 'package:ecommerce_app_ui/modules/detail/binding/detail_binding.dart';
import 'package:ecommerce_app_ui/modules/detail/view/detail_product_page.dart';
import 'package:ecommerce_app_ui/modules/detail/view/order_detail_page.dart';
import 'package:ecommerce_app_ui/modules/favorites/binding/favorite_binding.dart';
import 'package:ecommerce_app_ui/modules/favorites/view/favorite_page.dart';
import 'package:ecommerce_app_ui/modules/filters/view/filters_page.dart';
import 'package:ecommerce_app_ui/modules/forgotpassword/view/forgot_password_page.dart';
import 'package:ecommerce_app_ui/modules/home/binding/home_binding.dart';
import 'package:ecommerce_app_ui/modules/login/view/login_page.dart';
import 'package:ecommerce_app_ui/modules/home/view/home_page.dart';
import 'package:ecommerce_app_ui/modules/order/view/my_order_page.dart';
import 'package:ecommerce_app_ui/modules/payment/view/payment_method_page.dart';
import 'package:ecommerce_app_ui/modules/profile/binding/profile_container_binding.dart';
import 'package:ecommerce_app_ui/modules/profile/view/profile_container_page.dart';
import 'package:ecommerce_app_ui/modules/rating_review/binding/rating_review_binding.dart';
import 'package:ecommerce_app_ui/modules/rating_review/view/rating_review_page.dart';
import 'package:ecommerce_app_ui/modules/settings/binding/settings_binding.dart';
import 'package:ecommerce_app_ui/modules/settings/view/settings_page.dart';
import 'package:ecommerce_app_ui/modules/shipping/view/shipping_address_page.dart';
import 'package:ecommerce_app_ui/modules/shop/binding/shop_binding.dart';
import 'package:ecommerce_app_ui/modules/shop/view/shop_container_page.dart';
import 'package:ecommerce_app_ui/modules/signup/view/signup_page.dart';
import 'package:ecommerce_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

final routePages = [
  GetPage(name: Routes.SIGNUP, page: () => const SignUpPage()),
  GetPage(name: Routes.LOGIN, page: () => const LoginPage()),
  GetPage(name: Routes.FORGOTPASSWORD, page: () => const ForgotPasswordPage()),
  GetPage(
    name: Routes.MAIN_CONTAINER,
    page: () => const MainContainerPage(),
    bindings: [
      MainContainerBinding(),
      HomeBinding(),
      ShopBinding(),
      FavoriteBinding(),
      BagBinding(),
      ProfileContainerBinding(),
    ],
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomePage(),
    bindings: [
      HomeBinding(),
      ShopBinding(),
    ],
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
  GetPage(
    name: Routes.PROFILE_CONTAINER,
    page: () => const ProfileContainerPage(),
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
    name: Routes.SHOP_CONTAINER,
    page: () => const ShopContainerPage(),
    binding: ShopBinding(),
  ),
  GetPage(
    name: Routes.SETTINGS,
    page: () => const SettingsPage(),
    binding: SettingsBinding(),
  ),
  GetPage(name: Routes.MY_ORDER, page: () => const MyOrderPage()),
  GetPage(name: Routes.ORDER_DETAIL, page: () => const OrderDetailPage()),
  GetPage(
    name: Routes.RATING_REVIEW,
    page: () => const RatingReviewPage(),
    binding: RatingReviewBinding(),
  ),
  GetPage(
    name: Routes.CHECKOUT,
    page: () => const CheckOutPage(),
    binding: CheckOutBinding(),
  ),
  GetPage(
    name: Routes.PAYMENT,
    page: () => const PaymentMethodPage(),
  ),
  GetPage(
    name: Routes.SHIPPING,
    page: () => const ShippingAddressPage(),
  ),
];
