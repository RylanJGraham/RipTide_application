import 'package:flutter/material.dart';
import 'package:riptide/Screens/LoginScreens/Widgets/login_widget.dart';
import 'package:riptide/Screens/LoginScreens/Widgets/register_widget.dart';

class SignInSignUpPage extends StatefulWidget {
  @override
  _SignInSignUpPageState createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignInSignUpPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF14181B),
        body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(78, 20, 24, 27),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'images/AppImages/login/login_image.jpg',
                ).image,
              ),
            ),
            child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(122, 15, 17, 19),
                ),
                child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 16, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/AppImages/icons/WaveLogo.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(60, 40, 60, 0),
                                  child: TabBar(
                                    controller: _tabController,
                                    indicator: const BoxDecoration(),
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.grey,
                                    dividerColor: Colors.transparent,
                                    tabs: const [
                                      Tab(
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _tabController,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: LoginWidget(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: RegisterWidget(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )))));
  }
}
