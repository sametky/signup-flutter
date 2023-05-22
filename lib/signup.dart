import 'package:flutter/material.dart';
void main() {
  runApp(SignUp());
}
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController kadi = TextEditingController();
  TextEditingController sifre = TextEditingController();
  String uyari = "";

  void giris() {
    if (kadi.text == "" && sifre.text == "") {
      setState(() {
        uyari = "Kullanıcı Adı ve/veya Şifre Boş Olamaz!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Deneme"),),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: kadi,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: sifre,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () => giris(), child: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.login,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("KAYIT OL", style: TextStyle(fontSize: 30)),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 20,),
                Text("Üyeseniz "),
                SizedBox(height: 20,),
                TextButton(onPressed: () {}, child: Text("Giriş Yap")),
                SizedBox(height: 20,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {},
                        icon: Icon(Icons.facebook, size: 50,),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("$uyari", style: TextStyle(color: Colors.red),),

              ],
            ),
          ),
        ),

      ),
    );
  }
}