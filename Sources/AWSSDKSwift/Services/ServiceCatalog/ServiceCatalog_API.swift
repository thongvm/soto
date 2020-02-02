// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ServiceCatalog service.

AWS Service Catalog  AWS Service Catalog enables organizations to create and manage catalogs of IT services that are approved for use on AWS. To get the most out of this documentation, you should be familiar with the terminology discussed in AWS Service Catalog Concepts.
*/
public struct ServiceCatalog {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ServiceCatalog client
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
            amzTarget: "AWS242ServiceCatalogService",
            service: "servicecatalog",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-12-10",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "servicecatalog-fips.us-east-1.amazonaws.com", "us-east-2-fips": "servicecatalog-fips.us-east-2.amazonaws.com", "us-west-1-fips": "servicecatalog-fips.us-west-1.amazonaws.com", "us-west-2-fips": "servicecatalog-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ServiceCatalogErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Accepts an offer to share the specified portfolio.
    public func acceptPortfolioShare(_ input: AcceptPortfolioShareInput) -> EventLoopFuture<AcceptPortfolioShareOutput> {
        return client.send(operation: "AcceptPortfolioShare", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified budget with the specified resource.
    public func associateBudgetWithResource(_ input: AssociateBudgetWithResourceInput) -> EventLoopFuture<AssociateBudgetWithResourceOutput> {
        return client.send(operation: "AssociateBudgetWithResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified principal ARN with the specified portfolio.
    public func associatePrincipalWithPortfolio(_ input: AssociatePrincipalWithPortfolioInput) -> EventLoopFuture<AssociatePrincipalWithPortfolioOutput> {
        return client.send(operation: "AssociatePrincipalWithPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified product with the specified portfolio.
    public func associateProductWithPortfolio(_ input: AssociateProductWithPortfolioInput) -> EventLoopFuture<AssociateProductWithPortfolioOutput> {
        return client.send(operation: "AssociateProductWithPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a self-service action with a provisioning artifact.
    public func associateServiceActionWithProvisioningArtifact(_ input: AssociateServiceActionWithProvisioningArtifactInput) -> EventLoopFuture<AssociateServiceActionWithProvisioningArtifactOutput> {
        return client.send(operation: "AssociateServiceActionWithProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associate the specified TagOption with the specified portfolio or product.
    public func associateTagOptionWithResource(_ input: AssociateTagOptionWithResourceInput) -> EventLoopFuture<AssociateTagOptionWithResourceOutput> {
        return client.send(operation: "AssociateTagOptionWithResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates multiple self-service actions with provisioning artifacts.
    public func batchAssociateServiceActionWithProvisioningArtifact(_ input: BatchAssociateServiceActionWithProvisioningArtifactInput) -> EventLoopFuture<BatchAssociateServiceActionWithProvisioningArtifactOutput> {
        return client.send(operation: "BatchAssociateServiceActionWithProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a batch of self-service actions from the specified provisioning artifact.
    public func batchDisassociateServiceActionFromProvisioningArtifact(_ input: BatchDisassociateServiceActionFromProvisioningArtifactInput) -> EventLoopFuture<BatchDisassociateServiceActionFromProvisioningArtifactOutput> {
        return client.send(operation: "BatchDisassociateServiceActionFromProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies the specified source product to the specified target product or a new product. You can copy a product to the same account or another account. You can copy a product to the same region or another region. This operation is performed asynchronously. To track the progress of the operation, use DescribeCopyProductStatus.
    public func copyProduct(_ input: CopyProductInput) -> EventLoopFuture<CopyProductOutput> {
        return client.send(operation: "CopyProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a constraint.
    public func createConstraint(_ input: CreateConstraintInput) -> EventLoopFuture<CreateConstraintOutput> {
        return client.send(operation: "CreateConstraint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a portfolio.
    public func createPortfolio(_ input: CreatePortfolioInput) -> EventLoopFuture<CreatePortfolioOutput> {
        return client.send(operation: "CreatePortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an Organization. AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.
    public func createPortfolioShare(_ input: CreatePortfolioShareInput) -> EventLoopFuture<CreatePortfolioShareOutput> {
        return client.send(operation: "CreatePortfolioShare", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a product.
    public func createProduct(_ input: CreateProductInput) -> EventLoopFuture<CreateProductOutput> {
        return client.send(operation: "CreateProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed. You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED. To view the resource changes in the change set, use DescribeProvisionedProductPlan. To create or modify the provisioned product, use ExecuteProvisionedProductPlan.
    public func createProvisionedProductPlan(_ input: CreateProvisionedProductPlanInput) -> EventLoopFuture<CreateProvisionedProductPlanOutput> {
        return client.send(operation: "CreateProvisionedProductPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a provisioning artifact (also known as a version) for the specified product. You cannot create a provisioning artifact for a product that was shared with you.
    public func createProvisioningArtifact(_ input: CreateProvisioningArtifactInput) -> EventLoopFuture<CreateProvisioningArtifactOutput> {
        return client.send(operation: "CreateProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a self-service action.
    public func createServiceAction(_ input: CreateServiceActionInput) -> EventLoopFuture<CreateServiceActionOutput> {
        return client.send(operation: "CreateServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a TagOption.
    public func createTagOption(_ input: CreateTagOptionInput) -> EventLoopFuture<CreateTagOptionOutput> {
        return client.send(operation: "CreateTagOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified constraint.
    public func deleteConstraint(_ input: DeleteConstraintInput) -> EventLoopFuture<DeleteConstraintOutput> {
        return client.send(operation: "DeleteConstraint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified portfolio. You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.
    public func deletePortfolio(_ input: DeletePortfolioInput) -> EventLoopFuture<DeletePortfolioOutput> {
        return client.send(operation: "DeletePortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an Organization.
    public func deletePortfolioShare(_ input: DeletePortfolioShareInput) -> EventLoopFuture<DeletePortfolioShareOutput> {
        return client.send(operation: "DeletePortfolioShare", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified product. You cannot delete a product if it was shared with you or is associated with a portfolio.
    public func deleteProduct(_ input: DeleteProductInput) -> EventLoopFuture<DeleteProductOutput> {
        return client.send(operation: "DeleteProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified plan.
    public func deleteProvisionedProductPlan(_ input: DeleteProvisionedProductPlanInput) -> EventLoopFuture<DeleteProvisionedProductPlanOutput> {
        return client.send(operation: "DeleteProvisionedProductPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified provisioning artifact (also known as a version) for the specified product. You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.
    public func deleteProvisioningArtifact(_ input: DeleteProvisioningArtifactInput) -> EventLoopFuture<DeleteProvisioningArtifactOutput> {
        return client.send(operation: "DeleteProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a self-service action.
    public func deleteServiceAction(_ input: DeleteServiceActionInput) -> EventLoopFuture<DeleteServiceActionOutput> {
        return client.send(operation: "DeleteServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified TagOption. You cannot delete a TagOption if it is associated with a product or portfolio.
    public func deleteTagOption(_ input: DeleteTagOptionInput) -> EventLoopFuture<DeleteTagOptionOutput> {
        return client.send(operation: "DeleteTagOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified constraint.
    public func describeConstraint(_ input: DescribeConstraintInput) -> EventLoopFuture<DescribeConstraintOutput> {
        return client.send(operation: "DescribeConstraint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the status of the specified copy product operation.
    public func describeCopyProductStatus(_ input: DescribeCopyProductStatusInput) -> EventLoopFuture<DescribeCopyProductStatusOutput> {
        return client.send(operation: "DescribeCopyProductStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified portfolio.
    public func describePortfolio(_ input: DescribePortfolioInput) -> EventLoopFuture<DescribePortfolioOutput> {
        return client.send(operation: "DescribePortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization.
    public func describePortfolioShareStatus(_ input: DescribePortfolioShareStatusInput) -> EventLoopFuture<DescribePortfolioShareStatusOutput> {
        return client.send(operation: "DescribePortfolioShareStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified product.
    public func describeProduct(_ input: DescribeProductInput) -> EventLoopFuture<DescribeProductOutput> {
        return client.send(operation: "DescribeProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified product. This operation is run with administrator access.
    public func describeProductAsAdmin(_ input: DescribeProductAsAdminInput) -> EventLoopFuture<DescribeProductAsAdminOutput> {
        return client.send(operation: "DescribeProductAsAdmin", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified product.
    public func describeProductView(_ input: DescribeProductViewInput) -> EventLoopFuture<DescribeProductViewOutput> {
        return client.send(operation: "DescribeProductView", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified provisioned product.
    public func describeProvisionedProduct(_ input: DescribeProvisionedProductInput) -> EventLoopFuture<DescribeProvisionedProductOutput> {
        return client.send(operation: "DescribeProvisionedProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the resource changes for the specified plan.
    public func describeProvisionedProductPlan(_ input: DescribeProvisionedProductPlanInput) -> EventLoopFuture<DescribeProvisionedProductPlanOutput> {
        return client.send(operation: "DescribeProvisionedProductPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified provisioning artifact (also known as a version) for the specified product.
    public func describeProvisioningArtifact(_ input: DescribeProvisioningArtifactInput) -> EventLoopFuture<DescribeProvisioningArtifactOutput> {
        return client.send(operation: "DescribeProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the configuration required to provision the specified product using the specified provisioning artifact. If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to ProvisionProduct, do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value". Tag the provisioned product with the value sc-tagoption-conflict-portfolioId-productId.
    public func describeProvisioningParameters(_ input: DescribeProvisioningParametersInput) -> EventLoopFuture<DescribeProvisioningParametersOutput> {
        return client.send(operation: "DescribeProvisioningParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified request operation. Use this operation after calling a request operation (for example, ProvisionProduct, TerminateProvisionedProduct, or UpdateProvisionedProduct).   If a provisioned product was transferred to a new owner using UpdateProvisionedProductProperties, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use ListRecordHistory to see the product's history from when he was the owner. 
    public func describeRecord(_ input: DescribeRecordInput) -> EventLoopFuture<DescribeRecordOutput> {
        return client.send(operation: "DescribeRecord", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a self-service action.
    public func describeServiceAction(_ input: DescribeServiceActionInput) -> EventLoopFuture<DescribeServiceActionOutput> {
        return client.send(operation: "DescribeServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    public func describeServiceActionExecutionParameters(_ input: DescribeServiceActionExecutionParametersInput) -> EventLoopFuture<DescribeServiceActionExecutionParametersOutput> {
        return client.send(operation: "DescribeServiceActionExecutionParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the specified TagOption.
    public func describeTagOption(_ input: DescribeTagOptionInput) -> EventLoopFuture<DescribeTagOptionOutput> {
        return client.send(operation: "DescribeTagOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.
    public func disableAWSOrganizationsAccess(_ input: DisableAWSOrganizationsAccessInput) -> EventLoopFuture<DisableAWSOrganizationsAccessOutput> {
        return client.send(operation: "DisableAWSOrganizationsAccess", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified budget from the specified resource.
    public func disassociateBudgetFromResource(_ input: DisassociateBudgetFromResourceInput) -> EventLoopFuture<DisassociateBudgetFromResourceOutput> {
        return client.send(operation: "DisassociateBudgetFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a previously associated principal ARN from a specified portfolio.
    public func disassociatePrincipalFromPortfolio(_ input: DisassociatePrincipalFromPortfolioInput) -> EventLoopFuture<DisassociatePrincipalFromPortfolioOutput> {
        return client.send(operation: "DisassociatePrincipalFromPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified product from the specified portfolio. 
    public func disassociateProductFromPortfolio(_ input: DisassociateProductFromPortfolioInput) -> EventLoopFuture<DisassociateProductFromPortfolioOutput> {
        return client.send(operation: "DisassociateProductFromPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified self-service action association from the specified provisioning artifact.
    public func disassociateServiceActionFromProvisioningArtifact(_ input: DisassociateServiceActionFromProvisioningArtifactInput) -> EventLoopFuture<DisassociateServiceActionFromProvisioningArtifactOutput> {
        return client.send(operation: "DisassociateServiceActionFromProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified TagOption from the specified resource.
    public func disassociateTagOptionFromResource(_ input: DisassociateTagOptionFromResourceInput) -> EventLoopFuture<DisassociateTagOptionFromResourceOutput> {
        return client.send(operation: "DisassociateTagOptionFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization. By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
    public func enableAWSOrganizationsAccess(_ input: EnableAWSOrganizationsAccessInput) -> EventLoopFuture<EnableAWSOrganizationsAccessOutput> {
        return client.send(operation: "EnableAWSOrganizationsAccess", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provisions or modifies a product based on the resource changes for the specified plan.
    public func executeProvisionedProductPlan(_ input: ExecuteProvisionedProductPlanInput) -> EventLoopFuture<ExecuteProvisionedProductPlanOutput> {
        return client.send(operation: "ExecuteProvisionedProductPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Executes a self-service action against a provisioned product.
    public func executeProvisionedProductServiceAction(_ input: ExecuteProvisionedProductServiceActionInput) -> EventLoopFuture<ExecuteProvisionedProductServiceActionOutput> {
        return client.send(operation: "ExecuteProvisionedProductServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization.
    public func getAWSOrganizationsAccessStatus(_ input: GetAWSOrganizationsAccessStatusInput) -> EventLoopFuture<GetAWSOrganizationsAccessStatusOutput> {
        return client.send(operation: "GetAWSOrganizationsAccessStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all portfolios for which sharing was accepted by this account.
    public func listAcceptedPortfolioShares(_ input: ListAcceptedPortfolioSharesInput) -> EventLoopFuture<ListAcceptedPortfolioSharesOutput> {
        return client.send(operation: "ListAcceptedPortfolioShares", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the budgets associated to the specified resource.
    public func listBudgetsForResource(_ input: ListBudgetsForResourceInput) -> EventLoopFuture<ListBudgetsForResourceOutput> {
        return client.send(operation: "ListBudgetsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the constraints for the specified portfolio and product.
    public func listConstraintsForPortfolio(_ input: ListConstraintsForPortfolioInput) -> EventLoopFuture<ListConstraintsForPortfolioOutput> {
        return client.send(operation: "ListConstraintsForPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
    public func listLaunchPaths(_ input: ListLaunchPathsInput) -> EventLoopFuture<ListLaunchPathsOutput> {
        return client.send(operation: "ListLaunchPaths", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization.
    public func listOrganizationPortfolioAccess(_ input: ListOrganizationPortfolioAccessInput) -> EventLoopFuture<ListOrganizationPortfolioAccessOutput> {
        return client.send(operation: "ListOrganizationPortfolioAccess", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the account IDs that have access to the specified portfolio.
    public func listPortfolioAccess(_ input: ListPortfolioAccessInput) -> EventLoopFuture<ListPortfolioAccessOutput> {
        return client.send(operation: "ListPortfolioAccess", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all portfolios in the catalog.
    public func listPortfolios(_ input: ListPortfoliosInput) -> EventLoopFuture<ListPortfoliosOutput> {
        return client.send(operation: "ListPortfolios", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all portfolios that the specified product is associated with.
    public func listPortfoliosForProduct(_ input: ListPortfoliosForProductInput) -> EventLoopFuture<ListPortfoliosForProductOutput> {
        return client.send(operation: "ListPortfoliosForProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all principal ARNs associated with the specified portfolio.
    public func listPrincipalsForPortfolio(_ input: ListPrincipalsForPortfolioInput) -> EventLoopFuture<ListPrincipalsForPortfolioOutput> {
        return client.send(operation: "ListPrincipalsForPortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the plans for the specified provisioned product or all plans to which the user has access.
    public func listProvisionedProductPlans(_ input: ListProvisionedProductPlansInput) -> EventLoopFuture<ListProvisionedProductPlansOutput> {
        return client.send(operation: "ListProvisionedProductPlans", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified product.
    public func listProvisioningArtifacts(_ input: ListProvisioningArtifactsInput) -> EventLoopFuture<ListProvisioningArtifactsOutput> {
        return client.send(operation: "ListProvisioningArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified self-service action.
    public func listProvisioningArtifactsForServiceAction(_ input: ListProvisioningArtifactsForServiceActionInput) -> EventLoopFuture<ListProvisioningArtifactsForServiceActionOutput> {
        return client.send(operation: "ListProvisioningArtifactsForServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified requests or all performed requests.
    public func listRecordHistory(_ input: ListRecordHistoryInput) -> EventLoopFuture<ListRecordHistoryOutput> {
        return client.send(operation: "ListRecordHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the resources associated with the specified TagOption.
    public func listResourcesForTagOption(_ input: ListResourcesForTagOptionInput) -> EventLoopFuture<ListResourcesForTagOptionOutput> {
        return client.send(operation: "ListResourcesForTagOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all self-service actions.
    public func listServiceActions(_ input: ListServiceActionsInput) -> EventLoopFuture<ListServiceActionsOutput> {
        return client.send(operation: "ListServiceActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
    public func listServiceActionsForProvisioningArtifact(_ input: ListServiceActionsForProvisioningArtifactInput) -> EventLoopFuture<ListServiceActionsForProvisioningArtifactOutput> {
        return client.send(operation: "ListServiceActionsForProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. 
    public func listStackInstancesForProvisionedProduct(_ input: ListStackInstancesForProvisionedProductInput) -> EventLoopFuture<ListStackInstancesForProvisionedProductOutput> {
        return client.send(operation: "ListStackInstancesForProvisionedProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified TagOptions or all TagOptions.
    public func listTagOptions(_ input: ListTagOptionsInput) -> EventLoopFuture<ListTagOptionsOutput> {
        return client.send(operation: "ListTagOptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provisions the specified product. A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using DescribeRecord. If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value".
    public func provisionProduct(_ input: ProvisionProductInput) -> EventLoopFuture<ProvisionProductOutput> {
        return client.send(operation: "ProvisionProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Rejects an offer to share the specified portfolio.
    public func rejectPortfolioShare(_ input: RejectPortfolioShareInput) -> EventLoopFuture<RejectPortfolioShareOutput> {
        return client.send(operation: "RejectPortfolioShare", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the provisioned products that are available (not terminated). To use additional filtering, see SearchProvisionedProducts.
    public func scanProvisionedProducts(_ input: ScanProvisionedProductsInput) -> EventLoopFuture<ScanProvisionedProductsOutput> {
        return client.send(operation: "ScanProvisionedProducts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the products to which the caller has access.
    public func searchProducts(_ input: SearchProductsInput) -> EventLoopFuture<SearchProductsOutput> {
        return client.send(operation: "SearchProducts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the products for the specified portfolio or all products.
    public func searchProductsAsAdmin(_ input: SearchProductsAsAdminInput) -> EventLoopFuture<SearchProductsAsAdminOutput> {
        return client.send(operation: "SearchProductsAsAdmin", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the provisioned products that meet the specified criteria.
    public func searchProvisionedProducts(_ input: SearchProvisionedProductsInput) -> EventLoopFuture<SearchProvisionedProductsOutput> {
        return client.send(operation: "SearchProvisionedProducts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Terminates the specified provisioned product. This operation does not delete any records associated with the provisioned product. You can check the status of this request using DescribeRecord.
    public func terminateProvisionedProduct(_ input: TerminateProvisionedProductInput) -> EventLoopFuture<TerminateProvisionedProductOutput> {
        return client.send(operation: "TerminateProvisionedProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified constraint.
    public func updateConstraint(_ input: UpdateConstraintInput) -> EventLoopFuture<UpdateConstraintOutput> {
        return client.send(operation: "UpdateConstraint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified portfolio. You cannot update a product that was shared with you.
    public func updatePortfolio(_ input: UpdatePortfolioInput) -> EventLoopFuture<UpdatePortfolioOutput> {
        return client.send(operation: "UpdatePortfolio", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified product.
    public func updateProduct(_ input: UpdateProductInput) -> EventLoopFuture<UpdateProductOutput> {
        return client.send(operation: "UpdateProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests updates to the configuration of the specified provisioned product. If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely. You can check the status of this request using DescribeRecord.
    public func updateProvisionedProduct(_ input: UpdateProvisionedProductInput) -> EventLoopFuture<UpdateProvisionedProductOutput> {
        return client.send(operation: "UpdateProvisionedProduct", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests updates to the properties of the specified provisioned product.
    public func updateProvisionedProductProperties(_ input: UpdateProvisionedProductPropertiesInput) -> EventLoopFuture<UpdateProvisionedProductPropertiesOutput> {
        return client.send(operation: "UpdateProvisionedProductProperties", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified provisioning artifact (also known as a version) for the specified product. You cannot update a provisioning artifact for a product that was shared with you.
    public func updateProvisioningArtifact(_ input: UpdateProvisioningArtifactInput) -> EventLoopFuture<UpdateProvisioningArtifactOutput> {
        return client.send(operation: "UpdateProvisioningArtifact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a self-service action.
    public func updateServiceAction(_ input: UpdateServiceActionInput) -> EventLoopFuture<UpdateServiceActionOutput> {
        return client.send(operation: "UpdateServiceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified TagOption.
    public func updateTagOption(_ input: UpdateTagOptionInput) -> EventLoopFuture<UpdateTagOptionOutput> {
        return client.send(operation: "UpdateTagOption", path: "/", httpMethod: "POST", input: input)
    }
}
