import 'package:flutter/material.dart';

class UserMenue extends StatelessWidget {
  final String routeName = "./UserMenue";

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/stack_layer1.png",
            width: mediaQuery.size.width,
          ),
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              onPressed: () => {}),
                          Text(
                            "sign out",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    width: 400,
                    height: 80,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/worker.png',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'user name',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 33),
                            ),
                            Text(
                              '+200100014244',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*.80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20.0,
                      left: 20.0,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'this text after will have some data that take alot of space here so be care about that',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        InkWell(
                          child: ListTile(
                            leading: Icon(Icons.favorite_outline),
                            title: Text('favourite'),

                            trailing:Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        InkWell(
                          child: ListTile(
                            leading: Icon(Icons.star_border),
                            title: Text('rate the app'),

                            trailing:Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        InkWell(
                          child: ListTile(
                            leading: Icon(Icons.supervised_user_circle_outlined),
                            title: Text('client services'),

                            trailing:Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        InkWell(
                          child: ListTile(
                            leading: Icon(Icons.lock_outline),
                            title: Text('privacy policy'),

                            trailing:Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        InkWell(
                          child: ListTile(
                            leading: Icon(Icons.help_outline),
                            title: Text('help'),

                            trailing:Icon(Icons.arrow_forward_ios),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
