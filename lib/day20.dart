import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 10,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'shubh.s',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // First Container
            Container(
              height: 200,
              //color: Colors.red,
              child: Row(
                children: [
                  Container(
                    width: 180,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW4iJOaE9qTEGW0V18SGSw3YvMMAN-abWMhw&s')
                        ),
                        SizedBox(height: 10),
                        Text('hrx', style: TextStyle(fontSize: 20)),
                        Text(
                          'Indian Actor',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.orange,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildProfileRow('150', 'Posts'),
                                buildProfileRow('1M', 'Followers'),
                                buildProfileRow('100', 'Following'),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                              Colors.blue,
                                            ),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Second Container
            Container(
              height: 120,
              // color: Colors.blue,
              child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoQHRC_FuF2oYBxN4R2NumHlnNLHIW_JshUA&s'),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                      Text('Title'),
                    ],
                  );
                },
              ),
            ),

            // Third Container
            //Container(height: 100, color: Colors.green),

            // Fourth Container
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                //color: Colors.yellow,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdZjbsah9yc1agzO1w9rji3t70ePHLCOE_4w&s'),
                        fit: BoxFit.cover,
                      ),
                    ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileRow(String text1, text2) {
    return Column(
      children: [
        Text(text1, style: TextStyle(fontSize: 20)),
        Text(text2, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
