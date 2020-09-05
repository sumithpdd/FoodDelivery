import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/services/restaurant_service.dart';

class RestaurantProvider with ChangeNotifier {
  List<RestaurantModel> restaurants = [];
  RestaurantService _restaurantService = RestaurantService();

  RestaurantProvider.initialize() {
    _loadRestaurants();
  }

  _loadRestaurants() async {
    restaurants = await _restaurantService.getRestaurants();
    notifyListeners();
  }
}
