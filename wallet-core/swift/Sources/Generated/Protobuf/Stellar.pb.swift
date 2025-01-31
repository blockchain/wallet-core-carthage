// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Stellar.proto
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

public struct TW_Stellar_Proto_Asset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional in case of non-native asset; the asset issuer address
  public var issuer: String = String()

  /// Optional in case of non-native asset; the asset alphanum4 code.
  public var alphanum4: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_OperationCreateAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var destination: String = String()

  /// Amount (*10^7)
  public var amount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_OperationPayment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var destination: String = String()

  /// Optional, can be left empty for native asset
  public var asset: TW_Stellar_Proto_Asset {
    get {return _asset ?? TW_Stellar_Proto_Asset()}
    set {_asset = newValue}
  }
  /// Returns true if `asset` has been explicitly set.
  public var hasAsset: Bool {return self._asset != nil}
  /// Clears the value of `asset`. Subsequent reads from it will return its default value.
  public mutating func clearAsset() {self._asset = nil}

  /// Amount (*10^7)
  public var amount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _asset: TW_Stellar_Proto_Asset? = nil
}

public struct TW_Stellar_Proto_OperationChangeTrust {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var asset: TW_Stellar_Proto_Asset {
    get {return _asset ?? TW_Stellar_Proto_Asset()}
    set {_asset = newValue}
  }
  /// Returns true if `asset` has been explicitly set.
  public var hasAsset: Bool {return self._asset != nil}
  /// Clears the value of `asset`. Subsequent reads from it will return its default value.
  public mutating func clearAsset() {self._asset = nil}

  /// Validity (time bound to), unix time.  Set to (now() + 2 * 365 * 86400) for 2 years; set to 0 for missing.
  public var validBefore: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _asset: TW_Stellar_Proto_Asset? = nil
}

public struct TW_Stellar_Proto_MemoVoid {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoText {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var text: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoId {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Stellar_Proto_MemoHash {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hash: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Stellar_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var fee: Int32 = 0

  public var sequence: Int64 = 0

  public var account: String = String()

  /// Private key.
  public var privateKey: Data = Data()

  public var passphrase: String = String()

  public var operationOneof: TW_Stellar_Proto_SigningInput.OneOf_OperationOneof? = nil

  public var opCreateAccount: TW_Stellar_Proto_OperationCreateAccount {
    get {
      if case .opCreateAccount(let v)? = operationOneof {return v}
      return TW_Stellar_Proto_OperationCreateAccount()
    }
    set {operationOneof = .opCreateAccount(newValue)}
  }

  public var opPayment: TW_Stellar_Proto_OperationPayment {
    get {
      if case .opPayment(let v)? = operationOneof {return v}
      return TW_Stellar_Proto_OperationPayment()
    }
    set {operationOneof = .opPayment(newValue)}
  }

  public var opChangeTrust: TW_Stellar_Proto_OperationChangeTrust {
    get {
      if case .opChangeTrust(let v)? = operationOneof {return v}
      return TW_Stellar_Proto_OperationChangeTrust()
    }
    set {operationOneof = .opChangeTrust(newValue)}
  }

  public var memoTypeOneof: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof? = nil

