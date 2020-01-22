import 'package:test_project/models/documentationFees.dart';
import 'package:test_project/models/infrastructure.dart';
import 'package:test_project/models/legalDocuments.dart';

class Estate {
  final String name;
  final String details;
  final String description;
  final String location;
  final List<String> image;
  final List<Infrastructure> infrastructure;
  final List<LegalDocuments> legalDocument;
  final List<DocumentationFees> documentationFees;
  final List<Map<dynamic,dynamic>> paymentPlans;
  final bool isFavorite;


  Estate({
    this.name,
    this.details,
    this.description,
    this.location,
    this.image,
    this.infrastructure,
    this.legalDocument,
    this.documentationFees,
    this.paymentPlans,
    this.isFavorite = false,
  });
}

List<Estate> estates = [
  Estate(
    name: 'Central Park and Garden Kuje',
    details: "Central Parks and Garden, Kuje, Abuja the eye of Nigeria. Yes, Central Parks and Garden is located right on the heartbeat of Nigeria.",
    description: "This is going to be one of our most amazing masterpieces that wouldn’t only guarantee wholesome living, but peaceful co-existence in a one of it’s kind estate in Nigeria. The strategic location of the estate will make every visitor, resident and investors gape in awe.For Investors and residents alike, Investment is guaranteed a sporadic appreciation based on our continuous and non-stop development of infrastructure within our Estate. Our groundbreaking first estate in Abuja, Manhattan Parks and Garden, under 6 months of work is proof of this.What are you waiting for? Join the list of our Happy Home owners and investors….SUBSCRIBE NOW.",
    location: 'Abuja',
    image: [
      'assets/images/estate/centralPark.jpg',
      'assets/images/estate/centralPark1.jpg',
      'assets/images/estate/centralPark2.jpg',
      'assets/images/estate/centralPark3.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [
      documentationFees[0],documentationFees[1],
      documentationFees[2],documentationFees[3],
      documentationFees[4],documentationFees[5],
      documentationFees[6],
    ],
    paymentPlans: [
      {
        'plotSize': '454M2',
        'description': 'Outright Payment(or in 3 Months)',
        'amount': '7,000,000',
        'details': 'Outrigth (or in 3 months)'
      },
      {
        'plotSize': '454M2',
        'description': '1 year payment (12 months)',
        'amount': '7,100,000',
        'details': '591,666 x 12 months'
      },
      {
        'plotSize': '454M2',
        'description': '2 years plan(24 months)',
        'amount': '7,150,000',
        'details': '297,916 x 24 months'
      },
      {
        'plotSize': '454M2',
        'description': '3 years plan(36 months)',
        'amount': '7,200,000',
        'details': '200,000 X 36 months'
      },
      {
        'plotSize': '454M2',
        'description': '4 years plan(48 months)',
        'amount': '7,250,000',
        'details': '151,042 X 48 months'
      },
    ]
    
  ),

  Estate(
    name: 'Emirate Park and Garden Badagry',
    details: "Our Emirates Park & Gardens is located at Badagry. It is a newly acquired estate, a continuation of our prestigious Ocean view Estate.",
    description: "Our Emirates Park & Gardens is located at Badary, Lagos few minutes from Badagry Heritage Museum. Estates and other Landmarks within the neigbourhood include First Story Building , Badagry Slave and Black History Museum, Mobee Palace and a host of many Historical Sites.  ",
    location: 'Lagos',
    image: [
      'assets/images/estate/emiratePark1.jpg',
      'assets/images/estate/emiratePark2.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      // legalDocuments[2],
      // legalDocuments[3],
    ],
    documentationFees: [
      documentationFees[0],documentationFees[1],
      documentationFees[2],documentationFees[3],
      documentationFees[4],documentationFees[5],
      documentationFees[6],
    ],
    paymentPlans: [
      {
        'plotSize': '540M2',
        'description': 'Outright Payment(or in 3 Months)',
        'amount': '1,500,000',
        'details': 'Outright'
      },
      {
        'plotSize': '540M2',
        'description': '1 year payment (12 months)',
        'amount': '1,550,000',
        'details': '129,167 x 12months'
      },
      {
        'plotSize': '540M2',
        'description': '2 years plan(24 months)',
        'amount': '1,650,000',
        'details': '68,750 x 24 months'
      },
      {
        'plotSize': '540M2',
        'description': '3 years plan(36 months)',
        'amount': '1,700,000',
        'details': '47,222 X 36 months'
      },
      {
        'plotSize': '540M2',
        'description': '4 years plan(48 months)',
        'amount': '1,750,000',
        'details': '36,458 X 48 months'
      },
    ]
  ),

  Estate(
    name: 'Imperial Parks and Gardens, GRA Extension, Sagamu',
    details: "Imperial Park and Gardens Estate Shagamu, a one-of-its-kind Estate designed for comfort, recreation, business and wholesome family life, set up to meet housing demands within its region. Our newest estate follows the theme of our existing estate series in terms of serenity, ambiance, security and of course a notch higher in grandeur architectural design.",
    description: "Imperial Park and Gardens Estate Shagamu, a one-of-its-kind Estate designed for comfort, recreation, business and wholesome family life, set up to meet housing demands within its region. Our newest estate follows the theme of our existing estate series in terms of serenity, ambiance, security and of course a notch higher in grandeur architectural design.The Imperial Park and Gardens estate is located along Regal college Road, GRA Extension, Shagamu. The estate will not only just be beautiful; but just as our other estates, it will be affordable, making it an excellent choice of planned housing, accessible by every discerning investor.",
    location: 'Lagos',
    image: [
      'assets/images/estate/imperial.jpg',
      'assets/images/estate/imperial2.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [],
    paymentPlans: [],
  ),


   Estate(
    name: 'China Town Estate Atan-Ota',
    details: "CHINA TOWN ESTATE located in the fast growing axis of Atan-Ota, China Town Estate offers a blend of luxury, serene ambience and quietness devoid of the hustle and bustle of city life whilst being less than 40 minutes drive from the heart of Lagos.",
    description: "Strongly influenced by Chinese architecture and set in lush gardens and natural surroundings, we are offering commercial plots for business owners and investors.",
    location: 'Lagos',
    image: [
      'assets/images/estate/chinaTown.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [],
    paymentPlans: [],
  ),

  Estate(
    name: 'Manhattan Parks and Gardens, Abuja',
    details: "Manhattan Park & Gardens, Abuja is the first of our uniquely designed Estates to be sited around the capital city of Abuja themed Pearland & Riverview Estate. It is a serene and strategically located choice piece that will make every visitor, resident and investors gape in awe.",
    description: "Pearland & Riverview Estate boasts of assorted trees with fruit Orchads especially pears, oranges, mangoes, guavas, plantain etc. The popular Uke river flows right through the land providing an exotic ambiance of rich greenery.",
    location: 'Lagos',
    image: [
      'assets/images/estate/manhattan.jpg',
      'assets/images/estate/manhattan1.jpg',
      'assets/images/estate/manhattan2.jpg',
      'assets/images/estate/manhattan3.jpg',
      'assets/images/estate/manhattan4.jpg',
      'assets/images/estate/manhattan5.jpg',
      'assets/images/estate/manhattan6.jpg',
      'assets/images/estate/manhattan7.jpg',
      'assets/images/estate/manhattan8.jpg',
      'assets/images/estate/manhattan9.jpg',
      'assets/images/estate/manhattan10.jpg',
      'assets/images/estate/manhattan11.jpg',
      'assets/images/estate/manhattan12.jpg',
      'assets/images/estate/manhattan13.jpg',
    ],
    infrastructure: [
      // infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [],
    paymentPlans: [],
  ),

  Estate(
    name: 'London Park and Garden Ibadan',
    details: "London Park and Gardens Ologun-Eru, Ibadan, another sister estate to the existing West Parks and Gardens Estate Ibadan, our flagship estate in the biggest city in Sub-Saharan Africa.",
    description: "London park was born out of the many requests of our numerous clients who wants to safely invest in the already developing axis of the Mega city. Just as our other estates, giving our knack for excellent offerings, London Parks and Gardens Ologun- Eru, Ibadan is built to meet the 21st century housing style, offer an assured wholesome family living experience, whilst providing amazing infrastructural facilities to tend to the needs of residents and investors alike.",
    location: 'Ibadan',
    image: [
      'assets/images/estate/londonPark.jpg',
      'assets/images/estate/londonPark2.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [],
    paymentPlans: [],
  ),
  
   Estate(
    name: 'Grandview Park and Gardens Estate',
    details: "Our GrandView Park and Gardens Estate is located at Sokoto road, Atan, Ota which is 15 minutes’ drive from Winners Chapel, Canaan Land, Ota",
    description: "Our GrandView Park and Gardens Estate is located at Sokoto road, Atan, Ota, Ogun State which is 15 minutes’ drive from Winners Chapel, Canaan Land, Ota. GrandView Park and Gardens offers an opportunity to own a quality home in a family friendly serene environment designed to embody a vision of peace, harmony, health and happiness.The Estate embraces the symmetrical component of a 21st century estate, Landscape, CCTV, security surveillance, parks, shopping malls are just a few of amenities that will be available in the estate.",
    location: 'Ibadan',
    image: [
      'assets/images/estate/grandView.jpg',
      'assets/images/estate/grandView1.jpg',
      'assets/images/estate/grandView2.jpg',
      'assets/images/estate/grandView3.jpg',
      'assets/images/estate/grandView4.jpg',
      'assets/images/estate/grandView5.jpg',
      'assets/images/estate/grandView6.jpg',
      'assets/images/estate/grandView7.jpg',
      'assets/images/estate/grandView8.jpg',
      'assets/images/estate/grandView9.jpg',
      'assets/images/estate/grandView10.jpg',
      'assets/images/estate/grandView11.jpg',
      'assets/images/estate/grandView12.jpg',
    ],
    infrastructure: [
      infrastructure[0],infrastructure[1],
      infrastructure[2],infrastructure[3],
      infrastructure[4],infrastructure[5],
      infrastructure[6],infrastructure[7],
    ],
    legalDocument: [
      legalDocuments[0],
      legalDocuments[1],
      legalDocuments[2],
      legalDocuments[3],
    ],
    documentationFees: [],
    paymentPlans: [],
  ),
  
];
  