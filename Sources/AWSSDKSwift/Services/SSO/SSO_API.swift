// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS SSO service.

AWS Single Sign-On Portal is a web service that makes it easy for you to assign user access to AWS SSO resources such as the user portal. Users can get AWS account applications and roles assigned to them and get federated into the application. For general information about AWS SSO, see What is AWS Single Sign-On? in the AWS SSO User Guide. This API reference guide describes the AWS SSO Portal operations that you can call programatically and includes detailed information on data types and errors.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services. 
*/
public struct SSO {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SSO client
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
            service: "portal.sso",
            signingName: "awsssoportal",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-06-10",
            endpoint: endpoint,
            serviceEndpoints: ["ap-southeast-1": "portal.sso.ap-southeast-1.amazonaws.com", "ap-southeast-2": "portal.sso.ap-southeast-2.amazonaws.com", "ca-central-1": "portal.sso.ca-central-1.amazonaws.com", "eu-central-1": "portal.sso.eu-central-1.amazonaws.com", "eu-west-1": "portal.sso.eu-west-1.amazonaws.com", "eu-west-2": "portal.sso.eu-west-2.amazonaws.com", "us-east-1": "portal.sso.us-east-1.amazonaws.com", "us-east-2": "portal.sso.us-east-2.amazonaws.com", "us-west-2": "portal.sso.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [SSOErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Returns the STS short-term credentials for a given role name that is assigned to the user.
    public func getRoleCredentials(_ input: GetRoleCredentialsRequest) -> EventLoopFuture<GetRoleCredentialsResponse> {
        return client.send(operation: "GetRoleCredentials", path: "/federation/credentials", httpMethod: "GET", input: input)
    }

    ///  Lists all roles that are assigned to the user for a given AWS account.
    public func listAccountRoles(_ input: ListAccountRolesRequest) -> EventLoopFuture<ListAccountRolesResponse> {
        return client.send(operation: "ListAccountRoles", path: "/assignment/roles", httpMethod: "GET", input: input)
    }

    ///  Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.
    public func listAccounts(_ input: ListAccountsRequest) -> EventLoopFuture<ListAccountsResponse> {
        return client.send(operation: "ListAccounts", path: "/assignment/accounts", httpMethod: "GET", input: input)
    }

    ///  Removes the client- and server-side session that is associated with the user.
    @discardableResult public func logout(_ input: LogoutRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "Logout", path: "/logout", httpMethod: "POST", input: input)
    }
}
