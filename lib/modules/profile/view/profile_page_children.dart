part of 'profile_page.dart';

extension ProfilePageChildren on ProfilePage {
  Widget buildRowInforPerson() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            child: Text(
              'P',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Matilda Brown',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'matildabrown@mail.com',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuSettingProfile(ProfileContainerController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'My orders',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Already have 12 orders',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
            onTap: () => controller.onItemMenuClicked(),
          ),
          const ListTile(
            title: Text(
              'Shipping addresses',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '3 addresses',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
          ),
          const ListTile(
            title: Text(
              'Payment methods',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Via ***88',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
          ),
          const ListTile(
            title: Text(
              'Promocodes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'You have special promocodes',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
          ),
          const ListTile(
            title: Text(
              'My reviews',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Reviews for 4 items',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
          ),
          ListTile(
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Notifications password',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF9B9B9B),
            ),
            onTap: () => controller.onSettingsClicked(),
          ),
        ],
      ),
    );
  }
}
