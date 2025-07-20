import 'package:hive_ce_flutter/hive_flutter.dart';

class HiveService {
  static const String _themeBox = 'theme_box';
  static const String _calendarBox = 'calendar_box';

  static Box<dynamic>? _themeBoxInstance;
  static Box<dynamic>? _calendarBoxInstance;

  /// Initialize Hive and open all required boxes
  static Future<void> init() async {
    await Hive.initFlutter();
    
    // Open boxes
    _themeBoxInstance = await Hive.openBox(_themeBox);
    _calendarBoxInstance = await Hive.openBox(_calendarBox);
  }

  /// Get the theme box instance
  static Box<dynamic> get themeBox {
    if (_themeBoxInstance == null) {
      throw Exception('Theme box not initialized. Call HiveService.init() first.');
    }
    return _themeBoxInstance!;
  }

  /// Get the calendar box instance
  static Box<dynamic> get calendarBox {
    if (_calendarBoxInstance == null) {
      throw Exception('Calendar box not initialized. Call HiveService.init() first.');
    }
    return _calendarBoxInstance!;
  }

  /// Close all boxes (call this when app is disposed)
  static Future<void> close() async {
    await _themeBoxInstance?.close();
    await _calendarBoxInstance?.close();
    _themeBoxInstance = null;
    _calendarBoxInstance = null;
  }
}
