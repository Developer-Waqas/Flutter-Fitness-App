import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
void ApiResponse({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, json.decode(response.body)['message']);
      break;
    case 500:
      showSnackBar(context, json.decode(response.body)['error']);
      break;
    case 201:
      onSuccess();
      break;
  }
}

void showSnackBar(BuildContext context, String title) {
  Get.showSnackbar(GetSnackBar(
    title: title,
  ));
}
