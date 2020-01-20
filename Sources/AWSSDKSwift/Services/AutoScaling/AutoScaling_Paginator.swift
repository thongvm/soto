// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AutoScaling {

    ///  Describes one or more Auto Scaling groups.
    public func describeAutoScalingGroupsPaginator(_ input: AutoScalingGroupNamesType) -> EventLoopFuture<[AutoScalingGroup]> {
        return client.paginate(input: input, command: describeAutoScalingGroups, resultKey: \.autoScalingGroups, tokenKey: \.nextToken)
    }
    
    ///  Describes one or more Auto Scaling instances.
    public func describeAutoScalingInstancesPaginator(_ input: DescribeAutoScalingInstancesType) -> EventLoopFuture<[AutoScalingInstanceDetails]> {
        return client.paginate(input: input, command: describeAutoScalingInstances, resultKey: \.autoScalingInstances, tokenKey: \.nextToken)
    }
    
    ///  Describes one or more launch configurations.
    public func describeLaunchConfigurationsPaginator(_ input: LaunchConfigurationNamesType) -> EventLoopFuture<[LaunchConfiguration]> {
        return client.paginate(input: input, command: describeLaunchConfigurations, resultKey: \.launchConfigurations, tokenKey: \.nextToken)
    }
    
    ///  Describes the notification actions associated with the specified Auto Scaling group.
    public func describeNotificationConfigurationsPaginator(_ input: DescribeNotificationConfigurationsType) -> EventLoopFuture<[NotificationConfiguration]> {
        return client.paginate(input: input, command: describeNotificationConfigurations, resultKey: \.notificationConfigurations, tokenKey: \.nextToken)
    }
    
    ///  Describes the policies for the specified Auto Scaling group.
    public func describePoliciesPaginator(_ input: DescribePoliciesType) -> EventLoopFuture<[ScalingPolicy]> {
        return client.paginate(input: input, command: describePolicies, resultKey: \.scalingPolicies, tokenKey: \.nextToken)
    }
    
    ///  Describes one or more scaling activities for the specified Auto Scaling group.
    public func describeScalingActivitiesPaginator(_ input: DescribeScalingActivitiesType) -> EventLoopFuture<[Activity]> {
        return client.paginate(input: input, command: describeScalingActivities, resultKey: \.activities, tokenKey: \.nextToken)
    }
    
    ///  Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, use DescribeScalingActivities.
    public func describeScheduledActionsPaginator(_ input: DescribeScheduledActionsType) -> EventLoopFuture<[ScheduledUpdateGroupAction]> {
        return client.paginate(input: input, command: describeScheduledActions, resultKey: \.scheduledUpdateGroupActions, tokenKey: \.nextToken)
    }
    
    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.
    public func describeTagsPaginator(_ input: DescribeTagsType) -> EventLoopFuture<[TagDescription]> {
        return client.paginate(input: input, command: describeTags, resultKey: \.tags, tokenKey: \.nextToken)
    }
    
}

extension AutoScaling.AutoScalingGroupNamesType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.AutoScalingGroupNamesType, token: String) {
        self.init(
            autoScalingGroupNames: original.autoScalingGroupNames, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeAutoScalingInstancesType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribeAutoScalingInstancesType, token: String) {
        self.init(
            instanceIds: original.instanceIds, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}

extension AutoScaling.LaunchConfigurationNamesType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.LaunchConfigurationNamesType, token: String) {
        self.init(
            launchConfigurationNames: original.launchConfigurationNames, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeNotificationConfigurationsType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribeNotificationConfigurationsType, token: String) {
        self.init(
            autoScalingGroupNames: original.autoScalingGroupNames, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}

extension AutoScaling.DescribePoliciesType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribePoliciesType, token: String) {
        self.init(
            autoScalingGroupName: original.autoScalingGroupName, 
            maxRecords: original.maxRecords, 
            nextToken: token, 
            policyNames: original.policyNames, 
            policyTypes: original.policyTypes
        )
    }
}

extension AutoScaling.DescribeScalingActivitiesType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribeScalingActivitiesType, token: String) {
        self.init(
            activityIds: original.activityIds, 
            autoScalingGroupName: original.autoScalingGroupName, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}

extension AutoScaling.DescribeScheduledActionsType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribeScheduledActionsType, token: String) {
        self.init(
            autoScalingGroupName: original.autoScalingGroupName, 
            endTime: original.endTime, 
            maxRecords: original.maxRecords, 
            nextToken: token, 
            scheduledActionNames: original.scheduledActionNames, 
            startTime: original.startTime
        )
    }
}

extension AutoScaling.DescribeTagsType: AWSPaginateStringToken {
    public init(_ original: AutoScaling.DescribeTagsType, token: String) {
        self.init(
            filters: original.filters, 
            maxRecords: original.maxRecords, 
            nextToken: token
        )
    }
}


