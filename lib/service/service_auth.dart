import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _firebasekey = 'AIzaSyBYBW7kLXTS88Xb55PYWhHCdXCNXzleIMU';

  final storage = const FlutterSecureStorage();

  //REGISTRAR NUEVO USUARIO

  Future<String?> createUSer(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url =
        Uri.https(_baseUrl, '/v1/accounts:signUp', {'key': _firebasekey});
    final response = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idtoken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  //LOGIN
  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(
        _baseUrl, '/v1/accounts:signInWithPassword', {'key': _firebasekey});
    final response = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idtoken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  // CERRAR SESION
  Future cerrarSesion() async {
    await storage.delete(key: 'token');
    return;
  }

//VERIFICAR TOKEN

  Future<String> leerToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
