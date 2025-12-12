import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem({required int total, required String name}) {
    return Column(
      children: [
        Text(
          '$total',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange,
          ),
        ),
        Text(name, style: const TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget itemTappedTile({
    required String title,
    String? subTitle,
    required IconData icon,
  }) {
    return ListTile(
      title: Text(title),
      subtitle: subTitle != null ? Text(subTitle) : null,
      leading: Icon(icon, size: 30, color: Colors.deepOrange),
      trailing: const Icon(
        Icons.chevron_right,
        size: 25,
        color: Colors.deepOrange,
      ),
      onTap: () => debugPrint('Hello'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpeg'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            'Nizar Omar',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.height * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(total: 50, name: 'Orders'),
              orderVoucherItem(total: 10, name: 'Vouchers'),
            ],
          ),
          SizedBox(height: 24.0),
          const Divider(thickness: 2, indent: 20, endIndent: 20),

          itemTappedTile(title: 'Previous orders', icon: Icons.shopping_cart),
          const Divider(thickness: 2, indent: 20, endIndent: 20),
          itemTappedTile(
            title: 'Available vouchers',
            icon: Icons.card_giftcard,
          ),
          const Divider(thickness: 2, indent: 20, endIndent: 20),
        ],
      ),
    );
  }
}
