// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ElasticsearchService {

    ///  Lists available reserved Elasticsearch instance offerings.
    public func describeReservedElasticsearchInstanceOfferingsPaginator(_ input: DescribeReservedElasticsearchInstanceOfferingsRequest) -> EventLoopFuture<[ReservedElasticsearchInstanceOffering]> {
        return client.paginate(input: input, command: describeReservedElasticsearchInstanceOfferings, resultKey: \.reservedElasticsearchInstanceOfferings, tokenKey: \.nextToken)
    }
    
    ///  Returns information about reserved Elasticsearch instances for this account.
    public func describeReservedElasticsearchInstancesPaginator(_ input: DescribeReservedElasticsearchInstancesRequest) -> EventLoopFuture<[ReservedElasticsearchInstance]> {
        return client.paginate(input: input, command: describeReservedElasticsearchInstances, resultKey: \.reservedElasticsearchInstances, tokenKey: \.nextToken)
    }
    
    ///  Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    public func getUpgradeHistoryPaginator(_ input: GetUpgradeHistoryRequest) -> EventLoopFuture<[UpgradeHistory]> {
        return client.paginate(input: input, command: getUpgradeHistory, resultKey: \.upgradeHistories, tokenKey: \.nextToken)
    }
    
    ///  List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    public func listElasticsearchInstanceTypesPaginator(_ input: ListElasticsearchInstanceTypesRequest) -> EventLoopFuture<[ESPartitionInstanceType]> {
        return client.paginate(input: input, command: listElasticsearchInstanceTypes, resultKey: \.elasticsearchInstanceTypes, tokenKey: \.nextToken)
    }
    
    ///  List all supported Elasticsearch versions
    public func listElasticsearchVersionsPaginator(_ input: ListElasticsearchVersionsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listElasticsearchVersions, resultKey: \.elasticsearchVersions, tokenKey: \.nextToken)
    }
    
}

extension ElasticsearchService.DescribeReservedElasticsearchInstanceOfferingsRequest: AWSPaginateStringToken {
    public init(_ original: ElasticsearchService.DescribeReservedElasticsearchInstanceOfferingsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            reservedElasticsearchInstanceOfferingId: original.reservedElasticsearchInstanceOfferingId
        )
    }
}

extension ElasticsearchService.DescribeReservedElasticsearchInstancesRequest: AWSPaginateStringToken {
    public init(_ original: ElasticsearchService.DescribeReservedElasticsearchInstancesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            reservedElasticsearchInstanceId: original.reservedElasticsearchInstanceId
        )
    }
}

extension ElasticsearchService.GetUpgradeHistoryRequest: AWSPaginateStringToken {
    public init(_ original: ElasticsearchService.GetUpgradeHistoryRequest, token: String) {
        self.init(
            domainName: original.domainName, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ElasticsearchService.ListElasticsearchInstanceTypesRequest: AWSPaginateStringToken {
    public init(_ original: ElasticsearchService.ListElasticsearchInstanceTypesRequest, token: String) {
        self.init(
            domainName: original.domainName, 
            elasticsearchVersion: original.elasticsearchVersion, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ElasticsearchService.ListElasticsearchVersionsRequest: AWSPaginateStringToken {
    public init(_ original: ElasticsearchService.ListElasticsearchVersionsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


