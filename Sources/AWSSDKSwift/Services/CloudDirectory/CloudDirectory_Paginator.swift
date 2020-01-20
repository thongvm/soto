// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CloudDirectory {

    ///  Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
    public func listAppliedSchemaArnsPaginator(_ input: ListAppliedSchemaArnsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listAppliedSchemaArns, resultKey: \.schemaArns, tokenKey: \.nextToken)
    }
    
    ///  Lists indices attached to the specified object.
    public func listAttachedIndicesPaginator(_ input: ListAttachedIndicesRequest) -> EventLoopFuture<[IndexAttachment]> {
        return client.paginate(input: input, command: listAttachedIndices, resultKey: \.indexAttachments, tokenKey: \.nextToken)
    }
    
    ///  Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
    public func listDevelopmentSchemaArnsPaginator(_ input: ListDevelopmentSchemaArnsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDevelopmentSchemaArns, resultKey: \.schemaArns, tokenKey: \.nextToken)
    }
    
    ///  Lists directories created within an account.
    public func listDirectoriesPaginator(_ input: ListDirectoriesRequest) -> EventLoopFuture<[Directory]> {
        return client.paginate(input: input, command: listDirectories, resultKey: \.directories, tokenKey: \.nextToken)
    }
    
    ///  Retrieves attributes attached to the facet.
    public func listFacetAttributesPaginator(_ input: ListFacetAttributesRequest) -> EventLoopFuture<[FacetAttribute]> {
        return client.paginate(input: input, command: listFacetAttributes, resultKey: \.attributes, tokenKey: \.nextToken)
    }
    
    ///  Retrieves the names of facets that exist in a schema.
    public func listFacetNamesPaginator(_ input: ListFacetNamesRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listFacetNames, resultKey: \.facetNames, tokenKey: \.nextToken)
    }
    
    ///  Lists objects attached to the specified index.
    public func listIndexPaginator(_ input: ListIndexRequest) -> EventLoopFuture<[IndexAttachment]> {
        return client.paginate(input: input, command: listIndex, resultKey: \.indexAttachments, tokenKey: \.nextToken)
    }
    
    ///  Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listManagedSchemaArnsPaginator(_ input: ListManagedSchemaArnsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listManagedSchemaArns, resultKey: \.schemaArns, tokenKey: \.nextToken)
    }
    
    ///  Lists all attributes that are associated with an object. 
    public func listObjectAttributesPaginator(_ input: ListObjectAttributesRequest) -> EventLoopFuture<[AttributeKeyAndValue]> {
        return client.paginate(input: input, command: listObjectAttributes, resultKey: \.attributes, tokenKey: \.nextToken)
    }
    
    ///  Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
    public func listObjectParentPathsPaginator(_ input: ListObjectParentPathsRequest) -> EventLoopFuture<[PathToObjectIdentifiers]> {
        return client.paginate(input: input, command: listObjectParentPaths, resultKey: \.pathToObjectIdentifiersList, tokenKey: \.nextToken)
    }
    
    ///  Lists parent objects that are associated with a given object in pagination fashion.
    public func listObjectParentsPaginator(_ input: ListObjectParentsRequest) -> EventLoopFuture<[ObjectIdentifierAndLinkNameTuple]> {
        return client.paginate(input: input, command: listObjectParents, resultKey: \.parentLinks, tokenKey: \.nextToken)
    }
    
    ///  Returns policies attached to an object in pagination fashion.
    public func listObjectPoliciesPaginator(_ input: ListObjectPoliciesRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listObjectPolicies, resultKey: \.attachedPolicyIds, tokenKey: \.nextToken)
    }
    
    ///  Returns all of the ObjectIdentifiers to which a given policy is attached.
    public func listPolicyAttachmentsPaginator(_ input: ListPolicyAttachmentsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listPolicyAttachments, resultKey: \.objectIdentifiers, tokenKey: \.nextToken)
    }
    
    ///  Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listPublishedSchemaArnsPaginator(_ input: ListPublishedSchemaArnsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listPublishedSchemaArns, resultKey: \.schemaArns, tokenKey: \.nextToken)
    }
    
    ///  Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest) -> EventLoopFuture<[Tag]> {
        return client.paginate(input: input, command: listTagsForResource, resultKey: \.tags, tokenKey: \.nextToken)
    }
    
    ///  Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed Links.
    public func listTypedLinkFacetAttributesPaginator(_ input: ListTypedLinkFacetAttributesRequest) -> EventLoopFuture<[TypedLinkAttributeDefinition]> {
        return client.paginate(input: input, command: listTypedLinkFacetAttributes, resultKey: \.attributes, tokenKey: \.nextToken)
    }
    
    ///  Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed Links.
    public func listTypedLinkFacetNamesPaginator(_ input: ListTypedLinkFacetNamesRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listTypedLinkFacetNames, resultKey: \.facetNames, tokenKey: \.nextToken)
    }
    
    ///  Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
    public func lookupPolicyPaginator(_ input: LookupPolicyRequest) -> EventLoopFuture<[PolicyToPath]> {
        return client.paginate(input: input, command: lookupPolicy, resultKey: \.policyToPathList, tokenKey: \.nextToken)
    }
    
}

