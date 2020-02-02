// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS PinpointEmail service.

Amazon Pinpoint Email Service Welcome to the Amazon Pinpoint Email API Reference. This guide provides information about the Amazon Pinpoint Email API (version 1.0), including supported operations, data types, parameters, and schemas.  Amazon Pinpoint is an AWS service that you can use to engage with your customers across multiple messaging channels. You can use Amazon Pinpoint to send email, SMS text messages, voice messages, and push notifications. The Amazon Pinpoint Email API provides programmatic access to options that are unique to the email channel and supplement the options provided by the Amazon Pinpoint API. If you're new to Amazon Pinpoint, you might find it helpful to also review the Amazon Pinpoint Developer Guide. The Amazon Pinpoint Developer Guide provides tutorials, code samples, and procedures that demonstrate how to use Amazon Pinpoint features programmatically and how to integrate Amazon Pinpoint functionality into mobile apps and other types of applications. The guide also provides information about key topics such as Amazon Pinpoint integration with other AWS services and the limits that apply to using the service. The Amazon Pinpoint Email API is available in several AWS Regions and it provides an endpoint for each of these Regions. For a list of all the Regions and endpoints where the API is currently available, see AWS Service Endpoints in the Amazon Web Services General Reference. To learn more about AWS Regions, see Managing AWS Regions in the Amazon Web Services General Reference. In each Region, AWS maintains multiple Availability Zones. These Availability Zones are physically isolated from each other, but are united by private, low-latency, high-throughput, and highly redundant network connections. These Availability Zones enable us to provide very high levels of availability and redundancy, while also minimizing latency. To learn more about the number of Availability Zones that are available in each Region, see AWS Global Infrastructure.
*/
public struct PinpointEmail {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the PinpointEmail client
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
            service: "email",
            signingName: "ses",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-07-26",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PinpointEmailErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Create a configuration set. Configuration sets are groups of rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest) -> EventLoopFuture<CreateConfigurationSetResponse> {
        return client.send(operation: "CreateConfigurationSet", path: "/v1/email/configuration-sets", httpMethod: "POST", input: input)
    }

    ///  Create an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest) -> EventLoopFuture<CreateConfigurationSetEventDestinationResponse> {
        return client.send(operation: "CreateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "POST", input: input)
    }

    ///  Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.
    public func createDedicatedIpPool(_ input: CreateDedicatedIpPoolRequest) -> EventLoopFuture<CreateDedicatedIpPoolResponse> {
        return client.send(operation: "CreateDedicatedIpPool", path: "/v1/email/dedicated-ip-pools", httpMethod: "POST", input: input)
    }

    ///  Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon Pinpoint then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.
    public func createDeliverabilityTestReport(_ input: CreateDeliverabilityTestReportRequest) -> EventLoopFuture<CreateDeliverabilityTestReportResponse> {
        return client.send(operation: "CreateDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test", httpMethod: "POST", input: input)
    }

    ///  Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email address or domain that you use when you send email. Before you can use an identity to send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission to send email from the address. When you verify an email address, Amazon Pinpoint sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain. It usually takes around 72 hours to complete the domain verification process.
    public func createEmailIdentity(_ input: CreateEmailIdentityRequest) -> EventLoopFuture<CreateEmailIdentityResponse> {
        return client.send(operation: "CreateEmailIdentity", path: "/v1/email/identities", httpMethod: "POST", input: input)
    }

    ///  Delete an existing configuration set. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest) -> EventLoopFuture<DeleteConfigurationSetResponse> {
        return client.send(operation: "DeleteConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest) -> EventLoopFuture<DeleteConfigurationSetEventDestinationResponse> {
        return client.send(operation: "DeleteConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a dedicated IP pool.
    public func deleteDedicatedIpPool(_ input: DeleteDedicatedIpPoolRequest) -> EventLoopFuture<DeleteDedicatedIpPoolResponse> {
        return client.send(operation: "DeleteDedicatedIpPool", path: "/v1/email/dedicated-ip-pools/{PoolName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity can be either an email address or a domain name.
    public func deleteEmailIdentity(_ input: DeleteEmailIdentityRequest) -> EventLoopFuture<DeleteEmailIdentityResponse> {
        return client.send(operation: "DeleteEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: "DELETE", input: input)
    }

    ///  Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region.
    public func getAccount(_ input: GetAccountRequest) -> EventLoopFuture<GetAccountResponse> {
        return client.send(operation: "GetAccount", path: "/v1/email/account", httpMethod: "GET", input: input)
    }

    ///  Retrieve a list of the blacklists that your dedicated IP addresses appear on.
    public func getBlacklistReports(_ input: GetBlacklistReportsRequest) -> EventLoopFuture<GetBlacklistReportsResponse> {
        return client.send(operation: "GetBlacklistReports", path: "/v1/email/deliverability-dashboard/blacklist-report", httpMethod: "GET", input: input)
    }

    ///  Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func getConfigurationSet(_ input: GetConfigurationSetRequest) -> EventLoopFuture<GetConfigurationSetResponse> {
        return client.send(operation: "GetConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: "GET", input: input)
    }

    ///  Retrieve a list of event destinations that are associated with a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest) -> EventLoopFuture<GetConfigurationSetEventDestinationsResponse> {
        return client.send(operation: "GetConfigurationSetEventDestinations", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "GET", input: input)
    }

    ///  Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.
    public func getDedicatedIp(_ input: GetDedicatedIpRequest) -> EventLoopFuture<GetDedicatedIpResponse> {
        return client.send(operation: "GetDedicatedIp", path: "/v1/email/dedicated-ips/{IP}", httpMethod: "GET", input: input)
    }

    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    public func getDedicatedIps(_ input: GetDedicatedIpsRequest) -> EventLoopFuture<GetDedicatedIpsResponse> {
        return client.send(operation: "GetDedicatedIps", path: "/v1/email/dedicated-ips", httpMethod: "GET", input: input)
    }

    ///  Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func getDeliverabilityDashboardOptions(_ input: GetDeliverabilityDashboardOptionsRequest) -> EventLoopFuture<GetDeliverabilityDashboardOptionsResponse> {
        return client.send(operation: "GetDeliverabilityDashboardOptions", path: "/v1/email/deliverability-dashboard", httpMethod: "GET", input: input)
    }

    ///  Retrieve the results of a predictive inbox placement test.
    public func getDeliverabilityTestReport(_ input: GetDeliverabilityTestReportRequest) -> EventLoopFuture<GetDeliverabilityTestReportResponse> {
        return client.send(operation: "GetDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test-reports/{ReportId}", httpMethod: "GET", input: input)
    }

    ///  Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (PutDeliverabilityDashboardOption operation).
    public func getDomainDeliverabilityCampaign(_ input: GetDomainDeliverabilityCampaignRequest) -> EventLoopFuture<GetDomainDeliverabilityCampaignResponse> {
        return client.send(operation: "GetDomainDeliverabilityCampaign", path: "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", httpMethod: "GET", input: input)
    }

    ///  Retrieve inbox placement and engagement rates for the domains that you use to send email.
    public func getDomainStatisticsReport(_ input: GetDomainStatisticsReportRequest) -> EventLoopFuture<GetDomainStatisticsReportResponse> {
        return client.send(operation: "GetDomainStatisticsReport", path: "/v1/email/deliverability-dashboard/statistics-report/{Domain}", httpMethod: "GET", input: input)
    }

    ///  Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.
    public func getEmailIdentity(_ input: GetEmailIdentityRequest) -> EventLoopFuture<GetEmailIdentityResponse> {
        return client.send(operation: "GetEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: "GET", input: input)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest) -> EventLoopFuture<ListConfigurationSetsResponse> {
        return client.send(operation: "ListConfigurationSets", path: "/v1/email/configuration-sets", httpMethod: "GET", input: input)
    }

    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    public func listDedicatedIpPools(_ input: ListDedicatedIpPoolsRequest) -> EventLoopFuture<ListDedicatedIpPoolsResponse> {
        return client.send(operation: "ListDedicatedIpPools", path: "/v1/email/dedicated-ip-pools", httpMethod: "GET", input: input)
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReports(_ input: ListDeliverabilityTestReportsRequest) -> EventLoopFuture<ListDeliverabilityTestReportsResponse> {
        return client.send(operation: "ListDeliverabilityTestReports", path: "/v1/email/deliverability-dashboard/test-reports", httpMethod: "GET", input: input)
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    public func listDomainDeliverabilityCampaigns(_ input: ListDomainDeliverabilityCampaignsRequest) -> EventLoopFuture<ListDomainDeliverabilityCampaignsResponse> {
        return client.send(operation: "ListDomainDeliverabilityCampaigns", path: "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    public func listEmailIdentities(_ input: ListEmailIdentitiesRequest) -> EventLoopFuture<ListEmailIdentitiesResponse> {
        return client.send(operation: "ListEmailIdentities", path: "/v1/email/identities", httpMethod: "GET", input: input)
    }

    ///  Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/v1/email/tags", httpMethod: "GET", input: input)
    }

    ///  Enable or disable the automatic warm-up feature for dedicated IP addresses.
    public func putAccountDedicatedIpWarmupAttributes(_ input: PutAccountDedicatedIpWarmupAttributesRequest) -> EventLoopFuture<PutAccountDedicatedIpWarmupAttributesResponse> {
        return client.send(operation: "PutAccountDedicatedIpWarmupAttributes", path: "/v1/email/account/dedicated-ips/warmup", httpMethod: "PUT", input: input)
    }

    ///  Enable or disable the ability of your account to send email.
    public func putAccountSendingAttributes(_ input: PutAccountSendingAttributesRequest) -> EventLoopFuture<PutAccountSendingAttributesResponse> {
        return client.send(operation: "PutAccountSendingAttributes", path: "/v1/email/account/sending", httpMethod: "PUT", input: input)
    }

    ///  Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.
    public func putConfigurationSetDeliveryOptions(_ input: PutConfigurationSetDeliveryOptionsRequest) -> EventLoopFuture<PutConfigurationSetDeliveryOptionsResponse> {
        return client.send(operation: "PutConfigurationSetDeliveryOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", httpMethod: "PUT", input: input)
    }

    ///  Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.
    public func putConfigurationSetReputationOptions(_ input: PutConfigurationSetReputationOptionsRequest) -> EventLoopFuture<PutConfigurationSetReputationOptionsResponse> {
        return client.send(operation: "PutConfigurationSetReputationOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", httpMethod: "PUT", input: input)
    }

    ///  Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.
    public func putConfigurationSetSendingOptions(_ input: PutConfigurationSetSendingOptionsRequest) -> EventLoopFuture<PutConfigurationSetSendingOptionsResponse> {
        return client.send(operation: "PutConfigurationSetSendingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/sending", httpMethod: "PUT", input: input)
    }

    ///  Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint.
    public func putConfigurationSetTrackingOptions(_ input: PutConfigurationSetTrackingOptionsRequest) -> EventLoopFuture<PutConfigurationSetTrackingOptionsResponse> {
        return client.send(operation: "PutConfigurationSetTrackingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", httpMethod: "PUT", input: input)
    }

    ///  Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your Amazon Pinpoint account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 
    public func putDedicatedIpInPool(_ input: PutDedicatedIpInPoolRequest) -> EventLoopFuture<PutDedicatedIpInPoolResponse> {
        return client.send(operation: "PutDedicatedIpInPool", path: "/v1/email/dedicated-ips/{IP}/pool", httpMethod: "PUT", input: input)
    }

    public func putDedicatedIpWarmupAttributes(_ input: PutDedicatedIpWarmupAttributesRequest) -> EventLoopFuture<PutDedicatedIpWarmupAttributesResponse> {
        return client.send(operation: "PutDedicatedIpWarmupAttributes", path: "/v1/email/dedicated-ips/{IP}/warmup", httpMethod: "PUT", input: input)
    }

    ///  Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func putDeliverabilityDashboardOption(_ input: PutDeliverabilityDashboardOptionRequest) -> EventLoopFuture<PutDeliverabilityDashboardOptionResponse> {
        return client.send(operation: "PutDeliverabilityDashboardOption", path: "/v1/email/deliverability-dashboard", httpMethod: "PUT", input: input)
    }

    ///  Used to enable or disable DKIM authentication for an email identity.
    public func putEmailIdentityDkimAttributes(_ input: PutEmailIdentityDkimAttributesRequest) -> EventLoopFuture<PutEmailIdentityDkimAttributesResponse> {
        return client.send(operation: "PutEmailIdentityDkimAttributes", path: "/v1/email/identities/{EmailIdentity}/dkim", httpMethod: "PUT", input: input)
    }

    ///  Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled).
    public func putEmailIdentityFeedbackAttributes(_ input: PutEmailIdentityFeedbackAttributesRequest) -> EventLoopFuture<PutEmailIdentityFeedbackAttributesResponse> {
        return client.send(operation: "PutEmailIdentityFeedbackAttributes", path: "/v1/email/identities/{EmailIdentity}/feedback", httpMethod: "PUT", input: input)
    }

    ///  Used to enable or disable the custom Mail-From domain configuration for an email identity.
    public func putEmailIdentityMailFromAttributes(_ input: PutEmailIdentityMailFromAttributesRequest) -> EventLoopFuture<PutEmailIdentityMailFromAttributesResponse> {
        return client.send(operation: "PutEmailIdentityMailFromAttributes", path: "/v1/email/identities/{EmailIdentity}/mail-from", httpMethod: "PUT", input: input)
    }

    ///  Sends an email message. You can use the Amazon Pinpoint Email API to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon Pinpoint assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  
    public func sendEmail(_ input: SendEmailRequest) -> EventLoopFuture<SendEmailResponse> {
        return client.send(operation: "SendEmail", path: "/v1/email/outbound-emails", httpMethod: "POST", input: input)
    }

    ///  Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/v1/email/tags", httpMethod: "POST", input: input)
    }

    ///  Remove one or more tags (keys and values) from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/v1/email/tags", httpMethod: "DELETE", input: input)
    }

    ///  Update the configuration of an event destination for a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest) -> EventLoopFuture<UpdateConfigurationSetEventDestinationResponse> {
        return client.send(operation: "UpdateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "PUT", input: input)
    }
}
