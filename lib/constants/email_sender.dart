import "dart:convert";

import "package:http/http.dart" as http;
import "package:portfolio/email.dart";

Future sendEmail(
    {required String name,
    required String email,
    required String subject,
    required String message}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'from_name': name,
          'from_email': email,
          'subject': subject,
          'message': message,
        }
      }));
  return response.statusCode;
}
