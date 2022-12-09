// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:formz/formz.dart';

// enum PasswordInputError {
//   noDigit,
//   toShort,
//   noUppercase,
// }

// class PasswordInput extends FormzInput<String, PasswordInputError> {
//   const PasswordInput.pure() : super.pure('');
//   const PasswordInput.dirty([String value = '']) : super.dirty(value);

//   @override
//   PasswordInputError? validator(String value) {
//     if (value.length < 8) return PasswordInputError.toShort;
//     if (value.contains(RegExp(r'[0-9]'))) return PasswordInputError.noDigit;
//     if (value.contains(RegExp(r'[A-Z]'))) return PasswordInputError.noUppercase;

//     return null;
//   }
// }

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // return BlocListener<LoginBloc, LoginState>(
    //   listener: (context, state) {
    //     if (_formkey.currentState!.validate()) {
    //       var status = state.status;
    //       if (status is SubmittingSuccess) {
    //         _snackBar(context, "LogIn Success");
    //         print("going to profi");
    //         if (status.role == 'ADMIN') {
    //           context.go('/admin');
    //         } else {
    //           context.go("/userProfile");
    //         }
    //       }
    //       if (status is SubmittingFailure) {
    //         var msg = state.status;
    //         _snackBar(context, status.exception);
    //         // context.read<LoginBloc>().add(const LoginSubmitted());
    //       }
    //     }
    //   },
    //   child:
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
                    _UserIdInput(),
                    const Padding(padding: EdgeInsets.all(12)),
                    _PasswordInput(),
                    const Padding(padding: EdgeInsets.all(12)),
                    _loginButton(_formkey, context),

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
  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginBloc, LoginState>(
    //   buildWhen: (previous, current) => previous.userId != current.userId,
    //   builder: (context, state) {
    return TextFormField(
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
      // onChanged: (userId) =>
      // context.read<LoginBloc>().add(LoginUserIdChanged(userId)),
    );
  }
}

class _PasswordInput extends StatefulWidget {
  @override
  State<_PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginBloc, LoginState>(
    //   buildWhen: (previous, current) => previous.password != current.password,
    //   builder: (context, state) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 8) {
          return "Password to short";
        } else if (!value.contains(RegExp(r'[0-9]'))) {
          return "Password should container numbers";
        } else if (!value.contains(RegExp(r'[A-Z]'))) {
          return "Password should container uppercase";
        }
        // if (value!.length < 8) {
        //   return "Invalid password";
        // }
        //  else {
        return null;
        // }
      },
      //  =>
      //     state.isPasswordValid ? null : "Invalid Password",
      cursorColor: Colors.black,
      maxLength: 20,
      obscureText: _passwordVisible,
      decoration: InputDecoration(
        // errorText: state.password ? 'invalid password' : null,
        icon: Icon(Icons.lock),

        labelText: 'password',
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 17, 17, 17),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
    // onChanged: (password) =>
    // context.read<LoginBloc>().add(LoginPasswordChanged(password)),
  }
}

Widget _loginButton(formkey, context) {
  // @override
  // Widget build(BuildContext context) {
  // return BlocBuilder<LoginBloc, LoginState>(
  //   buildWhen: (previous, current) => previous.status != current.status,
  //   builder: (context, state) {
  //     return state.status is FormSubmitting
  //         ? const CircularProgressIndicator()
  //         :
  return ElevatedButton(
    onPressed: () {
      if (formkey.currentState!.validate()) {
        // If the form is valid, display a snackbar. In the real world,
        // you'd often call a server or save the information in a database.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Processing Data')),
        );
      }
      // if (_formkey.currentState.validate()) {
      //   context.read<LoginBloc>().add(const LoginSubmitted());
      //   var status = state.status;
      // }
    },
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: const Text("SIGN IN"),
  );
  // },
  // );
}
// // }

// void _snackBar(context, message) {
//   Color color;
//   message == "LogIn Success" ? color = Colors.blue : color = Colors.red;
//   final snackBar = SnackBar(
//     backgroundColor: color,
//     content: Text('$message'),
//   );

//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   // context.go("/signUp");
// }
