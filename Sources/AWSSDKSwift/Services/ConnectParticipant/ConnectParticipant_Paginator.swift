// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ConnectParticipant {

    ///  Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func getTranscriptPaginator(_ input: GetTranscriptRequest) -> EventLoopFuture<[Item]> {
        return client.paginate(input: input, command: getTranscript, resultKey: \.transcript, tokenKey: \.nextToken)
    }
    
}

extension ConnectParticipant.GetTranscriptRequest: AWSPaginateStringToken {
    public init(_ original: ConnectParticipant.GetTranscriptRequest, token: String) {
        self.init(
            connectionToken: original.connectionToken, 
            contactId: original.contactId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            scanDirection: original.scanDirection, 
            sortOrder: original.sortOrder, 
            startPosition: original.startPosition
        )
    }
}


