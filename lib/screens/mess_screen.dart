import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessScreen extends StatefulWidget {
  String img;
  // ignore: use_key_in_widget_constructors
  MessScreen(this.img);
  @override
  State<MessScreen> createState() => _MessScreenState();
}

class _MessScreenState extends State<MessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/mess_pic/${widget.img}.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Description:",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "No of seat Available: 1",
              style: TextStyle(
                fontSize: 24,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Seat Fare: 2200",
              style: TextStyle(
                fontSize: 24,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Bills: wifi-200 , cook-350, electricity-depends*",
              style: TextStyle(
                fontSize: 24,
                //fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            const Text(
              "Location: Lakecity",
              style: TextStyle(
                fontSize: 24,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () { },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: const Text(
                          "Message/Call",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
