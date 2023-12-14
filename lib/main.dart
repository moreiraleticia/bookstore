import 'package:desafio_tecnico2/data/bookdata.dart';
import 'package:flutter/material.dart';
import 'componnents/mybook.dart';
import 'componnents/newbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BookData> books = [
    BookData(1, "The Bible of Nature", "Oswald, Felix L.",
        "assets/images/biblia.jpg"),
    BookData(2, "Kazan", "Curwood, James Oliver", "assets/images/kazan.jpg"),
    BookData(3, "Mythen en sagen uit West-Indië", "Cappelle, Herman van, Jr.",
        "assets/images/sagen.jpg"),
    BookData(4, "Lupe", "Affonso Celso", "assets/images/lupe.jpg"),
    BookData(5, "Nuorta ja vanhaa väkeä: Kokoelma kertoelmia",
        "Fredrik Nycander", "assets/images/nuorta.jpg"),
    BookData(6, "Among the Mushrooms: A Guide For Beginners",
        "Burgin and Dallas", "assets/images/among.jpg"),
    BookData(7, "The History of England in Three Volumes, Vol.III.",
        "Edward Farr and E. H. Nolan", "assets/images/medium.jpg"),
    BookData(8, "Adventures of Huckleberry Finn", "Mark Twain", "finny.jpg"),
    BookData(9, "The octopus: or, The 'devil-fish' of fiction and of fact",
        "Henry Lee", "assets/images/octopus.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D212B),
        centerTitle: true,
        title: const Text("BookStore"),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFe6e6e6),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.all(8.0),
                  hintText: "Buscar Favoritos",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Meus Livros",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 280.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  myBook(books[0]),
                  myBook(books[1]),
                  myBook(books[2]),
                ]),
              ),
              const Text(
                "Biblioteca",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 600.0,
                child: ListView(
                  children: [
                    newBook(books[3]),
                    newBook(books[4]),
                    newBook(books[5]),
                    newBook(books[6]),
                    newBook(books[7]),
                    newBook(books[8]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1D212B),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1D212B),
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "Trechos",
          ),
        ],
      ),
    );
  }
}
