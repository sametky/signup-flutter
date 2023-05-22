import 'signup.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController kadi=TextEditingController();
  TextEditingController sifre=TextEditingController();
  String uyari="";
  void giris(){
    if(kadi.text=="" && sifre.text==""){
      setState(() {
        uyari="Kullanıcı Adı ve/veya Şifre Boş Olamaz!";
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
              color: Color.fromRGBO(255, 255, 255, 0.5),
              image: DecorationImage(
                fit: BoxFit.cover,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("./images/login2.jpg"),
              )),
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
                      width:10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("GİRİŞ YAP", style:TextStyle(fontSize:30)),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 20,),
                Text("Hala Üye Değil Misiniz? "),
                SizedBox(height: 20,),
                TextButton(onPressed: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()))
                    ,
                    child: Text("Üye Ol")),
                SizedBox(height: 20,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.facebook,size: 50,),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("$uyari",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),

              ],
            ),
          ),
        ),

      ),
    );
  }
}