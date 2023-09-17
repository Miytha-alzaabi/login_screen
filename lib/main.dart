import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              

                RichText(text: TextSpan(
                  text: "FACI",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                  children: <TextSpan>[
                  TextSpan(text: "O",
                   style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                    )
                    ),
      
                 ],
                )
                ),
        
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined)
                  ),
                ),

                 TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline)
                  ),
                ),
                
                Row(
                  
                  children: <Widget>[

                     Icon(Icons.check_circle_outline_outlined,
                     color: Colors.greenAccent,),
                     SizedBox(width: 5,),

                    // Expanded(
                    //     child: Icon(Icons.check_circle_outline_outlined)
                    //   ),


                    Expanded(
                      flex: 2,
                      child: Text(
                      "Remeber me",
                      ),
                      ),

                      Expanded(child: Text(
                      "Forgot PassWord?",
                      style: TextStyle(
                        color: Colors.greenAccent
                      ),
                      ),
                      ),

                  ],
                ),

                // ElevatedButton(onPressed: (){},
                //  child: Text("LOGIN", ),
                //  ),

                //BUTTON

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  width: 450,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 233, 125),
                    borderRadius: BorderRadius.circular(10) 
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  //color: Color.fromARGB(255, 10, 233, 125),
                ),

                //Text("Don't have an account?"),

                RichText(text: TextSpan(
                  text: "Don't have an account? ",
                  children: <TextSpan>[
                  TextSpan(text: 'Signup here',
                   style: TextStyle(
                    color: Colors.greenAccent,
                    //fontWeight: FontWeight.bold
                    )
                    ),
      
                 ],
                )
                ),

//                 Checkbox(
//   value: true,
//   onChanged: (_){},
//   fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
//     if (states.contains(MaterialState.disabled)) {
//       return Colors.orange.withOpacity(.32);
//     }
//     return Colors.orange;
//   })
// )


        
        
            ],
          ),
        ),
      ),
    );
  }
}