// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  final String messName;

  const BookingPage({Key? key, required this.messName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Now - $messName'),
        backgroundColor:const Color.fromARGB(255, 194, 131, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BookingForm(),
      ),
    );
  }
}

class BookingForm extends StatefulWidget {
  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Enter your booking information:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(labelText: 'Your Name'),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(labelText: 'Email Address'),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _phoneController,
          decoration: const InputDecoration(labelText: 'Phone Number'),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
           
            _submitBooking(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:const Color.fromARGB(255, 194, 131, 233),
            padding: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Submit Booking',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  void _submitBooking(BuildContext context) {
   
    String name = _nameController.text;
    // String email = _emailController.text;
    // String phone = _phoneController.text;

    
    showDialog(
      context: context,
      builder: (context) {
      
        return AlertDialog(
          title: const Text('Booking Submitted'),
          content: Text('Thank you, $name! Your booking information has been submitted.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
                Navigator.pop(context); 
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
