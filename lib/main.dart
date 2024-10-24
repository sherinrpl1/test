import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //mengatur tema
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sherin Animal Feed Store',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.pink[100],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.asset(
                                  'assets/logo.png',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'celin store',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/kucing.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          const Text(
                            "Makanan Kucing (Whiskas)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RatingBar.builder(
                                onRatingUpdate: (rating) {},
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemCount: 5,
                                itemSize: 12,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "1rb ulasan",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.local_offer_outlined,
                                  color: Colors.grey, size: 20),
                              SizedBox(width: 6),
                              Text(
                                "RP.30.000",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 30, height: 10),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 5,
                                child: Icon(Icons.bookmark_border, size: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.asset(
                                  'assets/logo.png',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'celin store',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/anjing.webp',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Makanan Anjing (Happy Dog)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RatingBar.builder(
                                onRatingUpdate: (rating) {},
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemCount: 5,
                                itemSize: 12,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "500 ulasan",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.local_offer_outlined,
                                  color: Colors.grey, size: 20),
                              SizedBox(width: 6),
                              Text(
                                "RP.25.000",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 30, height: 10),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 5,
                                child: Icon(Icons.bookmark_border, size: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'celin store',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/burung.jfif',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Makanan Burung (Menu)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (rating) {},
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              ignoreGestures: true,
                              itemCount: 5,
                              itemSize: 12,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "100 ulasan",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(height: 3),
                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.local_offer_outlined,
                                color: Colors.grey, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "RP.20.000",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 30, height: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 5,
                              child: Icon(Icons.bookmark_border, size: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/logo.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'celin store',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/ikan.jpg',
                              width: 125,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Makanan Ikan (Takari)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (rating) {},
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              ignoreGestures: true,
                              itemCount: 5,
                              itemSize: 12,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "50 ulasan",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(height: 3),
                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.local_offer_outlined,
                                color: Colors.grey, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "RP.10.000",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 30, height: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 5,
                              child: Icon(Icons.bookmark_border, size: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
