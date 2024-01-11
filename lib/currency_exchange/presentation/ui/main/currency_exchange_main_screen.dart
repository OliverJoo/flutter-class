import 'package:flutter/material.dart';

class CurrencyExchangeMainScreen extends StatefulWidget {
  @override
  _CurrencyExchangeMainScreenState createState() => _CurrencyExchangeMainScreenState();
}

class _CurrencyExchangeMainScreenState extends State<CurrencyExchangeMainScreen> {
  // 기준 통화
  String _baseCurrency = 'KRW';
  // 대상 통화
  String _targetCurrency = 'USD';
  // 기준 통화 금액
  double _baseAmount = 1000.0;
  // 대상 통화 금액
  double _targetAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환율 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 기준 통화 금액 입력 필드
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '기준 통화 금액',
              ),
              onChanged: (value) {
                _baseAmount = double.parse(value);
              },
            ),
            // 기준 통화 드롭다운 목록
            DropdownButton<String>(
              value: _baseCurrency,
              onChanged: (value) {
                _baseCurrency = value!;
              },
              items: [
                DropdownMenuItem(
                  value: 'KRW',
                  child: Text('KRW'),
                ),
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('USD'),
                ),
                DropdownMenuItem(
                  value: 'EUR',
                  child: Text('EUR'),
                ),
                DropdownMenuItem(
                  value: 'JPY',
                  child: Text('JPY'),
                ),
              ],
            ),
            // 대상 통화 금액 입력 필드
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '대상 통화 금액',
              ),
            ),
            // 대상 통화 드롭다운 목록
            DropdownButton<String>(
              value: _targetCurrency,
              onChanged: (value) {
                _targetCurrency = value!;
                _updateTargetAmount();
              },
              items: [
                DropdownMenuItem(
                  value: 'KRW',
                  child: Text('KRW'),
                ),
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('USD'),
                ),
                DropdownMenuItem(
                  value: 'EUR',
                  child: Text('EUR'),
                ),
                DropdownMenuItem(
                  value: 'JPY',
                  child: Text('JPY'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 대상 통화 금액을 업데이트합니다.
  void _updateTargetAmount() {
    // 환율 정보를 가져옵니다.
    double rate = _getRate(_baseCurrency, _targetCurrency);
    // 대상 통화 금액을 계산합니다.
    _targetAmount = _baseAmount * rate;
    // 대상 통화 금액 입력 필드를 업데이트합니다.
    setState(() {
      _targetAmount = _targetAmount;
    });
  }

  // 환율 정보를 가져옵니다.
  double _getRate(String base, String target) {
    // TODO: 실제 환율 정보를 가져오는 코드를 작성합니다.
    return 1.0;
  }
}