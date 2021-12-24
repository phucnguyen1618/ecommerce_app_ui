import 'package:ecommerce_app_ui/modules/container/controller/container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerPage extends StatelessWidget {
  final int selectIndex;
  final Widget child;
  const ContainerPage({Key? key, required this.selectIndex, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContainerController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: child,
        bottomNavigationBar:  BottomNavigationBar(
            onTap:(index){
              controller.onMoveToPage(index);
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
            currentIndex:selectIndex
          ),
        );
  }
}
