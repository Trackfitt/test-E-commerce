import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final supabase = Supabase.instance.client;

  // This creates User Service
  Future<void> createUserWithEmailandPassword(
      String email, String password) async {
    try {
      final response =
          await supabase.auth.signUp(email: email, password: password);
      if (response.error != null) {
        // Sign up error
        print("Sign up error: ${response.error!.message}");
      } else if (response.user != null) {
        // Sign up success
        print("Sign up success");
      }
    } catch (error) {
      // Handle other errors
      print("Error occurred during sign up: $error");
    }
  }

  // This creates Login Service
  Future<void> signinUserWithEmailandPassword(
      String email, String password) async {
    try {
      final response =
          await supabase.auth.signInWithPassword(email: email, password: password);
      if (response.error != null) {
        // Sign in error
        print("Sign in error: ${response.error!.message}");
      } else if (response.user != null) {
        // Sign in success
        print("Sign in success");
      }
    } catch (error) {
      // Handle other errors
      print("Error occurred during sign in: $error");
    }
  }

  // This is Reset password service
  Future<void> resetPassword(String email) async {
    try {
      final response = await supabase.auth.api.resetPasswordForEmail(email);
      if (response.error != null) {
        // Reset password error
        print("Reset password error: ${response.error!.message}");
      } else {
        // Reset password success
        print("Reset password success");
      }
    } catch (error) {
      // Handle other errors
      print("Error occurred during reset password: $error");
    }
  }

  // Function to sign up with Google
  //Future<void> signUpWithGoogle() async {
  //try {
  //final response = await supabase.auth.signIn(provider: Provider.google);
  //if (response.error != null) {
  // Sign up with Google error
  //print("Sign up with Google error: ${response.error!.message}");
  //} else {
  // Sign up with Google success
  //print("Sign up with Google successful");
  //}
  //} catch (error) {
  // Handle any other errors
  //print("Error occurred during sign up with Google: $error");
  //}
  //}

  // Function to sign up with Apple
  //Future<void> signUpWithApple() async {
  //try {
  //final response = await supabase.auth.signIn(provider: Provider.apple);
  //if (response.error != null) {
  // Sign up with Apple error
  //print("Sign up with Apple error: ${response.error!.message}");
  //} else {
  // Sign up with Apple success
  //print("Sign up with Apple successful");
  //}
  //} catch (error) {
  // Handle any other errors
  //print("Error occurred during sign up with Apple: $error");
  //}
  //}

  // Login with Google
  //Future<void> signInWithGoogle() async {
  //try {
  //final response = await supabase.auth.signIn(provider: Provider.google);
  //if (response.error != null) {
  // Login with Google error
  //print("Login with Google error: ${response.error!.message}");
  //} else {
  // Login with Google success
  //print("Login with Google successful");
  //}
  //} catch (error) {
  // Handle any other errors
  //print("Error occurred during login with Google: $error");
  //}
  //}

  // Login with Apple
  //Future<void> signInWithApple() async {
  //try {
  //final response = await supabase.auth.signIn(provider: Provider.apple);
  //if (response.error != null) {
  // Login with Apple error
  //print("Login with Apple error: ${response.error!.message}");
  //} else {
  // Login with Apple success
  //print("Login with Apple successful");
  //}
  //} catch (error) {
  // Handle any other errors
  //print("Error occurred during login with Apple: $error");
  //}
  //}

  //This create signout
  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}
