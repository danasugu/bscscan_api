import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscscanTokenFftxModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscscanTokenFftxResult>? result;
  BscscanTokenFftxModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscscanTokenFftxModel copyWith({
    String? status,
    String? message,
    List<BscscanTokenFftxResult>? result,
  }) {
    return BscscanTokenFftxModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result?.map((x) => x.toMap()).toList(),
    };
  }

  factory BscscanTokenFftxModel.empty() {
    return BscscanTokenFftxModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscscanTokenFftxModel.fromMap(Map<String, dynamic> map) {
    return BscscanTokenFftxModel(
      status: map['status'],
      message: map['message'],
      result: List<BscscanTokenFftxResult>.from(
        map['result']?.map(
          (x) => BscscanTokenFftxResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscscanTokenFftxModel.fromJson(String source) =>
      BscscanTokenFftxModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class BscscanTokenFftxResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String hash;
  final String nonce;
  final String blockHash;
  final String from;
  final String contractAddress;
  final String to;
  final String tokenID;
  final String tokenName;
  final String tokenSymbol;
  final String tokenDecimal;
  final String transactionIndex;
  final String gas;
  final String gasPrice;
  final String gasUsed;
  final String cumulativeGasUsed;
  final String input;
  final String confirmations;
  BscscanTokenFftxResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.hash,
    required this.nonce,
    required this.blockHash,
    required this.from,
    required this.contractAddress,
    required this.to,
    required this.tokenID,
    required this.tokenName,
    required this.tokenSymbol,
    required this.tokenDecimal,
    required this.transactionIndex,
    required this.gas,
    required this.gasPrice,
    required this.gasUsed,
    required this.cumulativeGasUsed,
    required this.input,
    required this.confirmations,
  });

  BscscanTokenFftxResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? hash,
    String? nonce,
    String? blockHash,
    String? from,
    String? contractAddress,
    String? to,
    String? tokenID,
    String? tokenName,
    String? tokenSymbol,
    String? tokenDecimal,
    String? transactionIndex,
    String? gas,
    String? gasPrice,
    String? gasUsed,
    String? cumulativeGasUsed,
    String? input,
    String? confirmations,
  }) {
    return BscscanTokenFftxResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      hash: hash ?? this.hash,
      nonce: nonce ?? this.nonce,
      blockHash: blockHash ?? this.blockHash,
      from: from ?? this.from,
      contractAddress: contractAddress ?? this.contractAddress,
      to: to ?? this.to,
      tokenID: tokenID ?? this.tokenID,
      tokenName: tokenName ?? this.tokenName,
      tokenSymbol: tokenSymbol ?? this.tokenSymbol,
      tokenDecimal: tokenDecimal ?? this.tokenDecimal,
      transactionIndex: transactionIndex ?? this.transactionIndex,
      gas: gas ?? this.gas,
      gasPrice: gasPrice ?? this.gasPrice,
      gasUsed: gasUsed ?? this.gasUsed,
      cumulativeGasUsed: cumulativeGasUsed ?? this.cumulativeGasUsed,
      input: input ?? this.input,
      confirmations: confirmations ?? this.confirmations,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'hash': hash,
      'nonce': nonce,
      'blockHash': blockHash,
      'from': from,
      'contractAddress': contractAddress,
      'to': to,
      'tokenID': tokenID,
      'tokenName': tokenName,
      'tokenSymbol': tokenSymbol,
      'tokenDecimal': tokenDecimal,
      'transactionIndex': transactionIndex,
      'gas': gas,
      'gasPrice': gasPrice,
      'gasUsed': gasUsed,
      'cumulativeGasUsed': cumulativeGasUsed,
      'input': input,
      'confirmations': confirmations,
    };
  }

  factory BscscanTokenFftxResult.fromMap(Map<String, dynamic> map) {
    return BscscanTokenFftxResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      hash: map['hash'],
      nonce: map['nonce'],
      blockHash: map['blockHash'],
      from: map['from'],
      contractAddress: map['contractAddress'],
      to: map['to'],
      tokenID: map['tokenID'],
      tokenName: map['tokenName'],
      tokenSymbol: map['tokenSymbol'],
      tokenDecimal: map['tokenDecimal'],
      transactionIndex: map['transactionIndex'],
      gas: map['gas'],
      gasPrice: map['gasPrice'],
      gasUsed: map['gasUsed'],
      cumulativeGasUsed: map['cumulativeGasUsed'],
      input: map['input'],
      confirmations: map['confirmations'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscscanTokenFftxResult.fromJson(String source) =>
      BscscanTokenFftxResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      blockNumber,
      timeStamp,
      hash,
      nonce,
      blockHash,
      from,
      contractAddress,
      to,
      tokenID,
      tokenName,
      tokenSymbol,
      tokenDecimal,
      transactionIndex,
      gas,
      gasPrice,
      gasUsed,
      cumulativeGasUsed,
      input,
      confirmations,
    ];
  }
}
