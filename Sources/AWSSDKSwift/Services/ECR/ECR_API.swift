// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ECR service.

Amazon Elastic Container Registry Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.
*/
public struct ECR {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ECR client
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
            amzTarget: "AmazonEC2ContainerRegistry_V20150921",
            service: "api.ecr",
            signingName: "ecr",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-09-21",
            endpoint: endpoint,
            serviceEndpoints: ["ap-east-1": "api.ecr.ap-east-1.amazonaws.com", "ap-northeast-1": "api.ecr.ap-northeast-1.amazonaws.com", "ap-northeast-2": "api.ecr.ap-northeast-2.amazonaws.com", "ap-south-1": "api.ecr.ap-south-1.amazonaws.com", "ap-southeast-1": "api.ecr.ap-southeast-1.amazonaws.com", "ap-southeast-2": "api.ecr.ap-southeast-2.amazonaws.com", "ca-central-1": "api.ecr.ca-central-1.amazonaws.com", "eu-central-1": "api.ecr.eu-central-1.amazonaws.com", "eu-north-1": "api.ecr.eu-north-1.amazonaws.com", "eu-west-1": "api.ecr.eu-west-1.amazonaws.com", "eu-west-2": "api.ecr.eu-west-2.amazonaws.com", "eu-west-3": "api.ecr.eu-west-3.amazonaws.com", "me-south-1": "api.ecr.me-south-1.amazonaws.com", "sa-east-1": "api.ecr.sa-east-1.amazonaws.com", "us-east-1": "api.ecr.us-east-1.amazonaws.com", "us-east-2": "api.ecr.us-east-2.amazonaws.com", "us-west-1": "api.ecr.us-west-1.amazonaws.com", "us-west-2": "api.ecr.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ECRErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Check the availability of multiple image layers in a specified registry and repository.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest) -> EventLoopFuture<BatchCheckLayerAvailabilityResponse> {
        return client.send(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of specified images within a specified repository. Images are specified with either imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    public func batchDeleteImage(_ input: BatchDeleteImageRequest) -> EventLoopFuture<BatchDeleteImageResponse> {
        return client.send(operation: "BatchDeleteImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets detailed information for specified images within a specified repository. Images are specified with either imageTag or imageDigest.
    public func batchGetImage(_ input: BatchGetImageRequest) -> EventLoopFuture<BatchGetImageResponse> {
        return client.send(operation: "BatchGetImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest) -> EventLoopFuture<CompleteLayerUploadResponse> {
        return client.send(operation: "CompleteLayerUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an Amazon Elastic Container Registry (Amazon ECR) repository, where users can push and pull Docker images. For more information, see Amazon ECR Repositories in the Amazon Elastic Container Registry User Guide.
    public func createRepository(_ input: CreateRepositoryRequest) -> EventLoopFuture<CreateRepositoryResponse> {
        return client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified lifecycle policy.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest) -> EventLoopFuture<DeleteLifecyclePolicyResponse> {
        return client.send(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing image repository. If a repository contains images, you must use the force option to delete it.
    public func deleteRepository(_ input: DeleteRepositoryRequest) -> EventLoopFuture<DeleteRepositoryResponse> {
        return client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the repository policy from a specified repository.
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest) -> EventLoopFuture<DeleteRepositoryPolicyResponse> {
        return client.send(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the image scan findings for the specified image.
    public func describeImageScanFindings(_ input: DescribeImageScanFindingsRequest) -> EventLoopFuture<DescribeImageScanFindingsResponse> {
        return client.send(operation: "DescribeImageScanFindings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata about the images in a repository, including image size, image tags, and creation date.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImages(_ input: DescribeImagesRequest) -> EventLoopFuture<DescribeImagesResponse> {
        return client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes image repositories in a registry.
    public func describeRepositories(_ input: DescribeRepositoriesRequest) -> EventLoopFuture<DescribeRepositoriesResponse> {
        return client.send(operation: "DescribeRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the docker CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed. The authorizationToken returned for each registry specified is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an aws ecr get-login command that simplifies the login process.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest) -> EventLoopFuture<GetAuthorizationTokenResponse> {
        return client.send(operation: "GetAuthorizationToken", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest) -> EventLoopFuture<GetDownloadUrlForLayerResponse> {
        return client.send(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the specified lifecycle policy.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest) -> EventLoopFuture<GetLifecyclePolicyResponse> {
        return client.send(operation: "GetLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the results of the specified lifecycle policy preview request.
    public func getLifecyclePolicyPreview(_ input: GetLifecyclePolicyPreviewRequest) -> EventLoopFuture<GetLifecyclePolicyPreviewResponse> {
        return client.send(operation: "GetLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the repository policy for a specified repository.
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest) -> EventLoopFuture<GetRepositoryPolicyResponse> {
        return client.send(operation: "GetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Notify Amazon ECR that you intend to upload an image layer.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest) -> EventLoopFuture<InitiateLayerUploadResponse> {
        return client.send(operation: "InitiateLayerUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the image IDs for a given repository. You can filter images based on whether or not they are tagged by setting the tagStatus parameter to TAGGED or UNTAGGED. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImages(_ input: ListImagesRequest) -> EventLoopFuture<ListImagesResponse> {
        return client.send(operation: "ListImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the tags for an Amazon ECR resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates the image manifest and tags associated with an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func putImage(_ input: PutImageRequest) -> EventLoopFuture<PutImageResponse> {
        return client.send(operation: "PutImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the image scanning configuration for a repository.
    public func putImageScanningConfiguration(_ input: PutImageScanningConfigurationRequest) -> EventLoopFuture<PutImageScanningConfigurationResponse> {
        return client.send(operation: "PutImageScanningConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the image tag mutability settings for a repository. When a repository is configured with tag immutability, all image tags within the repository will be prevented them from being overwritten. For more information, see Image Tag Mutability in the Amazon Elastic Container Registry User Guide.
    public func putImageTagMutability(_ input: PutImageTagMutabilityRequest) -> EventLoopFuture<PutImageTagMutabilityResponse> {
        return client.send(operation: "PutImageTagMutability", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see Lifecycle Policy Template.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyRequest) -> EventLoopFuture<PutLifecyclePolicyResponse> {
        return client.send(operation: "PutLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a repository policy on a specified repository to control access permissions. For more information, see Amazon ECR Repository Policies in the Amazon Elastic Container Registry User Guide.
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest) -> EventLoopFuture<SetRepositoryPolicyResponse> {
        return client.send(operation: "SetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see Image Scanning in the Amazon Elastic Container Registry User Guide.
    public func startImageScan(_ input: StartImageScanRequest) -> EventLoopFuture<StartImageScanResponse> {
        return client.send(operation: "StartImageScan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.
    public func startLifecyclePolicyPreview(_ input: StartLifecyclePolicyPreviewRequest) -> EventLoopFuture<StartLifecyclePolicyPreviewResponse> {
        return client.send(operation: "StartLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an image layer part to Amazon ECR.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func uploadLayerPart(_ input: UploadLayerPartRequest) -> EventLoopFuture<UploadLayerPartResponse> {
        return client.send(operation: "UploadLayerPart", path: "/", httpMethod: "POST", input: input)
    }
}
