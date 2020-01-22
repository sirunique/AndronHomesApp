class Home{
  final String name;
  final String description;
  final String location;
  final List<String> image;
  final List<Map<dynamic,dynamic>> types;
  final List<String> paymentOptions;

  Home({
    this.name, this.description, this.location,this.image,
    this.types, this.paymentOptions,
  });
}

List<Home> homes = [
  Home(
    name: 'Beach Home Villa',
    description: "Our Beach home villa series are our homes located at our prestigious Rehoboth Parks and Gardens Estate that is located right beside the largest free trade zone in Sub-Saharan Africa, the Lekki Free trade zone, home to Dangote Refinery, Lekki Deep sea port across the road, and the new Lekki international airport that is down the road.",
    location: 'Lagos',
    image: [
      'assets/images/home/beachHomeVilla1.jpg',
    ],
    types:[
      {
        'title':'3 Bedroom', 
        'details':[
          {
            'description': '3Bedroom with penthouse',
            'price': '45M'
          }
        ]
      }
    ],
    paymentOptions: [
      '10% Initial Deposit and Balance Payment in 24 months.',
      '10% Initial Deposit & Balance Payment in 6 Months attracts 10% discount.',
      '10% Initial Deposit & Balance Payment in 12 months attracts 5% discount',
      '10% Documentation & Legal Fees Apply.',
    ]
  ),
  Home(
    name: 'Grandview Series',
    description: "These beautiful homes are located in our estates located on the Sokoto Road, Atan-Ota Axis that as well serves as home to our Grandview Estate series. Available are 2 bedroom apartments to as much as 5 bedroom duplexes.",
    location: 'Lagos',
    image: [
      'assets/images/home/beachHomeVilla2.jpg',
    ],
    types:[
      {
        'title':'2 Bedroom', 
        'details':[
          {
            'description': '2 Bedroom Fully  Funished Terrace',
            'price': '16.5M'
          }
        ]
      },
      {
        'title':'3 Bedroom', 
        'details':[
          {
            'description': '3 Bedroom on Half',
            'price': '20M'
          },
          {
            'description': '3 Bedroom on full',
            'price': '25M'
          }
        ]
      },
      {
        'title':'4 Bedroom', 
        'details': [
          {
            'description': '4 Bedroom without BQ',
            'price': '45M'
          },
          {
            'description': '4 Bedroom with BQ',
            'price': '50M'
          }
        ]
      },
      {
        'title':'5 Bedroom', 
        'details':[
          {
            'description': '5 Bedroom without BQ',
            'price': '55M'
          },
          {
            'description': ' Bedroom with BQ',
            'price': '65M'
          }
        ]
      }
    ],
    paymentOptions: [
      '10% Initial Deposit and Balance Payment in 24 months.',
      '10% Initial Deposit & Balance Payment in 6 Months attracts 10% discount.',
      '10% Initial Deposit & Balance Payment in 12 months attracts 5% discount',
      '10% Documentation & Legal Fees Apply.',
    ]
  ),
  Home(
    name: 'Beach Home Villa',
    description: "Our Beach home villa series are our homes located at our prestigious Rehoboth Parks and Gardens Estate that is located right beside the largest free trade zone in Sub-Saharan Africa, the Lekki Free trade zone, home to Dangote Refinery, Lekki Deep sea port across the road, and the new Lekki international airport that is down the road.",
    location: 'Lagos',
    image: [
      'assets/images/home/beachHomeVilla3.jpg',
    ],
    types:[
      {
        'title':'3 Bedroom', 
        'details':[
          {
            'description': '3Bedroom with penthouse',
            'price': '45M'
          }
        ]
      }
    ],
    paymentOptions: [
      '10% Initial Deposit and Balance Payment in 24 months.',
      '10% Initial Deposit & Balance Payment in 6 Months attracts 10% discount.',
      '10% Initial Deposit & Balance Payment in 12 months attracts 5% discount',
      '10% Documentation & Legal Fees Apply.',
    ]
  ),
  Home(
    name: 'Beach Home Villa',
    description: "Our Beach home villa series are our homes located at our prestigious Rehoboth Parks and Gardens Estate that is located right beside the largest free trade zone in Sub-Saharan Africa, the Lekki Free trade zone, home to Dangote Refinery, Lekki Deep sea port across the road, and the new Lekki international airport that is down the road.",
    location: 'Lagos',
    image: [
      'assets/images/home/beachHomeVilla4.jpg',
    ],
    types:[
      {
        'title':'3 Bedroom', 
        'details':[
          {
            'description': '3Bedroom with penthouse',
            'price': '45M'
          }
        ]
      }
    ],
    paymentOptions: [
      '10% Initial Deposit and Balance Payment in 24 months.',
      '10% Initial Deposit & Balance Payment in 6 Months attracts 10% discount.',
      '10% Initial Deposit & Balance Payment in 12 months attracts 5% discount',
      '10% Documentation & Legal Fees Apply.',
    ]
  ),

];