import 'package:code_alpha_fitness_app/global_variable.dart'; 
import 'package:code_alpha_fitness_app/models/user_model/user_model.dart';
import 'package:code_alpha_fitness_app/services/api_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs; // Observable loading state

  Future<void> registerUser(
    BuildContext context,
    String fullName,
    String phoneNumber,
    String email,
    String password,
  ) async {
    try {
      isLoading.value = true; // Show loader

      final user = User(
        id: '',
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
      );

      http.Response response = await http.post(
        Uri.parse('$uri/register'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      ApiResponse(
        response: response,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Account Created Successfully!');
        },
      );
    } catch (e) {
      showSnackBar(context, '$e Something went wrong');
    } finally {
      isLoading.value = false; // Hide loader
    }
  }
}
