import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_first_app/pages/bin_Status.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:my_first_app/pages/profile.dart';
//import 'package:Smart_bin_app/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> logout() async {
    // FirebaseAuth.instance.signOut();
    final GoogleSignIn googleSign = GoogleSignIn();
    await googleSign.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () async {
              await logout();
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
            },
            icon: Icon(Icons.logout),
            color: Colors.black,
          )
        ],
        title: const Text(
          "CLEAN ENVIRO",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 207, 114, 93),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
              backgroundColor: Color.fromARGB(255, 128, 0, 0),
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 202, 117, 117),
              gap: 8,
              padding: EdgeInsets.all(5.0),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.message,
                  text: "Message",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.notifications,
                  text: "Notify",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.feedback,
                  text: "Feedback",
                  textColor: Color.fromARGB(255, 128, 0, 0),
                  iconColor: Colors.white,
                ),
              ]),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 128, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                  child: Image.asset("assets/images/waste home.jpeg",
                      height: 200, width: 350)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(Icons.location_on),
                label: const Text('Location'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                icon: const Icon(Icons.login),
                label: const Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                icon: const Icon(Icons.people),
                label: const Text('User Profile'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/feedback');
                },
                icon: const Icon(Icons.feedback),
                label: const Text('Feedback'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/rewards');
                },
                icon: const Icon(Icons.monetization_on),
                label: const Text('Rewards'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 75,
              width: 350,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 117, 117),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => binStatus()),
                  );
                },
                label: const Text('Bin Details'),
                icon: const Icon(
                  Icons.recycling,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
