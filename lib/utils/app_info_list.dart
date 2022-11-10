//for hotels
List<Map<String, dynamic>> hotelList = [
  {
    'image': 'kempiski.jpeg',
    'place': 'Kempiski Hotel',
    'destination': 'Accra',
    'price': 280
  },
  {
    'image': 'golden_tulip.jpeg',
    'place': 'Golden Tulip',
    'destination': 'Kumasi',
    'price': 200
  },
  {
    'image': 'movenpick.jpeg',
    'place': 'Movenpick Ambassador',
    'destination': 'Accra',
    'price': 278
  },
];

//for tickets

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "KSI", 'name': "Kumasi"},
    'to': {'code': "ACC", 'name': "Accra"},
    'flying_time': '40M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 21
  },
  {
    'from': {'code': "ACC", 'name': "Accra"},
    'to': {'code': "NYC", 'name': "New-York"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
];

List<Map<String, dynamic>> availableDestinations = [
  {'destination': 'Accra', 'number': 23},
  {'destination': 'Abu Dhabi', 'number': 45},
  {'destination': 'New York', 'number': 21},
  {'destination': 'Lagos', 'number': 22},
  {'destination': 'Johannesburg', 'number': 20},
];
