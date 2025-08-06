import 'package:basti_ngo/screen/home_screen.dart';
import 'package:basti_ngo/screen/volunteer_form_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('NGO App', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.volunteer_activism),
            title: const Text('Volunteer Form'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const VolunteerFormScreen()));
            },
          ),
        ],
      ),
    );
  }
}
