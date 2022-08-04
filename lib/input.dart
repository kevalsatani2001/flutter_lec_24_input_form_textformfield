import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController.addListener(() {
      print(_emailController.text);
    });
    _passController.addListener(() {
      print(_passController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: 'email'),
                  validator: ((value) {
                    print(value);
                    if (value!.isEmpty) {
                      return 'Field cannot be empty';
                    }
                  }),
                ),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(hintText: 'password'),
                  validator: ((value) {
                    print(value);
                    if (value!.isEmpty) {
                      return 'Field cannot be empty';
                    }
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("SUCCESS");
                      }
                    },
                    child: const Text("Login"))
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }
}
