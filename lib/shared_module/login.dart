import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
/*
  _login() async {
    var data = {
      // 'email' : email.text,
      // 'password':password.text,
    };
    //  debugPrint(f_nameController.text);

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Text('Your Therapist',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001E6C),
                  )),
              SizedBox(
                height: 15.0,
              ),
              Image(
                image: NetworkImage(
                    "https://www.asianmhc.org/wp-content/uploads/2021/07/amhc_illustration.png"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF001E6C),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF001E6C),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF001E6C),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  //_login();
                  Navigator.pushNamed(context, "/homelayout");
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF001E6C)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/resetpassword");
                    },
                    child: Text(
                      " Forgot Password ?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //fontFamily: "myfont",
                          color: Color(0xFF001E6C)),
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an accout? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signup1");
                      },
                      child: Text(
                        " SIGNUP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            //fontFamily: "myfont",
                            color: Color(0xFF001E6C)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
