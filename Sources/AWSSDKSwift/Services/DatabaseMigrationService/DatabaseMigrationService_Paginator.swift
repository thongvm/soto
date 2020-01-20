// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension DatabaseMigrationService {

    ///  Provides a description of the certificate.
    public func describeCertificatesPaginator(_ input: DescribeCertificatesMessage) -> EventLoopFuture<[Certificate]> {
        return client.paginate(input: input, command: describeCertificates, resultKey: \.certificates, tokenKey: \.marker)
    }
    
    ///  Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    public func describeConnectionsPaginator(_ input: DescribeConnectionsMessage) -> EventLoopFuture<[Connection]> {
        return client.paginate(input: input, command: describeConnections, resultKey: \.connections, tokenKey: \.marker)
    }
    
    ///  Returns information about the type of endpoints available.
    public func describeEndpointTypesPaginator(_ input: DescribeEndpointTypesMessage) -> EventLoopFuture<[SupportedEndpointType]> {
        return client.paginate(input: input, command: describeEndpointTypes, resultKey: \.supportedEndpointTypes, tokenKey: \.marker)
    }
    
    ///  Returns information about the endpoints for your account in the current region.
    public func describeEndpointsPaginator(_ input: DescribeEndpointsMessage) -> EventLoopFuture<[Endpoint]> {
        return client.paginate(input: input, command: describeEndpoints, resultKey: \.endpoints, tokenKey: \.marker)
    }
    
    ///  Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    public func describeEventSubscriptionsPaginator(_ input: DescribeEventSubscriptionsMessage) -> EventLoopFuture<[EventSubscription]> {
        return client.paginate(input: input, command: describeEventSubscriptions, resultKey: \.eventSubscriptionsList, tokenKey: \.marker)
    }
    
    ///   Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 
    public func describeEventsPaginator(_ input: DescribeEventsMessage) -> EventLoopFuture<[Event]> {
        return client.paginate(input: input, command: describeEvents, resultKey: \.events, tokenKey: \.marker)
    }
    
    ///  Returns information about the replication instance types that can be created in the specified region.
    public func describeOrderableReplicationInstancesPaginator(_ input: DescribeOrderableReplicationInstancesMessage) -> EventLoopFuture<[OrderableReplicationInstance]> {
        return client.paginate(input: input, command: describeOrderableReplicationInstances, resultKey: \.orderableReplicationInstances, tokenKey: \.marker)
    }
    
    ///  For internal use only
    public func describePendingMaintenanceActionsPaginator(_ input: DescribePendingMaintenanceActionsMessage) -> EventLoopFuture<[ResourcePendingMaintenanceActions]> {
        return client.paginate(input: input, command: describePendingMaintenanceActions, resultKey: \.pendingMaintenanceActions, tokenKey: \.marker)
    }
    
    ///  Returns information about the task logs for the specified task.
    public func describeReplicationInstanceTaskLogsPaginator(_ input: DescribeReplicationInstanceTaskLogsMessage) -> EventLoopFuture<[ReplicationInstanceTaskLog]> {
        return client.paginate(input: input, command: describeReplicationInstanceTaskLogs, resultKey: \.replicationInstanceTaskLogs, tokenKey: \.marker)
    }
    
    ///  Returns information about replication instances for your account in the current region.
    public func describeReplicationInstancesPaginator(_ input: DescribeReplicationInstancesMessage) -> EventLoopFuture<[ReplicationInstance]> {
        return client.paginate(input: input, command: describeReplicationInstances, resultKey: \.replicationInstances, tokenKey: \.marker)
    }
    
    ///  Returns information about the replication subnet groups.
    public func describeReplicationSubnetGroupsPaginator(_ input: DescribeReplicationSubnetGroupsMessage) -> EventLoopFuture<[ReplicationSubnetGroup]> {
        return client.paginate(input: input, command: describeReplicationSubnetGroups, resultKey: \.replicationSubnetGroups, tokenKey: \.marker)
    }
    
    ///  Returns the task assessment results from Amazon S3. This action always returns the latest results.
    public func describeReplicationTaskAssessmentResultsPaginator(_ input: DescribeReplicationTaskAssessmentResultsMessage) -> EventLoopFuture<[ReplicationTaskAssessmentResult]> {
        return client.paginate(input: input, command: describeReplicationTaskAssessmentResults, resultKey: \.replicationTaskAssessmentResults, tokenKey: \.marker)
    }
    
    ///  Returns information about replication tasks for your account in the current region.
    public func describeReplicationTasksPaginator(_ input: DescribeReplicationTasksMessage) -> EventLoopFuture<[ReplicationTask]> {
        return client.paginate(input: input, command: describeReplicationTasks, resultKey: \.replicationTasks, tokenKey: \.marker)
    }
    
    ///  Returns information about the schema for the specified endpoint. 
    public func describeSchemasPaginator(_ input: DescribeSchemasMessage) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: describeSchemas, resultKey: \.schemas, tokenKey: \.marker)
    }
    
    ///  Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    public func describeTableStatisticsPaginator(_ input: DescribeTableStatisticsMessage) -> EventLoopFuture<[TableStatistics]> {
        return client.paginate(input: input, command: describeTableStatistics, resultKey: \.tableStatistics, tokenKey: \.marker)
    }
    
}

extension DatabaseMigrationService.DescribeCertificatesMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeCertificatesMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeConnectionsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeConnectionsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeEndpointTypesMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeEndpointTypesMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeEndpointsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeEndpointsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeEventSubscriptionsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeEventSubscriptionsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            subscriptionName: original.subscriptionName
        )
    }
}

extension DatabaseMigrationService.DescribeEventsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeEventsMessage, token: String) {
        self.init(
            duration: original.duration, 
            endTime: original.endTime, 
            eventCategories: original.eventCategories, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            sourceIdentifier: original.sourceIdentifier, 
            sourceType: original.sourceType, 
            startTime: original.startTime
        )
    }
}

extension DatabaseMigrationService.DescribeOrderableReplicationInstancesMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeOrderableReplicationInstancesMessage, token: String) {
        self.init(
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribePendingMaintenanceActionsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribePendingMaintenanceActionsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            replicationInstanceArn: original.replicationInstanceArn
        )
    }
}

extension DatabaseMigrationService.DescribeReplicationInstanceTaskLogsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeReplicationInstanceTaskLogsMessage, token: String) {
        self.init(
            marker: token, 
            maxRecords: original.maxRecords, 
            replicationInstanceArn: original.replicationInstanceArn
        )
    }
}

extension DatabaseMigrationService.DescribeReplicationInstancesMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeReplicationInstancesMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeReplicationSubnetGroupsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeReplicationSubnetGroupsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeReplicationTaskAssessmentResultsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeReplicationTaskAssessmentResultsMessage, token: String) {
        self.init(
            marker: token, 
            maxRecords: original.maxRecords, 
            replicationTaskArn: original.replicationTaskArn
        )
    }
}

extension DatabaseMigrationService.DescribeReplicationTasksMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeReplicationTasksMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            withoutSettings: original.withoutSettings
        )
    }
}

extension DatabaseMigrationService.DescribeSchemasMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeSchemasMessage, token: String) {
        self.init(
            endpointArn: original.endpointArn, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DatabaseMigrationService.DescribeTableStatisticsMessage: AWSPaginateStringToken {
    public init(_ original: DatabaseMigrationService.DescribeTableStatisticsMessage, token: String) {
        self.init(
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            replicationTaskArn: original.replicationTaskArn
        )
    }
}


