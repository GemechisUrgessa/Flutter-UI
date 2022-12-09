import 'package:flutter/material.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final _formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    passwordController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
          child: SizedBox(
            width: 300,
            child: ListView(
              padding: const EdgeInsets.only(top: 50),
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/Login_img.webp"),
                        ),
                      ),
                    ),

                    // const Icon(Icons.person_pin, size: 90),
                    const Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text("Login to continue"),
                    const SizedBox(height: 30),
                    _UserIdInput(userNameController: userNameController),
                    const Padding(padding: EdgeInsets.all(12)),
                    _PasswordInput(passwordController: passwordController),
                    const Padding(padding: EdgeInsets.all(12)),
                    _loginButton(_formkey, context, passwordController,
                        userNameController),

                    const SizedBox(height: 30),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                      // onTap: () => context.go("/signUp"),
                      child: const Text(
                        " SIGN UP",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // }
    );
  }
}

class _UserIdInput extends StatelessWidget {
  var userNameController;

  _UserIdInput({Key? key, this.userNameController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userNameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 4) {
          return "UserName too short";
        } else {
          return null;
        }
      },
      // => state.isUserIdValid ? null : "Invalid userId",
      cursorColor: Colors.black,
      maxLength: 20,
      decoration: const InputDecoration(
        // errorText: state.username.invalid ? 'invalid username' : null,
        icon: Icon(Icons.person_outline),
        focusColor: Colors.green,
        fillColor: Colors.green,
        labelText: 'UserId',
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 18, 18, 19),
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class _PasswordInput extends StatefulWidget {
  _PasswordInput({Key? key, this.passwordController}) : super(key: key);
  var passwordController;
  @override
  State<_PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 8) {
          return "Password to short";
        } else if (!value.contains(RegExp(r'[0-9]'))) {
          return "Password should container numbers";
        } else if (!value.contains(RegExp(r'[A-Z]'))) {
          return "Password should container uppercase";
        }

        return null;
        // }
      },
      cursorColor: Colors.black,
      maxLength: 20,
      obscureText: _passwordVisible,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'password',
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 17, 17, 17),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

Widget _loginButton(formkey, context, passwordController, userNameController) {
  var isSubmit = false;
  return ElevatedButton(
    onPressed: () {
      if (formkey.currentState!.validate()) {
        print(passwordController.text);
        print(userNameController.text);
        isSubmit = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.blue, content: Text('Processing Data')),
        );
      }
    },
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: isSubmit ? const CircularProgressIndicator() : const Text("SIGN IN"),
  );
}
