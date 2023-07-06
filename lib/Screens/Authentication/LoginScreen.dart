import 'package:flutter/material.dart';


import '../HomePageScreen/HomeScreen.dart';
import '../widgets/fornWidget.dart';
import 'RegisterScreen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: non_constant_identifier_names
   TextEditingController? _Loginusername;
   TextEditingController? _passwordController;
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      leading: Text(''),
      backgroundColor: Colors.blue,
      title: Text("Wearable Wellness Checker")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height*0.02,),
            Center(
              child: Container(
                height: size.height*0.2,
                width: size.width*0.26,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/logoWWC.png"),
                ),
              ),
            ),
            Text("Enter user details to login", style: TextStyle(fontSize: size.height*0.029, color: Color.fromARGB(179, 0, 0, 0)),),
          SizedBox(height: size.height*0.04,),
          
          // the form field section
          // 
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextFormField(
                    controller: _Loginusername,
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      )
                    ),
                        validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                  ),
           ),
               SizedBox(height: size.height*0.02,),
       
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10),
                   child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))
                      )
                    ),
                     validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                               ),
                 ),
            // end of form field
            // 
              SizedBox(height: size.height*0.05,),
            LoginButton(),
              SizedBox(height: size.height*0.02,),
              Text("New to WWC?"),
              SizedBox(height: size.height*0.02,),
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                    return RegisterScreen();
                  }));
              },
              child: Container(
                        height: size.height*0.09,
                        width: size.width*0.8,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("CREATE ACCOUNT", style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height*0.023,
                        ),)),
                      ),
            )
          ],
        ),
      )
      ,);
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
                child: InkWell(
                  onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                       }));
                  },
                  child: Container(
                    height: size.height*0.09,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("LOGIN", style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height*0.023,
                    ),)),
                  ),
                ),
              );
  }
}
 
