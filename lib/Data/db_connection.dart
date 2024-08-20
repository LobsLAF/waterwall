import 'package:mysql1/mysql1.dart';

class DbConnection {
  static DbConnection instance = DbConnection();

  Future<MySqlConnection> startConnection() async {
    var settings = ConnectionSettings(
        host: '85.10.205.173',
        port: 3306,
        user: 'waterw',
        password: 'ww123456',
        db: 'dbwaterwall');

    final conn = await MySqlConnection.connect(settings);

    return conn;
  }

  Future<String> getCurrentVolume() async {
    final conn = await startConnection();

    var results = await conn.query('SELECT volume FROM waterflow');

    await conn.close();

    if (results.isNotEmpty) {
      String currentVolume = results.last['volume'];
      return currentVolume;
    } else {
      throw Exception('Nenhum valor encontrado');
    }
  }
}
