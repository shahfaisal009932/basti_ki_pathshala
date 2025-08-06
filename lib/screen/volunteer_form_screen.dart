import 'package:basti_ngo/widgets/cumtom_drawer.dart';
import 'package:flutter/material.dart';

class VolunteerFormScreen extends StatefulWidget {
  const VolunteerFormScreen({super.key});

  @override
  State<VolunteerFormScreen> createState() => _VolunteerFormScreenState();
}

class _VolunteerFormScreenState extends State<VolunteerFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '', phone = '', city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text('Volunteer Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (val) => name = val ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone'),
                keyboardType: TextInputType.phone,
                onSaved: (val) => phone = val ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'City'),
                onSaved: (val) => city = val ?? '',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Thanks $name, we\'ll contact you soon!')),
                  );
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
