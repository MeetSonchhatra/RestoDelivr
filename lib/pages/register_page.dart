import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfields.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwdcontroller = TextEditingController();
  final TextEditingController confrmpasswdcontroller = TextEditingController();


  void register() async {
    final _authService = AuthService();
    if(passwdcontroller.text == confrmpasswdcontroller.text)
    {
      try {
        await _authService.signupWithEmailandPassword(emailcontroller.text, passwdcontroller.text);
      }

      // catch (e) {
      //   showDialog(context: context, 
      //   builder: (context) => AlertDialog(
      //     title: Text(e.toString()),
      //   )
      //   );
      // }
      catch (e) {
  // Check if the state is still mounted before showing the dialog
  if (mounted) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {  // Re-check in case the widget got unmounted during the frame
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    });
  }
}

    }

    else
    {
      showDialog(context: context,
      builder: (context) => AlertDialog(
        title: Text("Passwords do not match"),
      )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Lets create an account for You ',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: emailcontroller,
              hinttext: "Email",
              obscureText: false),
          SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: confrmpasswdcontroller,
              hinttext: "Confirm Password",
              obscureText: true),
          SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: passwdcontroller,
              hinttext: "Password",
              obscureText: true),
          SizedBox(
            height: 20,
          ),
          MyButton(
            text: "Sign UP",
            onTap: register,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account ? ",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login Here",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
