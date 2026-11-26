class Candi {
  final String name;
  final String location;
  final String description;
  final String imageAsset;

  const Candi({
    required this.name,
    required this.location,
    required this.description,
    required this.imageAsset,
  });
}

const List<Candi> candiList = [
  Candi(
    name: 'Candi Borobudur',
    location: 'Magelang, Jawa Tengah',
    description: 'Candi Buddha terbesar di dunia dengan relief yang menceritakan perjalanan kehidupan manusia.',
    imageAsset:
        'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=900',
  ),
  Candi(
    name: 'Candi Prambanan',
    location: 'Sleman, DI Yogyakarta',
    description: 'Kompleks candi Hindu yang dikenal dengan arsitektur tinggi dan kisah Ramayana.',
    imageAsset:
        'https://images.unsplash.com/photo-1584810359583-96da8b1e2e3c?w=900',
  ),
  Candi(
    name: 'Candi Mendut',
    location: 'Magelang, Jawa Tengah',
    description: 'Candi Buddha yang berada tidak jauh dari Borobudur dan memiliki tiga arca utama.',
    imageAsset:
        'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=900',
  ),
  Candi(
    name: 'Candi Gedong Songo',
    location: 'Semarang, Jawa Tengah',
    description: 'Kompleks candi Hindu yang berada di lereng Gunung Ungaran dengan pemandangan alam.',
    imageAsset:
        'https://images.unsplash.com/photo-1539367628448-4bc5c9d171c8?w=900',
  ),
];
