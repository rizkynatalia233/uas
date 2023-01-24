import 'package:flutter/material.dart';
import 'package:project_rizky_natalia/hobby.dart';
import 'aboutme.dart';
import 'email.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Biodata",
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  final String _fullName = "Rizky Natalia";
  final String _status = "Mahasiswa";
  final String _bio = "";

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 3.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.2,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.only(right: 4, bottom: 20),
              child: InkWell(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const email()))
                },
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color.fromARGB(255, 50, 134, 47),
                  ),
                  child: Center(
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(right: 4, bottom: 20),
              child: InkWell(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const hobby()))
                },
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color.fromARGB(255, 50, 134, 47),
                  ),
                  child: Center(
                    child: Text(
                      "Hobby",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Card(
              margin: const EdgeInsets.only(right: 4, bottom: 40),
              child: InkWell(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const aboutme()))
                },
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Color.fromARGB(255, 50, 134, 47),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "AbotMe",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 6.4),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  SizedBox(
                    height: 8.0,
                  ),
                  _buildGetInTouch(context),
                  SizedBox(height: 8.0),
                  _buildButtons(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
