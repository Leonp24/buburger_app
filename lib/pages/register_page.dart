import 'package:buburger_app/pages/login_page.dart';
import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: MediaQuery.of(context).size.height * 0.05),
        child: ListView(
          children: [
            Text("Register", style: blackTextstyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),),

            SizedBox(
              height: 10,
            ),

            Text("Buat akun untuk mulai pesan.", style: greyTextstyle,),

            SizedBox(
              height: 20,
            ),

            Text(
              "Nama Lengkap",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Nama Lengkap",
                hintStyle: borderTextstyle,
              ),
            ),

            SizedBox(
              height: 20,
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
              "Nomor Telepon",
              style: blackTextstyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Nama Lengkap",
                hintStyle: borderTextstyle,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "Buat Password",
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
                suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility_off),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: borderColor),
                ),
                hintText: "Masukkan Nama Lengkap",
                hintStyle: borderTextstyle,
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Container(
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: primaryColor),
                onPressed: null,
                child: Text("Buat Akun", style: blackTextstyle,),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(" Masuk", style: secondaryTextstyle,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}