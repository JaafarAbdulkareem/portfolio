import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendEmail({
  required String userName,
  required String message,
  required String userEmail,
}) async {
  const serviceId = 'service_88cf11q';
  const templateId = 'template_w7jjp27';
  const userId = 'hU_sJtQP6fM9KQ92R'; //* Account / public key
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  await http.post(
    url,
    headers: {'origin': 'http://localhost', 'Content-Type': 'application/json'},
    body: json.encode(
      {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'from_name': userName,
          'from_email': userEmail,
          'message': message,
        }
      },
    ),
  );
}
