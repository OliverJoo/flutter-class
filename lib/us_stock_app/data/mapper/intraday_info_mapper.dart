import 'package:flutter_class/us_stock_app/data/dto/intraday_info_dto.dart';
import 'package:flutter_class/us_stock_app/domain/model/intraday_info.dart';
import 'package:intl/intl.dart';

extension ToIntradayInfo on IntradayInfoDto {
  IntradayInfo toIntradayInfo() {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');

    return IntradayInfo(
      date: formatter.parse(timestamp),
      close: close,
    );
  }
}
