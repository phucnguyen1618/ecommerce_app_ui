import 'package:ecommerce_app_ui/modules/bag/view/bag_page.dart';
import 'package:ecommerce_app_ui/modules/container/controller/main_container_controller.dart';
import 'package:ecommerce_app_ui/modules/favorites/view/favorite_page.dart';
import 'package:ecommerce_app_ui/modules/home/view/home_page.dart';
import 'package:ecommerce_app_ui/modules/profile/view/profile_container_page.dart';
import 'package:ecommerce_app_ui/modules/shop/view/shop_container_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainContainerPage extends StatelessWidget {
  const MainContainerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainContainerController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          ShopContainerPage(),
          BagPage(),
          FavoritePage(),
          ProfileContainerPage(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (index) {
              controller.onItemMenuClicked(index);
            },
            elevation: 0.0,
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                ),
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_cart,
                ),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_bag,
                ),
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                ),
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                ),
                icon: Icon(
                  Icons.person_outlined,
                ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.isItemClicked.value),
      ),
    );
  }
}
