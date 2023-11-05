import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  var focusNodeKelas = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;
  bool isFocusedKelas = false;
  String nim = '';
  String password = '';
  String kelas = '';

  @override
  void initState() {
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });
    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    focusNodeKelas.addListener(() {
      setState(() {
        isFocusedKelas = focusNodeKelas.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 36,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ayo Coba aplikasi',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Selamat Datang Kembali.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Silahkan Masukkan NIM, Password dan Kelas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'NIM',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color:
                            isFocusedEmail ? Colors.white : Color(0xFFF1F0F5),
                        border: Border.all(width: 1, color: Color(0xFFD2D2D4)),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          if (isFocusedEmail)
                            BoxShadow(
                              color: Color(0xFF835DF1).withOpacity(.3),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            )
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your NIM',
                        ),
                        focusNode: focusNodeEmail,
                        onChanged: (value) {
                          nim = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: isFocusedPassword
                            ? Colors.white
                            : Color(0xFFF1F0F5),
                        border: Border.all(width: 1, color: Color(0xFFD2D2D4)),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          if (isFocusedPassword)
                            BoxShadow(
                              color: Color(0xFF835DF1).withOpacity(.3),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            )
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                        focusNode: focusNodePassword,
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kelas',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color:
                            isFocusedKelas ? Colors.white : Color(0xFFF1F0F5),
                        border: Border.all(width: 1, color: Color(0xFFD2D2D4)),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          if (isFocusedKelas)
                            BoxShadow(
                              color: Color(0xFF835DF1).withOpacity(.3),
                              blurRadius: 4.0,
                              spreadRadius: 2.0,
                            )
                        ],
                      ),
                      child: TextField(
                        style: TextStyle(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Kelas',
                        ),
                        focusNode: focusNodeKelas,
                        onChanged: (value) {
                          kelas = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print('NIM: $nim');
                              print('Password: $password');
                              print('Kelas: $kelas');
                            },
                            child: Text('Login'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistrationPage()));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Color(0xFF835DF1),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Text('This is the registration page.'),
      ),
    );
  }
}
