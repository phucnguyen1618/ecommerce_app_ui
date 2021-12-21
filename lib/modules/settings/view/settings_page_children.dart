part of 'settings_page.dart';

extension SettingsPageChildren on SettingsPage {
  Widget buildColumnPersonalInfor(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 32.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          hintText: 'Mr.Muffin',
          hintStyle: const TextStyle(color: Colors.black, fontSize: 14.0),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildColumnChangePassword() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () => controller.onChangePassword(),
              child: const Text(
                'Change',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Mr.Muffin',
              hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildColumnNotification() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 32.0,),
        Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListTile(
          title: Text(
            'Sales',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          trailing: Switch(
            value: true,
            onChanged: null,
          ),
        ),
        ListTile(
          title: Text(
            'New arrivals',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Delivery status changes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
