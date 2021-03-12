import 'package:app/model/loans_model.dart';
import 'package:http/http.dart';

abstract class LoanRepo {
  Future<List<Loans>> getUserLoan({branch});
}

class LoanServices implements LoanRepo {
  static const _baseUrl = 'api-main.loandisk.com/16066';
  static const String _GET_LOANS = '';

  @override
  Future<List<Loans>> getUserLoan({branch}) async {
    Uri uri = Uri.https('$_baseUrl/ branch', _GET_LOANS);
  }
}
