import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendEmail({
  required String userName,
  required String message,
  required String userEmail,
}) async {
  const serviceId = 'service_ffbz2xf';
  const templateId = 'template_2lzsbgg';
  const userId = 'pr_WaWKyFzyf6n-3x'; //* Account / public key
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
