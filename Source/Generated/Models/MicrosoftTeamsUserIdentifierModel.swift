// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// A Microsoft Teams user.
public struct MicrosoftTeamsUserIdentifierModel: Codable, Equatable {
    // MARK: Properties

    /// The Id of the Microsoft Teams user. If not anonymous, this is the AAD object Id of the user.
    public let userId: String
    /// True if the Microsoft Teams user is anonymous. By default false if missing.
    public let isAnonymous: Bool?
    /// The cloud that the Microsoft Teams user belongs to. By default 'public' if missing.
    public let cloud: CommunicationCloudEnvironmentModel?

    // MARK: Initializers

    /// Initialize a `MicrosoftTeamsUserIdentifierModel` structure.
    /// - Parameters:
    ///   - userId: The Id of the Microsoft Teams user. If not anonymous, this is the AAD object Id of the user.
    ///   - isAnonymous: True if the Microsoft Teams user is anonymous. By default false if missing.
    ///   - cloud: The cloud that the Microsoft Teams user belongs to. By default 'public' if missing.
    public init(
        userId: String, isAnonymous: Bool? = nil, cloud: CommunicationCloudEnvironmentModel? = nil
    ) {
        self.userId = userId
        self.isAnonymous = isAnonymous
        self.cloud = cloud
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case isAnonymous = "isAnonymous"
        case cloud = "cloud"
    }

    /// Initialize a `MicrosoftTeamsUserIdentifierModel` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.isAnonymous = try? container.decode(Bool.self, forKey: .isAnonymous)
        self.cloud = try? container.decode(CommunicationCloudEnvironmentModel.self, forKey: .cloud)
    }

    /// Encode a `MicrosoftTeamsUserIdentifierModel` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
        if isAnonymous != nil { try? container.encode(isAnonymous, forKey: .isAnonymous) }
        if cloud != nil { try? container.encode(cloud, forKey: .cloud) }
    }
}
