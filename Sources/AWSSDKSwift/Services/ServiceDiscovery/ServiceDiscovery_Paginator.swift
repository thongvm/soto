// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ServiceDiscovery {

    ///  Lists summary information about the instances that you registered by using a specified service.
    public func listInstancesPaginator(_ input: ListInstancesRequest) -> EventLoopFuture<[InstanceSummary]> {
        return client.paginate(input: input, command: listInstances, resultKey: \.instances, tokenKey: \.nextToken)
    }
    
    ///  Lists summary information about the namespaces that were created by the current AWS account.
    public func listNamespacesPaginator(_ input: ListNamespacesRequest) -> EventLoopFuture<[NamespaceSummary]> {
        return client.paginate(input: input, command: listNamespaces, resultKey: \.namespaces, tokenKey: \.nextToken)
    }
    
    ///  Lists operations that match the criteria that you specify.
    public func listOperationsPaginator(_ input: ListOperationsRequest) -> EventLoopFuture<[OperationSummary]> {
        return client.paginate(input: input, command: listOperations, resultKey: \.operations, tokenKey: \.nextToken)
    }
    
    ///  Lists summary information for all the services that are associated with one or more specified namespaces.
    public func listServicesPaginator(_ input: ListServicesRequest) -> EventLoopFuture<[ServiceSummary]> {
        return client.paginate(input: input, command: listServices, resultKey: \.services, tokenKey: \.nextToken)
    }
    
}

extension ServiceDiscovery.ListInstancesRequest: AWSPaginateStringToken {
    public init(_ original: ServiceDiscovery.ListInstancesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            serviceId: original.serviceId
        )
    }
}

extension ServiceDiscovery.ListNamespacesRequest: AWSPaginateStringToken {
    public init(_ original: ServiceDiscovery.ListNamespacesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ServiceDiscovery.ListOperationsRequest: AWSPaginateStringToken {
    public init(_ original: ServiceDiscovery.ListOperationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ServiceDiscovery.ListServicesRequest: AWSPaginateStringToken {
    public init(_ original: ServiceDiscovery.ListServicesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


