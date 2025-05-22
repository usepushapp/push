import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? cartTotal(List<double>? allPrices) {
  // generate  total price from cart list
  if (allPrices == null || allPrices.isEmpty) {
    return null;
  }

  double totalPrice = 0.0;
  for (double price in allPrices) {
    totalPrice += price;
  }

  return totalPrice;
}

double? checkoutTotal(
  List<double>? mediaCartPrices,
  List<double>? writingCartPrices,
) {
  // Get the checkout total price from 2 carts list
  // Calculate total price for media cart
  double? mediaCartTotal = cartTotal(mediaCartPrices);

  // Calculate total price for writing cart
  double? writingCartTotal = cartTotal(writingCartPrices);

  // Return the sum of both cart totals
  if (mediaCartTotal != null && writingCartTotal != null) {
    return mediaCartTotal + writingCartTotal;
  } else {
    return mediaCartTotal;
  }
}

double? sumFirebaseQuery(List<double> earnings) {
  double sum = 0.0;
  for (double amount in earnings) {
    sum += amount;
  }
  return sum;
}
