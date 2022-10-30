import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/Payment_details.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/about_us.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/inbox.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/my_orders/my_orders.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/More_screen/More_Screens/notifications.dart';
import 'package:demo_app/meal_monkey/screens/Home_Main_Pages/Product%20Screen/show_item_screen.dart';
import 'package:flutter/material.dart';

import '../screens/Home_Main_Pages/Menu_Screen/menu_screen.dart';
import '../screens/Home_Main_Pages/More_screen/more_screen.dart';
import '../screens/Home_Main_Pages/offers_screen.dart';
import '../screens/Home_Main_Pages/profile_screen.dart';

/// welcome page data

List welcomepage = [
  {
    'image': 'images/meal_monkey/Find food you love vector.png',
    'title': 'Find Food You Love',
    'Desc':
        'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
  },
  {
    'image': 'images/meal_monkey/Delivery vector.png',
    'title': 'Fast Delivery',
    'Desc': 'Fast food delivery to your home,office wherever you are',
  },
  {
    'image': 'images/meal_monkey/Live tracking vector.png',
    'title': 'Live Tracking',
    'Desc': 'Real time tracking your food on the app once you placed the order',
  },
];

/// Home page data

/// home - Choose Location

List location = [
  'Punagam',
  'Varacha',
  'Yogichowk',
  'Katargam',
  'Dindoli',
  'Vesu',
  'Amroli',
];

List sizePortion = [
  'Small',
  'Basic',
  'Medium',
  'Large',
  'Extra Large',
];

List withIngredients = [
  'Cocs',
  'Peps',
  'Cheese',
];

/// home - Catagory

List catagoryList = [
  {
    'image':
        'images/meal_monkey/homepage/catagory/louis-hansel-mVZ_gjm_TOk-unsplash.jpg',
    'title': 'Offers',
  },
  {
    'image':
        'images/meal_monkey/homepage/catagory/pexels-frank-schrader-11513108.jpg',
    'title': 'Sri lankan',
  },
  {
    'image':
        'images/meal_monkey/homepage/catagory/pexels-jill-wellington-257816.jpg',
    'title': 'Italian',
  },
  {
    'image':
        'images/meal_monkey/homepage/catagory/pexels-william-choquette-2641886.jpg',
    'title': 'Maxicon',
  },
  {
    'image':
        'images/meal_monkey/homepage/catagory/pixzolo-photography--O3wkh2jZyo-unsplash.jpg',
    'title': 'Chinese',
  },
];

/// home - Popular Restaurants

