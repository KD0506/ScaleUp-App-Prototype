// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC837), // Yellow color
        elevation: 0.0,
        leading: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/icons/three-dots-line-svgrepo-com.svg'),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(100)
          ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // First icon
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                child: SvgPicture.asset('assets/icons/bell-solid.svg'),
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: BorderRadius.circular(100)),
              ),
              // Second icon
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                child: SvgPicture.asset('assets/icons/message-solid.svg'),
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: BorderRadius.circular(100)),
              ),
              // Third icon
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                child: SvgPicture.asset('assets/icons/bookmark-solid.svg'),
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: BorderRadius.circular(100)),
              ),
            ],  
          ),
        ],
      ),
      body: Column(
        children: [
          // Announcements
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 90,
            color: Colors.white, //bg-yellow
            child: ListView(
              scrollDirection: Axis.horizontal,             
              children: [               
                SizedBox(width: 10),
                _buildAvatar('assets/icons/1.png'),
                _buildAvatar('assets/icons/2.png'),
                _buildAvatar('assets/icons/3.png'),
                _buildAvatar('assets/icons/4.png'),
                _buildAvatar('assets/icons/5.png'),
                _buildAvatar('assets/icons/6.png'),
                _buildAvatar('assets/icons/7.png'),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Posts
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildPost();
              },
            ),
          ),
        ],
      ),
      // Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(0, 0, 168, 134),
        currentIndex: 0, 
        onTap: (index) {
          // Navigation buttons
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }

  // Circular shape for announcements function
  Widget _buildAvatar(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(imagePath), 
      ),
    );
  }

  // Function for posts format
  Widget _buildPost() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                  ),
                  SizedBox(width: 10),
                  Text("alexjames", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                color: Colors.grey[300], 
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.comment_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.share_outlined),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ...more',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8.0,
                children: [
                  _buildTag("Design"),
                  _buildTag("Persona"),
                  _buildTag("User Flow"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Tag widgets building fn.
  Widget _buildTag(String label) {
    return Chip(
      backgroundColor: Colors.yellow[100],
      label: Text(label, style: TextStyle(color: Colors.black)),
    );
  }
}
