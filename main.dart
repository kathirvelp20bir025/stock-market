import 'package:flutter/material.dart';
import 'package:investment/second.dart';

void main() => runApp(const MyAp());

class MyAp extends StatelessWidget {
  const MyAp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (isValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        leading: const Icon(Icons.filter_vintage),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text(
                "Stock Market ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value == null ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),

              //box styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              //text input
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value == null ||
                      !RegExp(r"^[market]+@[123]+").hasMatch(value)) {
                    return 'enter correct password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              ElevatedButton(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore
