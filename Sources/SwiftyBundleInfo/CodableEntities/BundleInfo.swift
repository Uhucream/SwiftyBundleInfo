//
//  BundleInfo.swift
//
//
//  Created by Takashi Ushikoshi on 2023/11/22.
//

import Foundation

public struct BundleInfo: Codable {
    // MARK: - Categorization
    public let packageType: PackageType?
    public let applicationCategoryType: ApplicationCategory?

    // MARK: - Identification
    /// A unique identifier for a bundle. (Bundle identifier)
    public let bundleIdentifier: String?

    public let watchKitAppBundleIdentifier: String?
    public let watchKitCompanionAppBundleIdentifier: String?

    // MARK: - Naming
    public let name: String?
    public let displayName: String?
    public let spokenName: String?

    // MARK: - Bundle version
    public let version: String?
    public let shortVersionString: String?
    public let infoDictionaryVersion: String?

    @available(macOS 10, *)
    public let humanReadableCopyright: String?
}

public extension BundleInfo {
    enum PackageType: String, Codable {
        case app = "APPL"
        case framework = "FMWK"
        case bundle = "BNDL"
    }
}

public extension BundleInfo {
    enum ApplicationCategory: String, Codable {
        case business = "public.app-category.business"
        case developerTools = "public.app-category.developer-tools"
        case education = "public.app-category.education"
        case entertainment = "public.app-category.entertainment"
        case finance = "public.app-category.finance"
        case games = "public.app-category.games"
        case actionGames = "public.app-category.action-games"
        case adventureGames = "public.app-category.adventure-games"
        case arcadeGames = "public.app-category.arcade-games"
        case boardGames = "public.app-category.board-games"
        case cardGames = "public.app-category.card-games"
        case casinoGames = "public.app-category.casino-games"
        case diceGames = "public.app-category.dice-games"
        case educationalGames = "public.app-category.educational-games"
        case familyGames = "public.app-category.family-games"
        case kidsGames = "public.app-category.kids-games"
        case musicGames = "public.app-category.music-games"
        case puzzleGames = "public.app-category.puzzle-games"
        case racingGames = "public.app-category.racing-games"
        case rolePlayingGames = "public.app-category.role-playing-games"
        case simulationGames = "public.app-category.simulation-games"
        case sportsGames = "public.app-category.sports-games"
        case strategyGames = "public.app-category.strategy-games"
        case triviaGames = "public.app-category.trivia-games"
        case wordGames = "public.app-category.word-games"
        case graphicsDesign = "public.app-category.graphics-design"
        case healthcareFitness = "public.app-category.healthcare-fitness"
        case lifestyle = "public.app-category.lifestyle"
        case medical = "public.app-category.medical"
        case music = "public.app-category.music"
        case news = "public.app-category.news"
        case photography = "public.app-category.photography"
        case productivity = "public.app-category.productivity"
        case reference = "public.app-category.reference"
        case socialNetworking = "public.app-category.social-networking"
        case sports = "public.app-category.sports"
        case travel = "public.app-category.travel"
        case utilities = "public.app-category.utilities"
        case video = "public.app-category.video"
        case weather = "public.app-category.weather"
    }
}

extension BundleInfo {
    enum CodingKeys: String, CodingKey {
        case packageType = "CFBundlePackageType"
        case applicationCategoryType = "LSApplicationCategoryType"
        case bundleIdentifier = "CFBundleIdentifier"
        case watchKitAppBundleIdentifier = "WKAppBundleIdentifier"
        case watchKitCompanionAppBundleIdentifier = "WKCompanionAppBundleIdentifier"
        case name = "CFBundleName"
        case displayName = "CFBundleDisplayName"
        case spokenName = "CFBundleSpokenName"
        case version = "CFBundleVersion"
        case shortVersionString = "CFBundleShortVersionString"
        case infoDictionaryVersion = "CFBundleInfoDictionaryVersion"
        case humanReadableCopyright = "NSHumanReadableCopyright"
    }
}
