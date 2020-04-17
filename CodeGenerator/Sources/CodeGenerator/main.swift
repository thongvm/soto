//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Dispatch
import Foundation
import PathKit
import Stencil

extension String {
    /// Only writes to file if the string contents are different to the file contents. This is used to stop XCode rebuilding and reindexing files unnecessarily.
    /// If the file is written to XCode assumes it has changed even when it hasn't
    /// - Parameters:
    ///   - toFile: Filename
    ///   - atomically: make file write atomic
    ///   - encoding: string encoding
    func writeIfChanged(toFile: String) throws -> Bool {
        do {
            let original = try String(contentsOfFile: toFile)
            guard original != self else { return false }
        } catch {
            //print(error)
        }
        try write(toFile: toFile, atomically: true, encoding: .utf8)
        return true
    }
}

class CodeGenerator {
    let fsLoader: FileSystemLoader
    let environment: Environment

    init() {
        self.fsLoader = FileSystemLoader(paths: [Path("\(rootPath())/CodeGenerator/Templates/")])
        self.environment = Environment(loader: fsLoader)
    }

    /// Generate service files from AWSService
    /// - Parameter codeGenerator: service generated from JSON
    func generateFiles(with service: AWSService) throws {

        let basePath = "\(rootPath())/Sources/AWSSDKSwift/Services/\(service.api.serviceName)/"
        try makeDirectory(basePath)

        let apiContext = service.generateServiceContext()
        if try environment.renderTemplate(name: "api.stencil", context: apiContext).writeIfChanged(
            toFile: "\(basePath)/\(service.api.serviceName)_API.swift"
        ) {
            print("Wrote: \(service.api.serviceName)_API.swift")
        }

        let shapesContext = service.generateShapesContext()
        if try environment.renderTemplate(name: "shapes.stencil", context: shapesContext).writeIfChanged(
            toFile: "\(basePath)/\(service.api.serviceName)_Shapes.swift"
        ) {
            print("Wrote: \(service.api.serviceName)_Shapes.swift")
        }

        let errorContext = service.generateErrorContext()
        if errorContext["errors"] != nil {
            if try environment.renderTemplate(name: "error.stencil", context: errorContext).writeIfChanged(
                toFile: "\(basePath)/\(service.api.serviceName)_Error.swift"
            ) {
                print("Wrote: \(service.api.serviceName)_Error.swift")
            }
        }

        let paginatorContext = try service.generatePaginatorContext()
        if paginatorContext["paginators"] != nil {
            if try environment.renderTemplate(name: "paginator.stencil", context: paginatorContext).writeIfChanged(
                toFile: "\(basePath)/\(service.api.serviceName)_Paginator.swift"
            ) {
                print("Wrote: \(service.api.serviceName)_Paginator.swift")
            }
        }
        print("Succesfully Generated \(service.api.serviceName)")
    }

    func run() throws {
        // load JSON
        let endpoints = try loadEndpointJSON()
        let models = try loadModelJSON()
        let group = DispatchGroup()

        models.forEach { model in
            group.enter()

            DispatchQueue.global().async {
                defer { group.leave() }
                do {
                    let service = try AWSService(api: model.api, docs: model.docs, paginators: model.paginators, endpoints: endpoints)
                    try self.generateFiles(with: service)
                } catch {
                    print("\(error)")
                    exit(1)
                }
            }
        }

        group.wait()
    }
}

let startTime = Date()

try CodeGenerator().run()

print("Code Generation took \(Int(-startTime.timeIntervalSinceNow)) seconds")
print("Done.")
