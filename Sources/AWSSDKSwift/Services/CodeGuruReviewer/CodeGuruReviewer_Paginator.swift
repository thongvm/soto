// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CodeGuruReviewer {

    ///  Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
    public func listRepositoryAssociationsPaginator(_ input: ListRepositoryAssociationsRequest) -> EventLoopFuture<[RepositoryAssociationSummary]> {
        return client.paginate(input: input, command: listRepositoryAssociations, resultKey: \.repositoryAssociationSummaries, tokenKey: \.nextToken)
    }
    
}

extension CodeGuruReviewer.ListRepositoryAssociationsRequest: AWSPaginateStringToken {
    public init(_ original: CodeGuruReviewer.ListRepositoryAssociationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            names: original.names, 
            nextToken: token, 
            owners: original.owners, 
            providerTypes: original.providerTypes, 
            states: original.states
        )
    }
}


