import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'images/background_mxpertz.jpg',
            fit: BoxFit.cover,
          ),
          // Container above bottom navigation bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // Adjust the bottom margin as needed
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 30, top: 40),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 42, 71),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildIconText(Icons.language, '      Language'),
                    SizedBox(
                      height: 8,
                    ),
                    _buildIconText(Icons.privacy_tip, '      Privacy Policy'),
                    SizedBox(
                      height: 8,
                    ),
                    _buildIconText(Icons.article, '      Terms of Use'),
                    SizedBox(
                      height: 8,
                    ),
                    _buildIconText(Icons.help, '      Help & Supports'),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '', // Empty string to remove label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forward_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        // Set the currentIndex to highlight the initially selected item
        // Handle item selection
        onTap: (index) {},
        // Set the selectedItemColor to change the border color of the selected icon
        selectedItemColor: Colors.yellow,
        // Add selectedIconTheme to provide an outline to the selected icons
        selectedIconTheme: IconThemeData(color: Colors.black, size: 24),
        unselectedItemColor: Colors.black,
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 30),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 10, 21, 30),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
