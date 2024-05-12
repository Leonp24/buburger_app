import 'package:buburger_app/pages/register_page.dart';
import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height * 0.10),
        child: ListView(
          children: [
            Text(
              "Masuk",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              "Masuk dengan akun yang terdaftar.",
              style: greyTextstyle.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(
              height: 28,
            ),

            Text(
              "Email",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Email",
                hintStyle: borderTextstyle,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "Password",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.visibility_off),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Password",
                hintStyle: borderTextstyle,
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // lupa password?
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Lupa Password?", style: secondaryTextstyle,),
            ),

            SizedBox(
              height: 50,
            ),

            // button
            Container(
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: null,
                child: Text("Masuk", style: blackTextstyle,),
              ),
            ),

            SizedBox(
              height: 120,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                  child: Text(" Daftar", style: secondaryTextstyle,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
