import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget letters(int num, String letter) {
      return Text(
        letter,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: num == 1 ? Colors.red : null),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 180,
            color: Colors.black,
            child: Column(
              children: [
                Gap(90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Mancoding',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(10),
                        Text(
                          'Lets schedule your activites',
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 222, 222),
                              fontSize: 14),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Schedule',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Gap(10),
                        Text(
                          'Lets schedule your activites',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      width: 85,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.account_tree_outlined),
                          Container(
                            width: 38,
                            height: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 58, 33, 243)),
                            child: Icon(
                              Icons.menu_sharp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Gap(20),
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 189, 189, 189),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'January 2024',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      Icon(Icons.keyboard_arrow_down_outlined)),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                              ))
                        ],
                      ),
                      // Gap(20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          letters(2, 'T'),
                          letters(2, 'M'),
                          letters(2, 'W'),
                          letters(2, 'T'),
                          letters(1, 'S'),
                          letters(2, 'F'),
                          letters(1, 'S'),
                        ],
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          letters(2, '16'),
                          letters(2, '17'),
                          letters(2, '18'),
                          letters(2, '19'),
                          letters(1, '20'),
                          letters(1, '21'),
                          letters(1, '22'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(20),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 370,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      width: 370,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 58, 33, 243)),
                            child: const Center(
                              child: Text(
                                'All',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                              width: 180,
                              child: const Center(
                                  child: Text(
                                'New',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                              )))
                        ],
                      ),
                    ),
                    Gap(10),
                    Container(
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 189, 189, 189),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.calendar_month,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('Sun, 20/1/2023'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.time,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('10.00 AM - 01.00 PM')
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert_outlined,
                                  ))
                            ],
                          ),
                          Gap(20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Development of software for the protection of information resources',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Container(
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 189, 189, 189),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.calendar_month,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('Sun, 20/1/2023'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.time,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('10.00 AM - 01.00 PM')
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert_outlined,
                                  ))
                            ],
                          ),
                          Gap(20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Development of software for the protection of information resources',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Container(
                      width: double.infinity,
                      height: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 189, 189, 189),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.calendar_month,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('Sun, 20/1/2023'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.time,
                                        color: Color.fromARGB(255, 58, 33, 243),
                                      )),
                                  Text('10.00 AM - 01.00 PM')
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert_outlined,
                                  ))
                            ],
                          ),
                          Gap(20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Development of software for the protection of information resources',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.edit_sharp), label: 'Schedule'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Calendar'),
      ]),
    );
  }
}
