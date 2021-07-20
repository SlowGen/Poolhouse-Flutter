import 'package:flutter_test/flutter_test.dart';

import '../lib/models/server_data.dart';

void main() {
  test('server list starts empty', () {
    expect(ServerData().servers.length, 0);
  });
  test('add server creates one server', () {
    final serverData = ServerData();
    serverData.addServer(
      'test server',
      5.0,
      250.0,
    );
    expect(serverData.servers.length, 1);
  });
}