extension CloudDirectory.ListAppliedSchemaArnsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListAppliedSchemaArnsRequest, token: String) {
        self.init(
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListAttachedIndicesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListAttachedIndicesRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            targetReference: original.targetReference
        )
    }
}

extension CloudDirectory.ListDevelopmentSchemaArnsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListDevelopmentSchemaArnsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension CloudDirectory.ListDirectoriesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListDirectoriesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            state: original.state
        )
    }
}

extension CloudDirectory.ListFacetAttributesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListFacetAttributesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListFacetNamesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListFacetNamesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListIndexRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListIndexRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            indexReference: original.indexReference, 
            maxResults: original.maxResults, 
            nextToken: token, 
            rangesOnIndexedValues: original.rangesOnIndexedValues
        )
    }
}

extension CloudDirectory.ListManagedSchemaArnsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListManagedSchemaArnsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListObjectAttributesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListObjectAttributesRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            facetFilter: original.facetFilter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            objectReference: original.objectReference
        )
    }
}

extension CloudDirectory.ListObjectParentPathsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListObjectParentPathsRequest, token: String) {
        self.init(
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            objectReference: original.objectReference
        )
    }
}

extension CloudDirectory.ListObjectParentsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListObjectParentsRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            includeAllLinksToEachParent: original.includeAllLinksToEachParent, 
            maxResults: original.maxResults, 
            nextToken: token, 
            objectReference: original.objectReference
        )
    }
}

extension CloudDirectory.ListObjectPoliciesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListObjectPoliciesRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            objectReference: original.objectReference
        )
    }
}

extension CloudDirectory.ListPolicyAttachmentsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListPolicyAttachmentsRequest, token: String) {
        self.init(
            consistencyLevel: original.consistencyLevel, 
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            policyReference: original.policyReference
        )
    }
}

extension CloudDirectory.ListPublishedSchemaArnsRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListPublishedSchemaArnsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListTagsForResourceRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListTagsForResourceRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceArn: original.resourceArn
        )
    }
}

extension CloudDirectory.ListTypedLinkFacetAttributesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListTypedLinkFacetAttributesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.ListTypedLinkFacetNamesRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.ListTypedLinkFacetNamesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            schemaArn: original.schemaArn
        )
    }
}

extension CloudDirectory.LookupPolicyRequest: AWSPaginateStringToken {
    public init(_ original: CloudDirectory.LookupPolicyRequest, token: String) {
        self.init(
            directoryArn: original.directoryArn, 
            maxResults: original.maxResults, 
            nextToken: token, 
            objectReference: original.objectReference
        )
    }
}