  public var memoVoid: TW_Stellar_Proto_MemoVoid {
    get {
      if case .memoVoid(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoVoid()
    }
    set {memoTypeOneof = .memoVoid(newValue)}
  }

  public var memoText: TW_Stellar_Proto_MemoText {
    get {
      if case .memoText(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoText()
    }
    set {memoTypeOneof = .memoText(newValue)}
  }

  public var memoID: TW_Stellar_Proto_MemoId {
    get {
      if case .memoID(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoId()
    }
    set {memoTypeOneof = .memoID(newValue)}
  }

  public var memoHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoHash(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {memoTypeOneof = .memoHash(newValue)}
  }

  public var memoReturnHash: TW_Stellar_Proto_MemoHash {
    get {
      if case .memoReturnHash(let v)? = memoTypeOneof {return v}
      return TW_Stellar_Proto_MemoHash()
    }
    set {memoTypeOneof = .memoReturnHash(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_OperationOneof: Equatable {
    case opCreateAccount(TW_Stellar_Proto_OperationCreateAccount)
    case opPayment(TW_Stellar_Proto_OperationPayment)
    case opChangeTrust(TW_Stellar_Proto_OperationChangeTrust)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Stellar_Proto_SigningInput.OneOf_OperationOneof, rhs: TW_Stellar_Proto_SigningInput.OneOf_OperationOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.opCreateAccount, .opCreateAccount): return {
        guard case .opCreateAccount(let l) = lhs, case .opCreateAccount(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.opPayment, .opPayment): return {
        guard case .opPayment(let l) = lhs, case .opPayment(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.opChangeTrust, .opChangeTrust): return {
        guard case .opChangeTrust(let l) = lhs, case .opChangeTrust(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum OneOf_MemoTypeOneof: Equatable {
    case memoVoid(TW_Stellar_Proto_MemoVoid)
    case memoText(TW_Stellar_Proto_MemoText)
    case memoID(TW_Stellar_Proto_MemoId)
    case memoHash(TW_Stellar_Proto_MemoHash)
    case memoReturnHash(TW_Stellar_Proto_MemoHash)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof, rhs: TW_Stellar_Proto_SigningInput.OneOf_MemoTypeOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.memoVoid, .memoVoid): return {
        guard case .memoVoid(let l) = lhs, case .memoVoid(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.memoText, .memoText): return {
        guard case .memoText(let l) = lhs, case .memoText(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.memoID, .memoID): return {
        guard case .memoID(let l) = lhs, case .memoID(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.memoHash, .memoHash): return {
        guard case .memoHash(let l) = lhs, case .memoHash(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.memoReturnHash, .memoReturnHash): return {
        guard case .memoReturnHash(let l) = lhs, case .memoReturnHash(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Transaction signing output.
public struct TW_Stellar_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Signature.
  public var signature: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Stellar.Proto"

extension TW_Stellar_Proto_Asset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Asset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "issuer"),
    2: .same(proto: "alphanum4"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.issuer) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.alphanum4) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.issuer.isEmpty {
      try visitor.visitSingularStringField(value: self.issuer, fieldNumber: 1)
    }
    if !self.alphanum4.isEmpty {
      try visitor.visitSingularStringField(value: self.alphanum4, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_Asset, rhs: TW_Stellar_Proto_Asset) -> Bool {
    if lhs.issuer != rhs.issuer {return false}
    if lhs.alphanum4 != rhs.alphanum4 {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_OperationCreateAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationCreateAccount"
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

  public static func ==(lhs: TW_Stellar_Proto_OperationCreateAccount, rhs: TW_Stellar_Proto_OperationCreateAccount) -> Bool {
    if lhs.destination != rhs.destination {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_OperationPayment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationPayment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "destination"),
    2: .same(proto: "asset"),
    3: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.destination) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._asset) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.destination.isEmpty {
      try visitor.visitSingularStringField(value: self.destination, fieldNumber: 1)
    }
    if let v = self._asset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_OperationPayment, rhs: TW_Stellar_Proto_OperationPayment) -> Bool {
    if lhs.destination != rhs.destination {return false}
    if lhs._asset != rhs._asset {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_OperationChangeTrust: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationChangeTrust"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "asset"),
    2: .standard(proto: "valid_before"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._asset) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.validBefore) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._asset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.validBefore != 0 {
      try visitor.visitSingularInt64Field(value: self.validBefore, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_OperationChangeTrust, rhs: TW_Stellar_Proto_OperationChangeTrust) -> Bool {
    if lhs._asset != rhs._asset {return false}
    if lhs.validBefore != rhs.validBefore {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoVoid: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoVoid"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoVoid, rhs: TW_Stellar_Proto_MemoVoid) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoText: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoText"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "text"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.text) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoText, rhs: TW_Stellar_Proto_MemoText) -> Bool {
    if lhs.text != rhs.text {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoId: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoId"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoId, rhs: TW_Stellar_Proto_MemoId) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_MemoHash: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoHash"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.hash) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.hash.isEmpty {
      try visitor.visitSingularBytesField(value: self.hash, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_MemoHash, rhs: TW_Stellar_Proto_MemoHash) -> Bool {
    if lhs.hash != rhs.hash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fee"),
    2: .same(proto: "sequence"),
    3: .same(proto: "account"),
    4: .standard(proto: "private_key"),
    5: .same(proto: "passphrase"),
    6: .standard(proto: "op_create_account"),
    7: .standard(proto: "op_payment"),
    8: .standard(proto: "op_change_trust"),
    9: .standard(proto: "memo_void"),
    10: .standard(proto: "memo_text"),
    11: .standard(proto: "memo_id"),
    12: .standard(proto: "memo_hash"),
    13: .standard(proto: "memo_return_hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.fee) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.sequence) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.account) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.passphrase) }()
      case 6: try {
        var v: TW_Stellar_Proto_OperationCreateAccount?
        if let current = self.operationOneof {
          try decoder.handleConflictingOneOf()
          if case .opCreateAccount(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationOneof = .opCreateAccount(v)}
      }()
      case 7: try {
        var v: TW_Stellar_Proto_OperationPayment?
        if let current = self.operationOneof {
          try decoder.handleConflictingOneOf()
          if case .opPayment(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationOneof = .opPayment(v)}
      }()
      case 8: try {
        var v: TW_Stellar_Proto_OperationChangeTrust?
        if let current = self.operationOneof {
          try decoder.handleConflictingOneOf()
          if case .opChangeTrust(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.operationOneof = .opChangeTrust(v)}
      }()
      case 9: try {
        var v: TW_Stellar_Proto_MemoVoid?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoVoid(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoVoid(v)}
      }()
      case 10: try {
        var v: TW_Stellar_Proto_MemoText?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoText(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoText(v)}
      }()
      case 11: try {
        var v: TW_Stellar_Proto_MemoId?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoID(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoID(v)}
      }()
      case 12: try {
        var v: TW_Stellar_Proto_MemoHash?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoHash(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoHash(v)}
      }()
      case 13: try {
        var v: TW_Stellar_Proto_MemoHash?
        if let current = self.memoTypeOneof {
          try decoder.handleConflictingOneOf()
          if case .memoReturnHash(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.memoTypeOneof = .memoReturnHash(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.fee != 0 {
      try visitor.visitSingularInt32Field(value: self.fee, fieldNumber: 1)
    }
    if self.sequence != 0 {
      try visitor.visitSingularInt64Field(value: self.sequence, fieldNumber: 2)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 3)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 4)
    }
    if !self.passphrase.isEmpty {
      try visitor.visitSingularStringField(value: self.passphrase, fieldNumber: 5)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.operationOneof {
    case .opCreateAccount?: try {
      guard case .opCreateAccount(let v)? = self.operationOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case .opPayment?: try {
      guard case .opPayment(let v)? = self.operationOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }()
    case .opChangeTrust?: try {
      guard case .opChangeTrust(let v)? = self.operationOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case nil: break
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.memoTypeOneof {
    case .memoVoid?: try {
      guard case .memoVoid(let v)? = self.memoTypeOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .memoText?: try {
      guard case .memoText(let v)? = self.memoTypeOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }()
    case .memoID?: try {
      guard case .memoID(let v)? = self.memoTypeOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }()
    case .memoHash?: try {
      guard case .memoHash(let v)? = self.memoTypeOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
    }()
    case .memoReturnHash?: try {
      guard case .memoReturnHash(let v)? = self.memoTypeOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningInput, rhs: TW_Stellar_Proto_SigningInput) -> Bool {
    if lhs.fee != rhs.fee {return false}
    if lhs.sequence != rhs.sequence {return false}
    if lhs.account != rhs.account {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.passphrase != rhs.passphrase {return false}
    if lhs.operationOneof != rhs.operationOneof {return false}
    if lhs.memoTypeOneof != rhs.memoTypeOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Stellar_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.signature) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Stellar_Proto_SigningOutput, rhs: TW_Stellar_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
