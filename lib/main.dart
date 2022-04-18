import 'package:bscscan_api/bscscan_api.dart';

void main() async {
  final bsc = BscscanAPI(
      apiKey: '8MQ7JX4QJ7Q9C7FDUNP8YZ8B2UNHY8WJW3',
      chain: BscChain.testnet,
      enableLogs: false);

  final bal = await bsc.txListInternal(
      txhash:
          '0x7a6bcaba5991d70fe8e8ef3d415e698d8c1790a4491f53e37caaea8f72241194');

  print(bal);

  /// BscScanBalanceModel(1, OK, [BscScanBalanceResult(0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae, 430141119464489895480972)])
}
