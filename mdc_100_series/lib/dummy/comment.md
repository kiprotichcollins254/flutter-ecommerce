List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(count, (index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Image.asset('assets/diamond.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title'),
                  const SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            )
          ],
        ),
      );
    });

    return cards;
  }