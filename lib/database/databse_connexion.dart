/*import 'package:crud_app1/database/database_connexion.dart';
import 'package:mysql1/mysql1.dart';
import 'package:crud_app1/homepage.dart';
import 'package:flutter/material.dart';
*/
/*class DatabaseHelper {
  static MySqlConnection _connection;

  static Future<MySqlConnection> getConnection() async {
    if (_connection == null) {
      // Connexion à la base de données MySQL
      var settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: '',
        db: 'hopital',
      );
      _connection = await MySqlConnection.connect(settings);
    }
    return _connection;
  }

  static Future<void> closeConnection() async {
    if (_connection != null) {
      await _connection.close();
      _connection = null;
    }
  }
}*/