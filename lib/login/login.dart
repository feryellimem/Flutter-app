import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(),
            _inputField(),
            _forgetPassword(),
            _SignUp(context),
          ],
        ),
      ),
    );
  }

  _header() {
    return Column(
      children: [
        Text(
          "Welcom Back !!",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          "Entrer your credential to login!!",
        ),
      ],
    );
  }

  _inputField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              hintText: "User Name",
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
            decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password),
                fillColor: Colors.purple.withOpacity(0.1),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none))),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: StadiumBorder()),
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  _forgetPassword() {
    return TextButton(
      onPressed: () => {},
      child: Text(
        "Forget Password",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _SignUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account ?"),
        TextButton(
          onPressed: () => {
            Navigator.pop(context)
          },
          
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.purple),
          ),
        )
      ],
    );
  }
}
