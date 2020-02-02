// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS DAX service.

DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.
*/
public struct DAX {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the DAX client
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
            amzTarget: "AmazonDAXV3",
            service: "dax",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DAXErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.
    public func createCluster(_ input: CreateClusterRequest) -> EventLoopFuture<CreateClusterResponse> {
        return client.send(operation: "CreateCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
    public func createParameterGroup(_ input: CreateParameterGroupRequest) -> EventLoopFuture<CreateParameterGroupResponse> {
        return client.send(operation: "CreateParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new subnet group.
    public func createSubnetGroup(_ input: CreateSubnetGroupRequest) -> EventLoopFuture<CreateSubnetGroupResponse> {
        return client.send(operation: "CreateSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more nodes from a DAX cluster.  You cannot use DecreaseReplicationFactor to remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead. 
    public func decreaseReplicationFactor(_ input: DecreaseReplicationFactorRequest) -> EventLoopFuture<DecreaseReplicationFactorResponse> {
        return client.send(operation: "DecreaseReplicationFactor", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.
    public func deleteCluster(_ input: DeleteClusterRequest) -> EventLoopFuture<DeleteClusterResponse> {
        return client.send(operation: "DeleteCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.
    public func deleteParameterGroup(_ input: DeleteParameterGroupRequest) -> EventLoopFuture<DeleteParameterGroupResponse> {
        return client.send(operation: "DeleteParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a subnet group.  You cannot delete a subnet group if it is associated with any DAX clusters. 
    public func deleteSubnetGroup(_ input: DeleteSubnetGroupRequest) -> EventLoopFuture<DeleteSubnetGroupResponse> {
        return client.send(operation: "DeleteSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied. If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster level information will be displayed. If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is available, the cluster is ready for use. If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
    public func describeClusters(_ input: DescribeClustersRequest) -> EventLoopFuture<DescribeClustersResponse> {
        return client.send(operation: "DescribeClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default system parameter information for the DAX caching software.
    public func describeDefaultParameters(_ input: DescribeDefaultParametersRequest) -> EventLoopFuture<DescribeDefaultParametersResponse> {
        return client.send(operation: "DescribeDefaultParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter. By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    public func describeEvents(_ input: DescribeEventsRequest) -> EventLoopFuture<DescribeEventsResponse> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
    public func describeParameterGroups(_ input: DescribeParameterGroupsRequest) -> EventLoopFuture<DescribeParameterGroupsResponse> {
        return client.send(operation: "DescribeParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular parameter group.
    public func describeParameters(_ input: DescribeParametersRequest) -> EventLoopFuture<DescribeParametersResponse> {
        return client.send(operation: "DescribeParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
    public func describeSubnetGroups(_ input: DescribeSubnetGroupsRequest) -> EventLoopFuture<DescribeSubnetGroupsResponse> {
        return client.send(operation: "DescribeSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more nodes to a DAX cluster.
    public func increaseReplicationFactor(_ input: IncreaseReplicationFactorRequest) -> EventLoopFuture<IncreaseReplicationFactorResponse> {
        return client.send(operation: "IncreaseReplicationFactor", path: "/", httpMethod: "POST", input: input)
    }

    ///  List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second, per account.
    public func listTags(_ input: ListTagsRequest) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.   RebootNode restarts the DAX engine process and does not remove the contents of the cache.  
    public func rebootNode(_ input: RebootNodeRequest) -> EventLoopFuture<RebootNodeResponse> {
        return client.send(operation: "RebootNode", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a set of tags with a DAX resource. You can call TagResource up to 5 times per second, per account. 
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the association of tags from a DAX resource. You can call UntagResource up to 5 times per second, per account. 
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.
    public func updateCluster(_ input: UpdateClusterRequest) -> EventLoopFuture<UpdateClusterResponse> {
        return client.send(operation: "UpdateCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    public func updateParameterGroup(_ input: UpdateParameterGroupRequest) -> EventLoopFuture<UpdateParameterGroupResponse> {
        return client.send(operation: "UpdateParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing subnet group.
    public func updateSubnetGroup(_ input: UpdateSubnetGroupRequest) -> EventLoopFuture<UpdateSubnetGroupResponse> {
        return client.send(operation: "UpdateSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }
}
