import 'package:flutter/material.dart';

class MyNetworkImage {
  final String imageUrl;

  MyNetworkImage(this.imageUrl);

  String buildImage() {
    return imageUrl;
  }
}

List<MyNetworkImage> myNetworkImages = [
  MyNetworkImage(
      'https://images.unsplash.com/photo-1574780153543-4aa9c85c22ef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  MyNetworkImage(
      'https://lh3.googleusercontent.com/ci/AEwo86ejE-PELbZFhMNyQcl6bbe11pD49XdRGDAa6uvLtTayL91sQlXPcGE3zVJ-ZMU4Zp4rwnWoCUI=s1200'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1573935392379-e9367b718ef1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1056&q=80'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1558281050-4c33200099c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1602002418816-5c0aeef426aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1575231902142-29aaec0bd547?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1618238832760-7e4129ef4a43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  MyNetworkImage(
      'https://images.unsplash.com/photo-1549748206-57378bd2316c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1075&q=80'),
];
