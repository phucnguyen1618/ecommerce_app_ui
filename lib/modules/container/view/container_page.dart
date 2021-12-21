import 'package:ecommerce_app_ui/modules/bag/bag_page.dart';
import 'package:ecommerce_app_ui/modules/container/controller/container_controller.dart';
import 'package:ecommerce_app_ui/modules/favorites/favorite_page.dart';
import 'package:ecommerce_app_ui/modules/home/view/home_page.dart';
import 'package:ecommerce_app_ui/modules/profile/view/profile_page.dart';
import 'package:ecommerce_app_ui/modules/shop/view/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContainerController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            ShopPage(),
            BagPage(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.isItemClicked.value,
            onTap: (currentIndex) {
              controller.onItemMenuClicked(currentIndex);
            },
          ),
        ));
  }
}
