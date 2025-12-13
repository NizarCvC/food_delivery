import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem(
    BuildContext context, {
    required int total,
    required String name,
  }) {
    return Column(
      children: [
        Text(
          '$total',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
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
      leading: Icon(icon, size: 30),
      trailing: Icon(Icons.chevron_right, size: 25),
      onTap: () => debugPrint('Hello'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.025),
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
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.height * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(context, total: 50, name: 'Orders'),
              orderVoucherItem(context, total: 10, name: 'Vouchers'),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          const Divider(),
          itemTappedTile(title: 'Previous orders', icon: Icons.shopping_cart),
          const Divider(),
          itemTappedTile(
            title: 'Available vouchers',
            icon: Icons.card_giftcard,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
