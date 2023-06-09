import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key});
  
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            toolbarHeight: 48,
            title: const Text('Quản lý'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.coffee_outlined),
            title: const Text('Sản phẩm'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                ProductAdministration.routeName
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.local_atm_outlined),
            title: const Text('Đơn hàng'),
            onTap:() {
              Navigator.of(context)
                .pushReplacementNamed(
                  OrderAdministration.routeName
                );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Đăng xuất'),
            onTap: () {
              Navigator.of(context)
                .pushReplacementNamed('/');
                context.read<AuthManager>().logout();
            },
          )
        ],
      ),
    );
  }    
}