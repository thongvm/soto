// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension XRay {

    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTracesPaginator(_ input: BatchGetTracesRequest) -> EventLoopFuture<[Trace]> {
        return client.paginate(input: input, command: batchGetTraces, resultKey: \.traces, tokenKey: \.nextToken)
    }
    
    ///  Retrieves all active group details.
    public func getGroupsPaginator(_ input: GetGroupsRequest) -> EventLoopFuture<[GroupSummary]> {
        return client.paginate(input: input, command: getGroups, resultKey: \.groups, tokenKey: \.nextToken)
    }
    
    ///  Retrieves all sampling rules.
    public func getSamplingRulesPaginator(_ input: GetSamplingRulesRequest) -> EventLoopFuture<[SamplingRuleRecord]> {
        return client.paginate(input: input, command: getSamplingRules, resultKey: \.samplingRuleRecords, tokenKey: \.nextToken)
    }
    
    ///  Retrieves information about recent sampling results for all sampling rules.
    public func getSamplingStatisticSummariesPaginator(_ input: GetSamplingStatisticSummariesRequest) -> EventLoopFuture<[SamplingStatisticSummary]> {
        return client.paginate(input: input, command: getSamplingStatisticSummaries, resultKey: \.samplingStatisticSummaries, tokenKey: \.nextToken)
    }
    
    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
    public func getServiceGraphPaginator(_ input: GetServiceGraphRequest) -> EventLoopFuture<[Service]> {
        return client.paginate(input: input, command: getServiceGraph, resultKey: \.services, tokenKey: \.nextToken)
    }
    
    ///  Get an aggregation of service statistics defined by a specific time range.
    public func getTimeSeriesServiceStatisticsPaginator(_ input: GetTimeSeriesServiceStatisticsRequest) -> EventLoopFuture<[TimeSeriesServiceStatistics]> {
        return client.paginate(input: input, command: getTimeSeriesServiceStatistics, resultKey: \.timeSeriesServiceStatistics, tokenKey: \.nextToken)
    }
    
    ///  Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraphPaginator(_ input: GetTraceGraphRequest) -> EventLoopFuture<[Service]> {
        return client.paginate(input: input, command: getTraceGraph, resultKey: \.services, tokenKey: \.nextToken)
    }
    
    ///  Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.
    public func getTraceSummariesPaginator(_ input: GetTraceSummariesRequest) -> EventLoopFuture<[TraceSummary]> {
        return client.paginate(input: input, command: getTraceSummaries, resultKey: \.traceSummaries, tokenKey: \.nextToken)
    }
    
}

extension XRay.BatchGetTracesRequest: AWSPaginateStringToken {
    public init(_ original: XRay.BatchGetTracesRequest, token: String) {
        self.init(
            nextToken: token, 
            traceIds: original.traceIds
        )
    }
}

extension XRay.GetGroupsRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetGroupsRequest, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension XRay.GetSamplingRulesRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetSamplingRulesRequest, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension XRay.GetSamplingStatisticSummariesRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetSamplingStatisticSummariesRequest, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension XRay.GetServiceGraphRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetServiceGraphRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            groupARN: original.groupARN, 
            groupName: original.groupName, 
            nextToken: token, 
            startTime: original.startTime
        )
    }
}

extension XRay.GetTimeSeriesServiceStatisticsRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetTimeSeriesServiceStatisticsRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            entitySelectorExpression: original.entitySelectorExpression, 
            groupARN: original.groupARN, 
            groupName: original.groupName, 
            nextToken: token, 
            period: original.period, 
            startTime: original.startTime
        )
    }
}

extension XRay.GetTraceGraphRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetTraceGraphRequest, token: String) {
        self.init(
            nextToken: token, 
            traceIds: original.traceIds
        )
    }
}

extension XRay.GetTraceSummariesRequest: AWSPaginateStringToken {
    public init(_ original: XRay.GetTraceSummariesRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            filterExpression: original.filterExpression, 
            nextToken: token, 
            sampling: original.sampling, 
            samplingStrategy: original.samplingStrategy, 
            startTime: original.startTime, 
            timeRangeType: original.timeRangeType
        )
    }
}


