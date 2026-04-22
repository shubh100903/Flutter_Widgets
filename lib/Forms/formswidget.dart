import 'package:flutter/material.dart';

class Formswidget extends StatefulWidget {
  const Formswidget({super.key});

  @override
  State<Formswidget> createState() => _FormswidgetState();
}

class _FormswidgetState extends State<Formswidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();

  //-------------------FUNCION TO VALIDATE AND SAVE THE FORM-------------------
  trySubmit() {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      _formkey.currentState!.save();
      submitForm();
    } else {
      print('Form is not valid');
    }
  }

  submitForm() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms Widget'),
        backgroundColor: Colors.green,
        elevation: 8.0,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                // First Name
                TextFormField(
                  decoration: InputDecoration(hintText: 'First Name'),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Please enter your first name';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),

                SizedBox(height: 20.0),

                // Last Name
                TextFormField(
                  key: ValueKey('lastname'),
                  decoration: InputDecoration(hintText: 'Last Name'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Please enter your last name';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),

                SizedBox(height: 20.0),

                // Email
                TextFormField(
                  key: ValueKey('email'),
                  decoration: InputDecoration(hintText: 'Email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value!.contains('@')) {
                      return 'Please enter a valid email or forget to mention @';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value!;
                  },
                ),

                SizedBox(height: 20.0),

                // Password
                TextFormField(
                  obscureText: true,
                  key: ValueKey('password'),
                  decoration: InputDecoration(hintText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    trySubmit();
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
