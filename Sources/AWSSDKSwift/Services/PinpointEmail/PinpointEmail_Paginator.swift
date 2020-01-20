// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension PinpointEmail {

    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    public func getDedicatedIpsPaginator(_ input: GetDedicatedIpsRequest) -> EventLoopFuture<[DedicatedIp]> {
        return client.paginate(input: input, command: getDedicatedIps, resultKey: \.dedicatedIps, tokenKey: \.nextToken)
    }
    
    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSetsPaginator(_ input: ListConfigurationSetsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listConfigurationSets, resultKey: \.configurationSets, tokenKey: \.nextToken)
    }
    
    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    public func listDedicatedIpPoolsPaginator(_ input: ListDedicatedIpPoolsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDedicatedIpPools, resultKey: \.dedicatedIpPools, tokenKey: \.nextToken)
    }
    
    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReportsPaginator(_ input: ListDeliverabilityTestReportsRequest) -> EventLoopFuture<[DeliverabilityTestReport]> {
        return client.paginate(input: input, command: listDeliverabilityTestReports, resultKey: \.deliverabilityTestReports, tokenKey: \.nextToken)
    }
    
    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    public func listDomainDeliverabilityCampaignsPaginator(_ input: ListDomainDeliverabilityCampaignsRequest) -> EventLoopFuture<[DomainDeliverabilityCampaign]> {
        return client.paginate(input: input, command: listDomainDeliverabilityCampaigns, resultKey: \.domainDeliverabilityCampaigns, tokenKey: \.nextToken)
    }
    
    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    public func listEmailIdentitiesPaginator(_ input: ListEmailIdentitiesRequest) -> EventLoopFuture<[IdentityInfo]> {
        return client.paginate(input: input, command: listEmailIdentities, resultKey: \.emailIdentities, tokenKey: \.nextToken)
    }
    
}

extension PinpointEmail.GetDedicatedIpsRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.GetDedicatedIpsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize, 
            poolName: original.poolName
        )
    }
}

extension PinpointEmail.ListConfigurationSetsRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.ListConfigurationSetsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension PinpointEmail.ListDedicatedIpPoolsRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.ListDedicatedIpPoolsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension PinpointEmail.ListDeliverabilityTestReportsRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.ListDeliverabilityTestReportsRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}

extension PinpointEmail.ListDomainDeliverabilityCampaignsRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.ListDomainDeliverabilityCampaignsRequest, token: String) {
        self.init(
            endDate: original.endDate, 
            nextToken: token, 
            pageSize: original.pageSize, 
            startDate: original.startDate, 
            subscribedDomain: original.subscribedDomain
        )
    }
}

extension PinpointEmail.ListEmailIdentitiesRequest: AWSPaginateStringToken {
    public init(_ original: PinpointEmail.ListEmailIdentitiesRequest, token: String) {
        self.init(
            nextToken: token, 
            pageSize: original.pageSize
        )
    }
}


