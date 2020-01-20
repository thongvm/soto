// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension NetworkManager {

    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworksPaginator(_ input: DescribeGlobalNetworksRequest) -> EventLoopFuture<[GlobalNetwork]> {
        return client.paginate(input: input, command: describeGlobalNetworks, resultKey: \.globalNetworks, tokenKey: \.nextToken)
    }
    
    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociationsPaginator(_ input: GetCustomerGatewayAssociationsRequest) -> EventLoopFuture<[CustomerGatewayAssociation]> {
        return client.paginate(input: input, command: getCustomerGatewayAssociations, resultKey: \.customerGatewayAssociations, tokenKey: \.nextToken)
    }
    
    ///  Gets information about one or more of your devices in a global network.
    public func getDevicesPaginator(_ input: GetDevicesRequest) -> EventLoopFuture<[Device]> {
        return client.paginate(input: input, command: getDevices, resultKey: \.devices, tokenKey: \.nextToken)
    }
    
    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociationsPaginator(_ input: GetLinkAssociationsRequest) -> EventLoopFuture<[LinkAssociation]> {
        return client.paginate(input: input, command: getLinkAssociations, resultKey: \.linkAssociations, tokenKey: \.nextToken)
    }
    
    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinksPaginator(_ input: GetLinksRequest) -> EventLoopFuture<[Link]> {
        return client.paginate(input: input, command: getLinks, resultKey: \.links, tokenKey: \.nextToken)
    }
    
    ///  Gets information about one or more of your sites in a global network.
    public func getSitesPaginator(_ input: GetSitesRequest) -> EventLoopFuture<[Site]> {
        return client.paginate(input: input, command: getSites, resultKey: \.sites, tokenKey: \.nextToken)
    }
    
    ///  Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrationsPaginator(_ input: GetTransitGatewayRegistrationsRequest) -> EventLoopFuture<[TransitGatewayRegistration]> {
        return client.paginate(input: input, command: getTransitGatewayRegistrations, resultKey: \.transitGatewayRegistrations, tokenKey: \.nextToken)
    }
    
}

extension NetworkManager.DescribeGlobalNetworksRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.DescribeGlobalNetworksRequest, token: String) {
        self.init(
            globalNetworkIds: original.globalNetworkIds, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension NetworkManager.GetCustomerGatewayAssociationsRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetCustomerGatewayAssociationsRequest, token: String) {
        self.init(
            customerGatewayArns: original.customerGatewayArns, 
            globalNetworkId: original.globalNetworkId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension NetworkManager.GetDevicesRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetDevicesRequest, token: String) {
        self.init(
            deviceIds: original.deviceIds, 
            globalNetworkId: original.globalNetworkId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            siteId: original.siteId
        )
    }
}

extension NetworkManager.GetLinkAssociationsRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetLinkAssociationsRequest, token: String) {
        self.init(
            deviceId: original.deviceId, 
            globalNetworkId: original.globalNetworkId, 
            linkId: original.linkId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension NetworkManager.GetLinksRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetLinksRequest, token: String) {
        self.init(
            globalNetworkId: original.globalNetworkId, 
            linkIds: original.linkIds, 
            maxResults: original.maxResults, 
            nextToken: token, 
            provider: original.provider, 
            siteId: original.siteId, 
            type: original.type
        )
    }
}

extension NetworkManager.GetSitesRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetSitesRequest, token: String) {
        self.init(
            globalNetworkId: original.globalNetworkId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            siteIds: original.siteIds
        )
    }
}

extension NetworkManager.GetTransitGatewayRegistrationsRequest: AWSPaginateStringToken {
    public init(_ original: NetworkManager.GetTransitGatewayRegistrationsRequest, token: String) {
        self.init(
            globalNetworkId: original.globalNetworkId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            transitGatewayArns: original.transitGatewayArns
        )
    }
}


