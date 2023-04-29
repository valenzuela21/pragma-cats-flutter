import 'package:catspragma/exceptions/message_exception.dart';
import 'package:catspragma/models/custom_error.model.dart';
import 'package:catspragma/services/cats_pragma_api.service.dart';

class CatsRepository {
  final CatsPragmaApiServices catsPragmaApiServices;

  CatsRepository({required this.catsPragmaApiServices});

  Future allCats() async {
    try {
      final List<dynamic> resultCats = await catsPragmaApiServices.getAllCats();
      return resultCats;
    } on MessageException catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }

  Future findCats(String term) async {
    try{
      final List<dynamic> resultFindCats =  await catsPragmaApiServices.getFindCats(term);
      return resultFindCats;
    } on MessageException catch (e) {
      throw CustomError(errMsg:  e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
