import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/Cart.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';

class Helper {
  static List<Grocery> getVegetableList() {
    return [
      Grocery(
          name: 'Spinach',
          price: 50,
          size: '2kg',
          image: '${Constant.PATH_IMAGE}/spinach.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Japanese Cabbage',
          price: 80,
          size: '1kg',
          image: '${Constant.PATH_IMAGE}/cabbage.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Tomato',
          price: 20,
          size: '1kg',
          image: '${Constant.PATH_IMAGE}/tomato.jpeg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Broccoli',
          price: 120,
          size: '2kg',
          image: '${Constant.PATH_IMAGE}/broccoli.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Garlic',
          price: 200,
          size: '4kg',
          image: '${Constant.PATH_IMAGE}/garlic.jpeg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Green Paprica',
          price: 150,
          size: '2kg',
          image: '${Constant.PATH_IMAGE}/capcicum.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Red Onion',
          price: 100,
          size: '3kg',
          image: '${Constant.PATH_IMAGE}/redonion.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Red Chilli',
          price: 80,
          size: '2kg',
          image: '${Constant.PATH_IMAGE}/redchilli.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Green Chilli',
          price: 150,
          size: '4kg',
          image: '${Constant.PATH_IMAGE}/greenchilli.jpg',
          details: Constant.PRODUCT_DETAILS),
      Grocery(
          name: 'Green Spinach',
          price: 150,
          size: '6kg',
          image: '${Constant.PATH_IMAGE}/spinach.jpg',
          details: Constant.PRODUCT_DETAILS),
    ];
  }

  static List<Orders> getOrderList() {
    return [
      Orders(
          status: Status(
              name: Constant.WAITING_PAYMENT,
              bgColor: Colors.orange[100],
              textColor: Colors.orange),
          date: '06/12/2020',
          transactionId: '#321DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '279'),
      Orders(
          status: Status(
              name: Constant.ON_PROCESS,
              bgColor: Colors.blue[100],
              textColor: Colors.blue),
          date: '09/12/2020',
          transactionId: '#390DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '581'),
      Orders(
          status: Status(
              name: Constant.DELIVERED,
              bgColor: Colors.green[100],
              textColor: Colors.green),
          date: '26/08/2020',
          transactionId: '#123BUSE',
          deliveredTo: 'Sion Home',
          totalPayment: '1000'),
      Orders(
          status: Status(
              name: Constant.FAILED,
              bgColor: Colors.red[100],
              textColor: Colors.red),
          date: '06/12/2020',
          transactionId: '#621BASE',
          deliveredTo: 'Sion Home',
          totalPayment: '111'),
      Orders(
          status: Status(
              name: Constant.WAITING_PAYMENT,
              bgColor: Colors.orange[100],
              textColor: Colors.orange),
          date: '06/12/2020',
          transactionId: '#321DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '279'),
      Orders(
          status: Status(
              name: Constant.WAITING_PAYMENT,
              bgColor: Colors.orange[100],
              textColor: Colors.orange),
          date: '06/12/2020',
          transactionId: '#321DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '279'),
      Orders(
          status: Status(
              name: Constant.ON_PROCESS,
              bgColor: Colors.blue[100],
              textColor: Colors.blue),
          date: '09/12/2020',
          transactionId: '#390DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '581'),
      Orders(
          status: Status(
              name: Constant.DELIVERED,
              bgColor: Colors.green[100],
              textColor: Colors.green),
          date: '26/08/2020',
          transactionId: '#123BUSE',
          deliveredTo: 'Sion Home',
          totalPayment: '1000'),
      Orders(
          status: Status(
              name: Constant.FAILED,
              bgColor: Colors.red[100],
              textColor: Colors.red),
          date: '06/12/2020',
          transactionId: '#621BASE',
          deliveredTo: 'Sion Home',
          totalPayment: '111'),
      Orders(
          status: Status(
              name: Constant.WAITING_PAYMENT,
              bgColor: Colors.orange[100],
              textColor: Colors.orange),
          date: '06/12/2020',
          transactionId: '#321DERS',
          deliveredTo: 'Sion Home',
          totalPayment: '279'),
    ];
  }

  static List<Cart> getCartDetails() {
    List groceryList = getVegetableList();
    return [
      Cart(grocery: groceryList[0], quantity: 2),
      Cart(grocery: groceryList[1], quantity: 20),
      Cart(grocery: groceryList[2], quantity: 4),
      Cart(grocery: groceryList[3], quantity: 7),
      Cart(grocery: groceryList[4], quantity: 1),
      // Cart(grocery: groceryList[5], quantity: 16),
    ];
  }
}
