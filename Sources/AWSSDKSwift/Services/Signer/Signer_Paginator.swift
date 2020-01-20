// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Signer {

    ///  Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 
    public func listSigningJobsPaginator(_ input: ListSigningJobsRequest) -> EventLoopFuture<[SigningJob]> {
        return client.paginate(input: input, command: listSigningJobs, resultKey: \.jobs, tokenKey: \.nextToken)
    }
    
    ///  Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningPlatformsPaginator(_ input: ListSigningPlatformsRequest) -> EventLoopFuture<[SigningPlatform]> {
        return client.paginate(input: input, command: listSigningPlatforms, resultKey: \.platforms, tokenKey: \.nextToken)
    }
    
    ///  Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningProfilesPaginator(_ input: ListSigningProfilesRequest) -> EventLoopFuture<[SigningProfile]> {
        return client.paginate(input: input, command: listSigningProfiles, resultKey: \.profiles, tokenKey: \.nextToken)
    }
    
}

extension Signer.ListSigningJobsRequest: AWSPaginateStringToken {
    public init(_ original: Signer.ListSigningJobsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            platformId: original.platformId, 
            requestedBy: original.requestedBy, 
            status: original.status
        )
    }
}

extension Signer.ListSigningPlatformsRequest: AWSPaginateStringToken {
    public init(_ original: Signer.ListSigningPlatformsRequest, token: String) {
        self.init(
            category: original.category, 
            maxResults: original.maxResults, 
            nextToken: token, 
            partner: original.partner, 
            target: original.target
        )
    }
}

extension Signer.ListSigningProfilesRequest: AWSPaginateStringToken {
    public init(_ original: Signer.ListSigningProfilesRequest, token: String) {
        self.init(
            includeCanceled: original.includeCanceled, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


