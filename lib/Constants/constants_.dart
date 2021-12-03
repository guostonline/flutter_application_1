// ignore: file_names

import 'package:flutter/material.dart'
    show Color, Colors, FontWeight, TextStyle;

const credentials = r"""
{
  "type": "service_account",
  "project_id": "suivieapp",
  "private_key_id": "a3c305f57d0a35a44c24b3438f0157bade97c8ea",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDXcOqd2YCSCwic\nk97Zr4/z7QyJcOqWPpH5sRuXeTcMpCaorI295s5dSIdT3cZ+DCgU5FOlwb78IkjG\nWemMG5T1p74zEcn+p8PYWE8cVSLtIhNfLi6RJwnloTy3XzBHdpiW6GjBmijKVJlS\n4RG6OB+wgjf8DtBKttZYWxGct5DgIPl2AhF95xiDI0H/OkH3zZyCruj2GK4yi9wA\nAwZxsNhcVDy5JATzWbrmANHNgsZ63V0q36+ZMv+Bvul73gDolqxPJymBrGe4eom1\nt5cCcsaJk1v/mF25pqLo0J/o6oB/H9BaBjXs4tA++yR+lLWesHhOf8s9oaSF18h9\nftmOZRpdAgMBAAECggEADMeKaz2dJkyYQK120SPcXqRHk5mKmMnyX8TVNal/jfTo\nxCWkLMkVoavtNxjXLt/qur6GhbUV7p/cAEQSGfkC34WJPz9FY6Ew+VLXsn8MWNOm\nIYW8Rmjx6dikIN55HywWRhFYMW/DDqlxBN0L76dnndFDn+SDD4OD+G7CfzDWW60N\nHSeO87DCzcrKHfeV0FAZ+FqXFeT7juThG/AzO2n13YxV/+G1lpNsBaegl6avHhdf\neOvG/WST+JVj1n7R/23TSRrIhxizIZIuGRFBpJIRZdK4gzfx8YO6pB58KhOREw7I\nStB3dhXiBAzD0YT0e7DaSQ9jFgYHH4XKuYU3fsTNoQKBgQD9x2tTDNfWA9Q6XqtO\nnaicuzZ9VdDVjBBGmsW/BP7VtBxdoQ+1VPYTaTtlQoaRKJsRH1DJG6mOLPyzdHdP\nPNY9uyO8jmXR4OgEVum0cGoywBEymeTq94qciW+71ltzIqsvq0KP0tZEjCA77OKh\nn93cD7jLO5ROxaz/bcK9+2XCjQKBgQDZU5pTamT/4mjy1X17NjHjM8sJLaCvEqYf\nsmXMvBE/PY66K20U5I3TeLYhSd9IEi99+X+QDF2YG3n5+rbWIvSjdkbRBT0Fk0Nj\neR8qZL8ONp4YBC1Dk++QgeBtgHNiZqOffa/5TWyEuQbXKlsN7WpmpbnJfQX7mIee\n3NXBjiurEQKBgBut4HrSb8gb6s3i/XQ5peZSVQMelQR1nmDVCLRo6xKL7nwX0QrK\nFXzQgXXt55d1glQ/wiPtLHUhWv6HuWufCw74llE+hsR5b1Tp1dukVzDp2fZW6qzm\nCuw/4TvviVHpehpc54mgSVZ4ohtnHuDZ+uzBmjowaWCeFtxVMGRgQx0RAoGBAMty\nByuFky00H3kMQF6imksORki+TQj3lUpg8AmcGS0xjDZdxszjNJ2+CAnbpMlMNOdi\nNHd+C/QD7MkGWjjWGlwXsi2kEL7yYAhz76f5Dh3ZJWBoMJNtnruRya3YrKt2WEBL\nIfxo7WjF6VBtlzXPhma3R9gGUR55aKRgKT77v4dxAoGBAMecIj/03N7qBidPYAVJ\nTG0g6LHwu/89pwR07U6zv/CBuNbVvMv+UosA5yPHio4lkRpl3OQHeCQGtkqrGMOu\nLfwG9JWe2BfqIv5VC6V8Yb48/VK2EyVTphWpZmv2H95HncvT91TQ3lv3KIINEeS3\nZWoKKUHP2NUBxxb+s5La1IaT\n-----END PRIVATE KEY-----\n",
  "client_email": "suivie-app-flutter@suivieapp.iam.gserviceaccount.com",
  "client_id": "116445771006156697622",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/suivie-app-flutter%40suivieapp.iam.gserviceaccount.com"
}
""";
const codeCdz = "madec123";
const spreadSheet = "1pxAGYXbMBC7m0J8tJUgQIMhRAbdiwXnMLE435-6jUGw";

const List<Color> myColor1 = [
  Colors.green,
  Colors.black,
  // Colors.yellow.shade300,
];
const List<Color> myColor2 = [
  Color(0xff0f0c29),
  Color(0xff302b63),
  Color(0xff24243e),
  // Colors.yellow.shade300,
];

const TextStyle textStyle1 =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
const TextStyle textStyle2 = TextStyle(
  fontSize: 18,
  color: Colors.white,
);
const TextStyle textStyle3 =
    TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold);
const TextStyle textStyleBigTitle =
    TextStyle(fontSize: 38, fontWeight: FontWeight.bold);
