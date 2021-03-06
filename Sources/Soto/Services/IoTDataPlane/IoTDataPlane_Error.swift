//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for IoTDataPlane
public enum IoTDataPlaneErrorType: AWSErrorType {
    case conflictException(message: String?)
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case methodNotAllowedException(message: String?)
    case requestEntityTooLargeException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case throttlingException(message: String?)
    case unauthorizedException(message: String?)
    case unsupportedDocumentEncodingException(message: String?)
}

extension IoTDataPlaneErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "MethodNotAllowedException":
            self = .methodNotAllowedException(message: message)
        case "RequestEntityTooLargeException":
            self = .requestEntityTooLargeException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "UnsupportedDocumentEncodingException":
            self = .unsupportedDocumentEncodingException(message: message)
        default:
            return nil
        }
    }
}

extension IoTDataPlaneErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .methodNotAllowedException(let message):
            return "MethodNotAllowedException: \(message ?? "")"
        case .requestEntityTooLargeException(let message):
            return "RequestEntityTooLargeException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        case .unsupportedDocumentEncodingException(let message):
            return "UnsupportedDocumentEncodingException: \(message ?? "")"
        }
    }
}
