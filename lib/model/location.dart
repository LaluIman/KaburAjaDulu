class Location {
  String name;
  String thumbnailImage;
  String description;
  String location;
  String duration;
  String distance;
  List<String> galleryImages;

  Location({
    required this.name,
    required this.thumbnailImage,
    required this.description,
    required this.location,
    required this.duration,
    required this.distance,
    required this.galleryImages,
  });
}

var locationList = [
  Location(
    name: 'Bromo',
    thumbnailImage: 'assets/images/places/Bromo1.png',
    description: 'Mount Bromo, located in East Java, Indonesia, is one of the most iconic and frequently visited volcanic mountains in Southeast Asia. Known for its ethereal sunrise views, vast Sea of Sand, and smoking crater, Bromo offers a surreal landscape that feels like another world. Tourists often hike or take jeep tours early in the morning to catch the golden sunrise from Mount Penanjakan, overlooking the crater and Mount Semeru in the distance. The name "Bromo" is derived from the Javanese pronunciation of Brahma, the Hindu creator god.',
    location: 'East Java, Indonesia',
    duration: '2-3 hours',
    distance: '45 km from Malang',
    galleryImages: [
      'assets/images/places/Bromo2.png',
      'assets/images/places/Bromo3.png',
      'assets/images/places/Bromo4.png',
      'assets/images/places/Bromo5.png',
    ],
  ),
  Location(
    name: 'Eiffel Tower',
    thumbnailImage: 'assets/images/places/Eiffel1.png',
    description: 'The Eiffel Tower, an enduring symbol of Paris and France, was constructed in 1889 as the entrance arch to the World\'s Fair. Designed by Gustave Eiffel, this wrought-iron lattice tower stands 330 meters tall and draws millions of visitors each year. It offers panoramic views of Paris from its observation decks and lights up spectacularly at night. Beyond its architectural brilliance, the Eiffel Tower represents the elegance and innovation of 19th-century engineering and continues to be a cultural and romantic icon of the city.',
    location: 'Paris, France',
    duration: '1-2 hours',
    distance: '5 km from central Paris',
    galleryImages: [
      'assets/images/places/Eiffel2.png',
      'assets/images/places/Eiffel3.png',
      'assets/images/places/Eiffel4.png',
      'assets/images/places/Eiffel5.png',
    ],
  ),
  Location(
    name: 'Kelingking Beach',
    thumbnailImage: 'assets/images/places/Kelingking1.png',
    description: 'Kelingking Beach, located on the island of Nusa Penida near Bali, Indonesia, is a breathtaking destination known for its unique cliff formation resembling a T-Rex. The pristine white sand beach is nestled below steep cliffs and is only accessible via a challenging hike. The turquoise waters, dramatic coastal views, and secluded atmosphere make it a favorite among adventure seekers and photographers. Its raw, untouched beauty offers an unforgettable experience for those willing to make the descent.',
    location: 'Nusa Penida, Indonesia',
    duration: '3-4 hours',
    distance: '50 km from Denpasar (including boat ride)',
    galleryImages: [
      'assets/images/places/Kelingking2.png',
      'assets/images/places/Kelingking3.png',
      'assets/images/places/Kelingking4.png',
      'assets/images/places/Kelingking5.png',
    ],
  ),
  Location(
    name: 'Tavarua Island',
    thumbnailImage: 'assets/images/places/tavarua1.png',
    description: 'Tavarua Island is a heart-shaped island paradise located in Fiji, renowned for its world-class surfing, crystal-clear lagoons, and luxurious accommodations. Surrounded by coral reefs, it offers some of the most legendary surf breaks including "Cloudbreak". The island is also a haven for snorkeling, paddleboarding, and relaxation. With its exclusive resort, stunning sunsets, and tranquil atmosphere, Tavarua is a dream destination for honeymooners, surfers, and nature lovers alike.',
    location: 'Mamanuca Islands, Fiji',
    duration: 'Full-day trip or overnight stay',
    distance: '30 minutes by boat from Nadi',
    galleryImages: [
      'assets/images/places/tavarua2.png',
      'assets/images/places/tavarua3.png',
      'assets/images/places/tavarua4.png',
      'assets/images/places/tavarua5.png',
    ],
  ),
  Location(
    name: 'Petronas Towers',
    thumbnailImage: 'assets/images/places/Petronas1.png',
    description: 'The Petronas Towers, once the tallest buildings in the world, are twin skyscrapers located in Kuala Lumpur, Malaysia. Designed by architect César Pelli, the towers stand 452 meters tall and feature a stunning postmodern design inspired by Islamic art. The skybridge connecting the two towers on the 41st and 42nd floors is a popular viewing spot, offering sweeping views of the city. As a symbol of Malaysia’s modernization, the towers house offices, shopping centers, and cultural exhibits.',
    location: 'Kuala Lumpur, Malaysia',
    duration: '1-2 hours',
    distance: '2 km from KL City Center',
    galleryImages: [
      'assets/images/places/Petronas2.png',
      'assets/images/places/Petronas3.png',
      'assets/images/places/Petronas4.png',
      'assets/images/places/Petronas5.png',
    ],
  ),
  Location(
    name: 'Hagia Sophia',
    thumbnailImage: 'assets/images/places/HagiaSophia1.png',
    description: 'Hagia Sophia is a historic architectural marvel located in Istanbul, Turkey. Originally built in the 6th century by Byzantine Emperor Justinian I, it has served as a cathedral, mosque, and now a museum. The structure is renowned for its massive dome, stunning mosaics, and the blend of Christian and Islamic elements. Hagia Sophia stands as a symbol of cultural harmony and is one of the most visited landmarks in Turkey.',
    location: 'Istanbul, Turkey',
    duration: '1-2 hours',
    distance: '2 km from the Blue Mosque',
    galleryImages: [
      'assets/images/places/HagiaSophia2.png',
      'assets/images/places/HagiaSophia3.png',
      'assets/images/places/HagiaSophia4.png',
      'assets/images/places/HagiaSophia5.png',
    ],
  ),
  Location(
    name: 'Fuji Mountain',
    thumbnailImage: 'assets/images/places/Fuji1.png',
    description: 'Mount Fuji, or "Fujisan", is Japan’s tallest and most iconic mountain, rising to 3,776 meters. This sacred stratovolcano, located on Honshu Island, is revered in Japanese culture and art. It is a popular destination for climbers during the summer season, offering several routes to its snow-capped summit. On clear days, the symmetrical cone of Mount Fuji can be seen from Tokyo. The mountain is surrounded by lakes, forests, and shrines, making it not only a climbing spot but also a spiritual and scenic retreat.',
    location: 'Honshu, Japan',
    duration: '6-8 hours (climb)',
    distance: '100 km from Tokyo',
    galleryImages: [
      'assets/images/places/Fuji2.png',
      'assets/images/places/Fuji3.png',
      'assets/images/places/Fuji4.png',
      'assets/images/places/Fuji5.png',
    ],
  ),
  Location(
    name: 'Marina Bay Sands',
    thumbnailImage: 'assets/images/places/Marina1.png',
    description: 'Marina Bay Sands is a luxury resort and architectural marvel located in Singapore, famous for its boat-shaped SkyPark that connects three towers. The SkyPark includes the world’s largest rooftop infinity pool with sweeping views of the city skyline. Inside, the resort features a casino, shopping mall, theaters, museums, and world-class dining. It represents the epitome of luxury and futuristic design, attracting millions of tourists and business travelers each year.',
    location: 'Singapore',
    duration: 'Half-day to full-day',
    distance: '15 minutes from Changi Airport',
    galleryImages: [
      'assets/images/places/Marina2.png',
      'assets/images/places/Marina3.png',
      'assets/images/places/Marina4.png',
      'assets/images/places/Marina5.png',
    ],
  ),
  Location(
    name: 'Taj Mahal',
    thumbnailImage: 'assets/images/places/TajMahal1.png',
    description: 'The Taj Mahal, located in Agra, India, is a white marble mausoleum built by Mughal Emperor Shah Jahan in memory of his beloved wife Mumtaz Mahal. Completed in 1653, it is widely considered one of the most beautiful buildings in the world and is a UNESCO World Heritage Site. The intricate architecture, symmetrical gardens, and reflective pools make it a timeless symbol of love and devotion. It draws millions of tourists every year and stands as a pinnacle of Indo-Islamic architecture.',
    location: 'Agra, India',
    duration: '2-3 hours',
    distance: '230 km from New Delhi',
    galleryImages: [
      'assets/images/places/TajMahal2.png',
      'assets/images/places/TajMahal3.png',
      'assets/images/places/TajMahal4.png',
      'assets/images/places/TajMahal5.png',
    ],
  ),
  Location(
    name: 'Big Ben',
    thumbnailImage: 'assets/images/places/BigBen1.png',
    description: 'Big Ben is one of the most iconic landmarks in London, United Kingdom. While commonly referred to as the clock tower, Big Ben is actually the nickname for the Great Bell inside the tower. Now officially known as the Elizabeth Tower, it stands adjacent to the Houses of Parliament. The clock is famous for its accuracy and the deep tone of the bell. It is a historic and cultural symbol of the UK and one of the most photographed buildings in the world.',
    location: 'London, United Kingdom',
    duration: '1-2 hours',
    distance: '1 km from Westminster Abbey',
    galleryImages: [
      'assets/images/places/BigBen2.png',
      'assets/images/places/BigBen3.png',
      'assets/images/places/BigBen4.png',
      'assets/images/places/BigBen5.png',
    ],
  ),
];
