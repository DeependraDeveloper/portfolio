// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/foundation.dart';
import 'package:gsheets/gsheets.dart';
import 'package:personalportfolio/models/message.dart';

class MessageSheetsApi {
  static const _credentials = r'''
 {
  "type": "service_account",
  "project_id": "messagesheets",
  "private_key_id": "4047bc73a6566181bfeab3d1cd9d467bc1a5a0ed",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC3tHXC+jGH7kof\n8RSnp5DjbZ5idcAm7QITXYMOyHqsQW9M/ezpMltZNJg6dIGMCG+kgC8JfKdOo1VO\nZe8UoDDGRXokRXKqps1fKltmqBI+p6Tqle5o6GkaqlVmt28bNuUjhmc0sM7UcQGG\nJhyyFk65rltvkviZHXcPJtzjyMTOsZImAIJ76C5pDumfARgykh74o594fZVFgv6Y\nhcY1aWqpCObiYRURiaWG1rfdgV0JdShTviXGspf2DjYZmoUizj9taQhUDrKDrfMZ\ndi3jam5+GJi2BkrSUO9EYN+st6wq875sNUtzCXi3Z2J0+ZCDzAPdJRCoRumDzHnf\nvWz/KKxBAgMBAAECggEABIGFJ/CqGVrzb4Ai0Q/volx0d5bKzUmf9Oikx86MD8CV\nIc7Sqk+lZPVAzKJB8TTdxCuuu61Wjzu7Ym5mpFtfhuV6XvxjGSN5Qx3PWx/BPs8u\n4OAnlmQo+9H0wU27iG/aw/nOe0Dg+d4BuxAhQQ8CBFTuAjkZJuxNmM4LufyZMzam\nGOMxHhKrwmJpdDyIKblyiEvXbsHaLLi8oPmeB0D4ehJVRyTenurJRESewOlDSyB7\nXr7RU9zA3r/rRkeurPj7wyhhU5CBhfNT8h+gTGP9JPo+2VkXJHslj9AxvU50fWxR\nXPqp+rFE1MKuupo7hLNZghOdo9YHxinObpJqxijkIQKBgQDzbkTmAwYK7T0kFJm9\n5xD0N/ivP9beGdy0b6ZsG/ZiAlAIhBf/QQiEkiigYSs+JXvLumcW+e9Qkf0bW0/D\nw25zsDs2RXA68IAVW/KNRcTxete6TEvR8KCLVPr/NT7dkNmtzqQ6rzxq5DnISCd9\nb+1/v1AmgDJ6z4ylV+5PuHfJeQKBgQDBMLgvvVEBeWdBvBfSVM2lvLTa8foYdm7k\nrnJsCTSmOdKxEHd3Jv5ulU4jWFeuPHmkEU7D16ilglvKXkTeuutse5+cFDg2XheB\n8DmWQvxGogvx07ikbRHEXpiC01SHmCRKiVZOvMEbMpGdeVkaLNA6ysLicMB9AY3Z\naDik8qiPCQKBgFRkJf6XjcC7/jZD7gin0njX7p7Swuq8jIcBLfDMwN25b4WERc13\n/jv3b54qEZO56vD17kdI3m5QLi8NuNllJyV0MxLdf8rvFXhSKARR67TLoX40dRST\nFxU2oM1Y6DJnxQ88VDMEDS4BcQa9/PK/mtZuvJqcVuO8kEXB9hwtF1oBAoGBAKYL\nQcOGbAFgXydYiwD0cmxo7Ojh4Zr08AsNBLtmjiHwwO3+wS9gDH7vROGMJJBU2hfx\n6EjbKtBWYp5kt7zX21C6UEzN9CKGbJ354wULPdlXnfyThLeOJx8oTtzi1lxUn5yQ\nveWexjqiFBXNHpAoxDBD5YzKbCcFFu4tbcIX7lhBAoGBAIiA9a1IinGmtOEGfaO2\n4WicaRT8FSj+9LBB6fbAzccBZg3J/JMszR3pyoacdNGXbIQ00O1kPNYx4zoMkQdS\nTb4LhCD4qjNq7J8CeP87Sc1vHN8Zz/GNEdqe0Kv32J1nCg2nIODun3R4jma7JDpb\nN57dlBJcNHbsZBQp55j7Qsl/\n-----END PRIVATE KEY-----\n",
  "client_email": "messagesheets@messagesheets.iam.gserviceaccount.com",
  "client_id": "110134947981003673503",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/messagesheets%40messagesheets.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
  static const _spreadSheetId = "1ZzcoJDQmDX-5U5XkD77iA8-qIUWeBAXWXQYGZeRp_6o";
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _messageSheet;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadSheetId);

      _messageSheet = await _getWorkSheet(spreadsheet, title: "Messages");

      const firstRow = Message.columns;

      await _messageSheet!.values.insertRow(1, firstRow);
    } on GSheetsException catch (e) {
      if (kDebugMode) {
        print('GSheetsException: ${e}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
    }
  }

  static Future<Worksheet?> _getWorkSheet(Spreadsheet spreadsheet,
      {required String title}) async {
    try {
      return spreadsheet.worksheetByTitle(title);
    } catch (e) {
      return await spreadsheet.addWorksheet(title);
    }
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    try {
      if (_messageSheet == null) {
        await init();
      }
      await _messageSheet!.values.map.appendRows(rowList);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
