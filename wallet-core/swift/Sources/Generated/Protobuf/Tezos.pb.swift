// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Tezos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Input data necessary to create a signed Tezos transaction.
/// Next field: 3
public struct TW_Tezos_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var operationList: TW_Tezos_Proto_OperationList {
    get {return _operationList ?? TW_Tezos_Proto_OperationList()}
    set {_operationList = newValue}
  }
  /// Returns true if `operationList` has been explicitly set.
  public var hasOperationList: Bool {return self._operationList != nil}
  /// Clears the value of `operationList`. Subsequent reads from it will return its default value.
  public mutating func clearOperationList() {self._operationList = nil}

  public var privateKey: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _operationList: TW_Tezos_Proto_OperationList? = nil
}

/// Transaction signing output.
/// Next field: 2
public struct TW_Tezos_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var encoded: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A list of operations and a branch.
/// Next field: 3
public struct TW_Tezos_Proto_OperationList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var branch: String = String()

  public var operations: [TW_Tezos_Proto_Operation] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// An operation that can be applied to the Tezos blockchain.
/// Next field: 12
public struct TW_Tezos_Proto_Operation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var counter: Int64 = 0

  public var source: String = String()

  public var fee: Int64 = 0

  public var gasLimit: Int64 = 0

  public var storageLimit: Int64 = 0

  public var kind: TW_Tezos_Proto_Operation.OperationKind = .endorsement

  /// Operation specific data depending on the type of the operation.
  public var operationData: TW_Tezos_Proto_Operation.OneOf_OperationData? = nil

  public var revealOperationData: TW_Tezos_Proto_RevealOperationData {
    get {
      if case .revealOperationData(let v)? = operationData {return v}
      return TW_Tezos_Proto_RevealOperationData()
    }
    set {operationData = .revealOperationData(newValue)}
  }

  public var transactionOperationData: TW_Tezos_Proto_TransactionOperationData {
    get {
      if case .transactionOperationData(let v)? = operationData {return v}
      return TW_Tezos_Proto_TransactionOperationData()
    }
    set {operationData = .transactionOperationData(newValue)}
  }

  public var delegationOperationData: TW_Tezos_Proto_DelegationOperationData {
    get {
      if case .delegationOperationData(let v)? = operationData {return v}
      return TW_Tezos_Proto_DelegationOperationData()
    }
    set {operationData = .delegationOperationData(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Operation specific data depending on the type of the operation.
  public enum OneOf_OperationData: Equatable {
    case revealOperationData(TW_Tezos_Proto_RevealOperationData)
    case transactionOperationData(TW_Tezos_Proto_TransactionOperationData)
    case delegationOperationData(TW_Tezos_Proto_DelegationOperationData)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Tezos_Proto_Operation.OneOf_OperationData, rhs: TW_Tezos_Proto_Operation.OneOf_OperationData) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.revealOperationData, .revealOperationData): return {
        guard case .revealOperationData(let l) = lhs, case .revealOperationData(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.transactionOperationData, .transactionOperationData): return {
        guard case .transactionOperationData(let l) = lhs, case .transactionOperationData(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.delegationOperationData, .delegationOperationData): return {
        guard case .delegationOperationData(let l) = lhs, case .delegationOperationData(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum OperationKind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Note: Proto3 semantics require a zero value.
    case endorsement // = 0
    case reveal // = 107
    case transaction // = 108
    case delegation // = 110
    case UNRECOGNIZED(Int)

    public init() {
      self = .endorsement
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .endorsement
      case 107: self = .reveal
      case 108: self = .transaction
      case 110: self = .delegation
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .endorsement: return 0
      case .reveal: return 107
      case .transaction: return 108
      case .delegation: return 110
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension TW_Tezos_Proto_Operation.OperationKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TW_Tezos_Proto_Operation.OperationKind] = [
    .endorsement,
    .reveal,
    .transaction,
    .delegation,
  ]
}

#endif  // swift(>=4.2)

/// Transaction operation specific data.
/// Next field: 3
public struct TW_Tezos_Proto_TransactionOperationData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var destination: String = String()

  public var amount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Reveal operation specific data.
/// Next field: 2
public struct TW_Tezos_Proto_RevealOperationData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var publicKey: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Delegation operation specific data.
/// Next field: 2
public struct TW_Tezos_Proto_DelegationOperationData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var delegate: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Tezos.Proto"

extension TW_Tezos_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "operation_list"),
    2: .standard(proto: "private_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._operationList) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._operationList {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_SigningInput, rhs: TW_Tezos_Proto_SigningInput) -> Bool {
    if lhs._operationList != rhs._operationList {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.encoded) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularBytesField(value: self.encoded, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_SigningOutput, rhs: TW_Tezos_Proto_SigningOutput) -> Bool {
    if lhs.encoded != rhs.encoded {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_OperationList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "branch"),
    2: .same(proto: "operations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.branch) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.operations) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.branch.isEmpty {
      try visitor.visitSingularStringField(value: self.branch, fieldNumber: 1)
    }
    if !self.operations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.operations, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_OperationList, rhs: TW_Tezos_Proto_OperationList) -> Bool {
    if lhs.branch != rhs.branch {return false}
    if lhs.operations != rhs.operations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_Operation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Operation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "counter"),
    2: .same(proto: "source"),
    3: .same(proto: "fee"),
    4: .standard(proto: "gas_limit"),
    5: .standard(proto: "storage_limit"),
    7: .same(proto: "kind"),
    8: .standard(proto: "reveal_operation_data"),
    9: .standard(proto: "transaction_operation_data"),
    11: .standard(proto: "delegation_operation_data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.counter) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.source) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.fee) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.gasLimit) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.storageLimit) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.kind) }()
      case 8: try {
        var v: TW_Tezos_Proto_RevealOperationData?
        if let current = self.operationData {
          try decoder.handleConflictingOneOf()
          if case .revealOperationData(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationData = .revealOperationData(v)}
      }()
      case 9: try {
        var v: TW_Tezos_Proto_TransactionOperationData?
        if let current = self.operationData {
          try decoder.handleConflictingOneOf()
          if case .transactionOperationData(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationData = .transactionOperationData(v)}
      }()
      case 11: try {
        var v: TW_Tezos_Proto_DelegationOperationData?
        if let current = self.operationData {
          try decoder.handleConflictingOneOf()
          if case .delegationOperationData(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationData = .delegationOperationData(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.counter != 0 {
      try visitor.visitSingularInt64Field(value: self.counter, fieldNumber: 1)
    }
    if !self.source.isEmpty {
      try visitor.visitSingularStringField(value: self.source, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 3)
    }
    if self.gasLimit != 0 {
      try visitor.visitSingularInt64Field(value: self.gasLimit, fieldNumber: 4)
    }
    if self.storageLimit != 0 {
      try visitor.visitSingularInt64Field(value: self.storageLimit, fieldNumber: 5)
    }
    if self.kind != .endorsement {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 7)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.operationData {
    case .revealOperationData?: try {
      guard case .revealOperationData(let v)? = self.operationData else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .transactionOperationData?: try {
      guard case .transactionOperationData(let v)? = self.operationData else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .delegationOperationData?: try {
      guard case .delegationOperationData(let v)? = self.operationData else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_Operation, rhs: TW_Tezos_Proto_Operation) -> Bool {
    if lhs.counter != rhs.counter {return false}
    if lhs.source != rhs.source {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.gasLimit != rhs.gasLimit {return false}
    if lhs.storageLimit != rhs.storageLimit {return false}
    if lhs.kind != rhs.kind {return false}
    if lhs.operationData != rhs.operationData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_Operation.OperationKind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ENDORSEMENT"),
    107: .same(proto: "REVEAL"),
    108: .same(proto: "TRANSACTION"),
    110: .same(proto: "DELEGATION"),
  ]
}

extension TW_Tezos_Proto_TransactionOperationData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionOperationData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "destination"),
    2: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.destination) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.destination.isEmpty {
      try visitor.visitSingularStringField(value: self.destination, fieldNumber: 1)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_TransactionOperationData, rhs: TW_Tezos_Proto_TransactionOperationData) -> Bool {
    if lhs.destination != rhs.destination {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_RevealOperationData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RevealOperationData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "public_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.publicKey) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_RevealOperationData, rhs: TW_Tezos_Proto_RevealOperationData) -> Bool {
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Tezos_Proto_DelegationOperationData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DelegationOperationData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "delegate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.delegate) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.delegate.isEmpty {
      try visitor.visitSingularStringField(value: self.delegate, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Tezos_Proto_DelegationOperationData, rhs: TW_Tezos_Proto_DelegationOperationData) -> Bool {
    if lhs.delegate != rhs.delegate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
