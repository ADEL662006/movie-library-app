import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String query = '';


  int discount = 20;

  void decreaseDiscount() {
    setState(() {
      if (discount > 0) discount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final q = query.toLowerCase();
    final filteredMovies = movies
        .where((m) =>
    m.title.toLowerCase().contains(q) ||
        m.genre.toLowerCase().contains(q))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Library'),
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.view_list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(child: Text('No movies found'))
                : isGrid
                ? LayoutBuilder(
              builder: (context, constraints) {
                // 3 columns, and exactly 2 rows visible on screen
                const double pad = 12;
                const double gap = 12;
                final itemWidth =
                    (constraints.maxWidth - pad * 2 - gap * 2) / 3;
                final itemHeight =
                    (constraints.maxHeight - pad * 2 - gap) / 2;

                return GridView.builder(
                  padding: const EdgeInsets.all(pad),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: gap,
                    mainAxisSpacing: gap,
                    childAspectRatio: itemWidth / itemHeight,
                  ),
                  itemCount: filteredMovies.length,
                  itemBuilder: (context, index) {
                    return MovieCard(
                      movie: filteredMovies[index],
                      discount: discount,
                      onDiscountTap: decreaseDiscount,
                    );
                  },
                );
              },
            )
                : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SizedBox(
                    height: 140,
                    child: MovieCard(
                      movie: filteredMovies[index],
                      discount: discount,
                      onDiscountTap: decreaseDiscount,
                      isList: true,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
