import 'package:flutter/material.dart';

class AuthScreenHelper {
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a URL';
    }
    if (!value.startsWith('http://') && !value.startsWith('https://')) {
      return 'URL must start with http:// or https://';
    }
    return null;
  }

  static String? validateApiKey(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an API key';
    }
    if (value.length < 8) {
      return 'API key must be at least 8 characters';
    }
    return null;
  }
}
