part of 'favorite_page.dart';

extension FavoritePageChildren on FavoritePage {
  PreferredSizeWidget buildCustomAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(130.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                color: const Color(0xFFF9F9F9),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => controller.onFilterProductClicked(),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.filter_list,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Filters',
                            style:
                            TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.showBottomSheetSortBy(),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.import_export,
                            color: Colors.black,
                          ),
                          Obx(
                                () => Text(
                              controller.contentSortBy.value,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.onChangeLayout(),
                      child: Obx(
                            () => controller.isChangeLayout.value
                            ? const Icon(
                          Icons.list,
                          color: Colors.black,
                        )
                            : const Icon(
                          Icons.view_module,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}