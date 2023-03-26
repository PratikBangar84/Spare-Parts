import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class Landingscreen extends StatefulWidget {
  const Landingscreen({super.key});

  @override
  State<Landingscreen> createState() => _LandingscreenState();
}

class _LandingscreenState extends State<Landingscreen> {
  String dropdownvalue = 'Select';

  Future<void> _phone(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _email(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _web(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // List of items in our dropdown menu
  var items = [
    'Select',
    'Stearing',
    'Power Stearing',
    'Mini Stearing',
    'Nano stearing',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            child: CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  height: 80,
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: NetworkImage("assets/images/mirror.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("assets/images/stearing.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("assets/images/wheel.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("assets/images/wheel.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("assets/images/wheel.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                initialPage: 0,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 40,
            width: 2000,
            color: Color.fromARGB(255, 9, 149, 14),
            child: Center(
              child: Text(
                'Find the right Spare parts',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Color.fromARGB(255, 9, 149, 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(7.0),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(8.0),
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            height: 40,
            width: 2000,
            color: Color.fromARGB(255, 9, 149, 14),
            child: Center(
              child: Text(
                'Search by Category',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            width: 3000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mirror.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/stearing.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wheel.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mirror.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wheel.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 40,
            width: 2000,
            color: Color.fromARGB(255, 9, 149, 14),
            child: Center(
              child: Text(
                'Featured Categories...specifically curated for you',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            width: 3000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mirror.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/stearing.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wheel.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mirror.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wheel.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text('what is the pricing of tyre',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        children: [Text('Its almost same as described')],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Center(
                child: Text('Frequently Asked Quetions',
                    style: TextStyle(color: Colors.black, fontSize: 30))),
          ),
          Container(
            height: 500,
            color: Colors.white,
            child: Column(
              children: [
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what all parts are designed in these model',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('why should you buy cheap parts',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
                ExpansionTile(
                  title: Center(
                    child: Text('what is the pricing of tyre',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                  children: [
                    Text(
                        'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              const Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'DISCUSS FEW THINGS OR JUST WANT TO SAY HI?\nOUR INBOX IS OPEN FOR ALL!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      _web(
                        'https://goo.gl/maps/ickERdYTAyxUAuhf8',
                      );
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text(
                      'Mumbai, Maharashtra, India',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      _email('mailto:feazysolutions@gmail.com');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text(
                      'spareparts@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          _phone('tel:+91-8879843934');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        child: const Text(
                          'Pratham Kadam: +91 9136543934',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          _phone('tel:+91-8169852662');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        child: const Text(
                          'Mr Bangar: +91 8169891365',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
