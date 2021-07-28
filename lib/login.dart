import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column
              (
              children: [
                Expanded(child: halfScreen()),
                Expanded(child: secondHalfScreen()),

              ],
            ),
          ),
        );
      }
      Widget halfScreen()
      {
        return Container(
          width: double.maxFinite,

          decoration: BoxDecoration(
            borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0),
          ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [const Color(0xff0045a4 ), const Color(0xff5592e6)])),

          child: Stack(
            fit: StackFit.expand,
            children: [
               Center(child: Image.asset("assets/control.png",fit: BoxFit.fill,)),
              Align(alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                            child: Image.asset("assets/client.png",fit: BoxFit.fill, height: 50,width: 50,)),
                        Text('CLIENT', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column(              mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),

                            child: Image.asset("assets/staff.png",fit: BoxFit.fill,height: 50,width: 50,)),
                        Text('STAFF', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column( mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                     margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),



                            child: Image.asset("assets/supervisor.png",fit: BoxFit.fill,height: 50,width: 50,)),
                        Text('SUPERVISOR', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)

                      ],
                    ),

                    Column(              mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(                                     margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),



                            child: Image.asset("assets/manager.png",fit: BoxFit.fill,height: 50,width: 50,)
                        ),
                        Text('MANAGER', style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.center)
                        ,SizedBox(height: 20,)
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
      }
      Widget secondHalfScreen()
      {
        return Container(

          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: new TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue[800])),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        hintText: 'Enter Your Email',
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: const Color(0xFF1565C0),
                        ),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 30,right:30,top: 5,),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: new TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.blue[800])),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10),
                            ),
                            borderSide:
                            new BorderSide(color: Colors.blue[800])),
                        hintText: 'Enter Your Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: const Color(0xFF1565C0),
                        ),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 25),
                      child: TextButton(onPressed: () {  },
                      child: Text('Forgot Password', style: TextStyle(color: Colors.blue[800]),),))),
              SizedBox(height: 20,),
              Container(
                height: 45,
                margin: EdgeInsets.only(left: 35, right: 35),
                child: MaterialButton(
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  disabledColor: Colors.blue[800],
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.blue[800],
                  color: Colors.blue[800],
                  elevation: 4.0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 100, vertical: 7),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      showLoaderDialog(BuildContext context) {
        AlertDialog alert = AlertDialog(
          content: new Row(
            children: [
              CircularProgressIndicator(),
              Container(
                  margin: EdgeInsets.only(left: 7), child: Text("Logging In...")),
            ],
          ),
        );
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }

      // Future<bool> login() async {
      //   showLoaderDialog(context);
      //   var params = {
      //     "user_name": user_name.text,
      //     "password": password.text,
      //     "token": "asdf",
      //   };
      //   http.Response response = await http.post(Uri.parse(URL.LOGIN),
      //       body: jsonEncode(params),
      //       headers: {"Content-Type": "application/json"});
      //   var jsonResponse = jsonDecode(response.body);
      //
      //   bool status = jsonResponse['status'];
      //   SharedPreferences sharedUser = await SharedPreferences.getInstance();
      //
      //   if (status) {
      //     DB.instance.cleanDatabase();
      //     sharedUser?.setBool("isLoggedIn", true);
      //     String reporting_name = jsonResponse['reporting_name'] == null
      //         ? "Name"
      //         : jsonResponse['reporting_name'];
      //     LoginData loginUserData = new LoginData();
      //     User user = new User();
      //     Data data = new Data();
      //     Designation designation = new Designation();
      //     Department department = new Department();
      //     loginUserData.status = status ? 1 : 0;
      //     loginUserData.reporting_name = reporting_name;
      //     var dataVar = jsonResponse['data'];
      //     data = Data.fromJson(dataVar);
      //     // print(data.enroll_id);
      //     var userdata = jsonResponse['user'];
      //     user = User.fromJson(userdata);
      //
      //     var designationData = userdata['designation'];
      //     designation = Designation.fromJson(designationData);
      //     var departmentData = userdata['department'];
      //     department = Department.fromJson(departmentData);
      //     DB.instance.insertLoginData(loginUserData).then((value) => {});
      //     DB.instance.insertLoginUser(user).then((value) => {});
      //     DB.instance.insertLoginDataObject(data).then((value) => {
      //       Navigator.pop(context),
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => HomeScreen()),
      //       ),
      //     });
      //     DB.instance.insertDepartmentData(department).then((value) => {});
      //     DB.instance.insertDesignationData(designation).then((value) => {});
      //
      //     signInStatus = true;
      //   } else{
      //     print(status);
      //     Navigator.pop(context);
      //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(signInStatus: false)));
      //
      //     showApplyDialog(context, "Invalid Password Or Username!!");
      //
      //
      //   }
      //   return status;
      // }

}