List popularRestaurants = [
  {
    'image':
        'https://images.pexels.com/photos/10875294/pexels-photo-10875294.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Minute by tuk tuk',
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/5694351/pexels-photo-5694351.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Cafe de Noir',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/11188417/pexels-photo-11188417.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Bakes by Tella',
    'rating': 3.8,
    'review': 1060,
    'price': 520,
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
];

/// home - Recent Items
List mostPopular = [
  {
    'image':
        'https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Cafe de Bamba',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/1603901/pexels-photo-1603901.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Pizza by Prezzy',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/3186654/pexels-photo-3186654.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Berger by Bella',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
];

/// home - recent Items

List recentItems = [
  {
    'image':
        'https://images.pexels.com/photos/691114/pexels-photo-691114.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Mulbery pizaa by Josh',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Barita',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Pizaa Rush Hour',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
];

/// offers - recent Items

List offersData = [
  {
    'image':
        'https://images.pexels.com/photos/853004/pexels-photo-853004.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'French Apple Pie',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/1414234/pexels-photo-1414234.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Dark Chocolate Cake',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Burger • Western food',
    'location': 'No 03, 4th Lane, Newyork',
  },
  {
    'image':
        'https://images.pexels.com/photos/827513/pexels-photo-827513.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Street Shake',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Fudgy Chewy Brownies',
    'location': 'No 03, 4th Lane, Newyork',
  }, {
    'image':
        'https://images.pexels.com/photos/1120464/pexels-photo-1120464.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'title': 'Fudgy Chewy Brownies',
    'rating': 4.5,
    'review': 2205,
    'price': 350,
    'desc':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type': 'Fudgy Chewy Brownies',
    'location': 'No 03, 4th Lane, Newyork',
  },
];

/// Bottom navigation screens

List screens = [
  const MenuScreen(),
  const OffersScreen(),
  const ProfileScreen(),
  const MoreScreen(),
  const ShowItemScreen(),
];

/// Menuscreen

List menuData = [
  {
    'title': 'Food',
    'items': 120,
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
    'image' : 'https://images.pexels.com/photos/106343/pexels-photo-106343.jpeg?auto=compress&cs=tinysrgb&w=1600',
  },
  {
    'title': 'Beverages',
    'items': 210,
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
    'image' : 'https://images.pexels.com/photos/604969/pexels-photo-604969.jpeg?auto=compress&cs=tinysrgb&w=1600',
  },
  {
    'title': 'Promotions', 'items': 25,'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
    'image' : 'https://images.pexels.com/photos/1482803/pexels-photo-1482803.jpeg?auto=compress&cs=tinysrgb&w=1600',
  },
];

List Food = [
  {
    'title': 'Food',
    'items': 120,
    'image':
        'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
  },
  {
    'title': 'Beverages',
    'items': 210,
    'image':
        'https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
  },
  {
    'title': 'Desserts',
    'items': 50,
    'image':
        'https://images.pexels.com/photos/1600711/pexels-photo-1600711.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
  },
  {
    'title': 'Promotions',
    'items': 25,
    'image':
        'https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'rating': 4.9,
    'review': 5604,
    'price': 775,
    'desc' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt scelerisque libero vel luctus. Mauris egestas, risus nec semper cursus, augue lectus suscipit elit, eget facilisis ex libero id enim.',
    'type' : 'Burger • Western food',
    'location' : 'No 03, 4th Lane, Newyork',
  },
];

/// More screen

List moreData = [
  {
    'image': 'images/meal_monkey/Componets/002-income.png',
    'title': 'Payment Details'
  },
  {
    'image': 'images/meal_monkey/Componets/Path 10159.png',
    'title': 'My Orders'
  },
  {
    'image': 'images/meal_monkey/Componets/003-bell.png',
    'title': 'Notifications'
  },
  {
    'image': 'images/meal_monkey/Componets/004-inbox-mail.png',
    'title': 'Inbox'
  },
  {'image': 'images/meal_monkey/Componets/005-info.png', 'title': 'About Us'},
];

/// more screens list

List moreScreens = [
  PaymentDetails(),
  MyOrders(),
  Notifications(),
  Inbox(),
  AboutUs(),
];

/// Notification List

List notifications = [
  {
    'title': 'Your orders has been picked up',
    'time': 'Now',
  },
  {
    'title': 'Your order has been delivered',
    'time': '1 h ago',
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur \nadipiscing.',
    'time': '5 h ago',
  },
  {
    'title': 'Lorem ipsum dolor sit amet, consectetur \nadipiscing.',
    'time': '13 h ago',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '10 oct, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '25 jul, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '25 jul, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
  {
    'title': 'Lorem ipsum dolor sit amet,consectetur \nadipiscing.',
    'time': '22 april, 2022',
  },
];

/// About Us

List aboutUs = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis nisi commodo nulla aliquet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id semper massa. Quisque et mauris ligula. Praesent posuere mattis libero tincidunt vehicula. Sed tristique finibus augue, id vulputate augue luctus in. Nunc tempor tristique consectetur. Aliquam vitae nibh dolor. Donec eu convallis quam. Pellentesque vestibulum volutpat nulla, sed faucibus libero. Nullam id orci mi. Mauris consectetur luctus mi ac sodales.',
  'Proin et lectus eget neque rhoncus lobortis in ut eros. Vivamus consequat nec justo a lobortis. Aliquam aliquet neque elementum nisl volutpat, vitae aliquam ligula pretium. Aenean neque mauris, cursus quis gravida eget, rutrum a orci. Sed tincidunt fermentum tincidunt. Curabitur vitae posuere orci. Duis nec dui ut tortor laoreet blandit et in velit. Nunc pellentesque consequat nulla, et elementum arcu auctor in. Nam tempus lectus vel est ullamcorper, at imperdiet lorem congue.',
  'Donec viverra ex arcu, facilisis feugiat arcu blandit vitae. Ut placerat orci id fermentum facilisis. Aliquam nibh libero, pretium ultrices ipsum eget, gravida tempus purus. Nullam mauris odio, tristique et placerat ut, scelerisque eu nunc. Etiam augue felis, viverra vitae lorem suscipit, blandit tristique magna.',
  'Donec viverra ex arcu, facilisis feugiat arcu blandit vitae. Ut placerat orci id fermentum facilisis. Aliquam nibh libero, pretium ultrices ipsum eget, gravida tempus purus. Nullam mauris odio, tristique et placerat ut, scelerisque eu nunc. Etiam augue felis, viverra vitae lorem suscipit, blandit tristique magna.',
  'Donec viverra ex arcu, facilisis feugiat arcu blandit vitae. Ut placerat orci id fermentum facilisis. Aliquam nibh libero, pretium ultrices ipsum eget, gravida tempus purus. Nullam mauris odio, tristique et placerat ut, scelerisque eu nunc. Etiam augue felis, viverra vitae lorem suscipit, blandit tristique magna.',
  'Integer fermentum nunc scelerisque rhoncus tempus. Sed sagittis porttitor elit. Nullam aliquam sit amet quam eget volutpat. Curabitur in tortor nec quam lobortis tincidunt vel ut odio. Nulla eu porttitor tellus. Fusce convallis fringilla feugiat. Nunc commodo rutrum dictum. Aenean pulvinar nunc id facilisis ultrices. Donec tristique dapibus tortor vitae fermentum. Proin at tellus erat.',
  'Integer fermentum nunc scelerisque rhoncus tempus. Sed sagittis porttitor elit. Nullam aliquam sit amet quam eget volutpat. Curabitur in tortor nec quam lobortis tincidunt vel ut odio. Nulla eu porttitor tellus. Fusce convallis fringilla feugiat. Nunc commodo rutrum dictum. Aenean pulvinar nunc id facilisis ultrices. Donec tristique dapibus tortor vitae fermentum. Proin at tellus erat.',
  'Integer fermentum nunc scelerisque rhoncus tempus. Sed sagittis porttitor elit. Nullam aliquam sit amet quam eget volutpat. Curabitur in tortor nec quam lobortis tincidunt vel ut odio. Nulla eu porttitor tellus. Fusce convallis fringilla feugiat. Nunc commodo rutrum dictum. Aenean pulvinar nunc id facilisis ultrices. Donec tristique dapibus tortor vitae fermentum. Proin at tellus erat.',
  'Integer fermentum nunc scelerisque rhoncus tempus. Sed sagittis porttitor elit. Nullam aliquam sit amet quam eget volutpat. Curabitur in tortor nec quam lobortis tincidunt vel ut odio. Nulla eu porttitor tellus. Fusce convallis fringilla feugiat. Nunc commodo rutrum dictum. Aenean pulvinar nunc id facilisis ultrices. Donec tristique dapibus tortor vitae fermentum. Proin at tellus erat.',
];

/// Inbox

List inbox = [
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': 'today',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '3th aug',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '10th july',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '14th fab',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '10th july',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur',
    'time': '14th fab',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
  {
    'title': 'MealMoney Promotions',
    'desc': 'Lorem ipsum dolor sit amet, consectetur ',
    'time': '17th march',
  },
];

/// order details

List orderDetails = [
  {
    'title': 'Beef Burger x1',
    'price': '\$16',
  },
  {
    'title': 'Classic Burger x1',
    'price': '\$14',
  },
  {
    'title': 'Cheese Chicken Burger x1',
    'price': '\$17',
  },
  {
    'title': 'Chicken Legs Basket x1',
    'price': '\$15',
  },
  {
    'title': 'French Fries Large x1',
    'price': '\$21',
  },
];

List paymentMethod = [
  {
    'title': 'Cash on delivery',
  },
  {
    'title': '**** **** **** 2187',
    'image': "images/meal_monkey/Componets/visa.png"
  },
  {
    'title': 'johndoe@email.com',
    'image': "images/meal_monkey/Componets/paypal.png"
  },
];
