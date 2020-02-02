// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS SavingsPlans service.

Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the AWS Savings Plans User Guide.
*/
public struct SavingsPlans {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SavingsPlans client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "savingsplans",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2019-06-28",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "savingsplans.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [SavingsPlansErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a Savings Plan.
    public func createSavingsPlan(_ input: CreateSavingsPlanRequest) -> EventLoopFuture<CreateSavingsPlanResponse> {
        return client.send(operation: "CreateSavingsPlan", path: "/CreateSavingsPlan", httpMethod: "POST", input: input)
    }

    ///  Describes the specified Savings Plans rates.
    public func describeSavingsPlanRates(_ input: DescribeSavingsPlanRatesRequest) -> EventLoopFuture<DescribeSavingsPlanRatesResponse> {
        return client.send(operation: "DescribeSavingsPlanRates", path: "/DescribeSavingsPlanRates", httpMethod: "POST", input: input)
    }

    ///  Describes the specified Savings Plans.
    public func describeSavingsPlans(_ input: DescribeSavingsPlansRequest) -> EventLoopFuture<DescribeSavingsPlansResponse> {
        return client.send(operation: "DescribeSavingsPlans", path: "/DescribeSavingsPlans", httpMethod: "POST", input: input)
    }

    ///  Describes the specified Savings Plans offering rates.
    public func describeSavingsPlansOfferingRates(_ input: DescribeSavingsPlansOfferingRatesRequest) -> EventLoopFuture<DescribeSavingsPlansOfferingRatesResponse> {
        return client.send(operation: "DescribeSavingsPlansOfferingRates", path: "/DescribeSavingsPlansOfferingRates", httpMethod: "POST", input: input)
    }

    ///  Describes the specified Savings Plans offerings.
    public func describeSavingsPlansOfferings(_ input: DescribeSavingsPlansOfferingsRequest) -> EventLoopFuture<DescribeSavingsPlansOfferingsResponse> {
        return client.send(operation: "DescribeSavingsPlansOfferings", path: "/DescribeSavingsPlansOfferings", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/TagResource", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/UntagResource", httpMethod: "POST", input: input)
    }
}
