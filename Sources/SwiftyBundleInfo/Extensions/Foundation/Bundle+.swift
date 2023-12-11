//
//  Bundle+.swift
//
//
//  Created by Takashi Ushikoshi on 2023/11/25.
//

import DictionaryCoder
import Foundation

public extension Bundle {
    typealias Info = BundleInfo
}

public extension Bundle {
    /// A decoded struct containing bundle information
    var info: Info? {
        get {
            guard let infoDictionary else { return nil }

            let dictionaryDecoder: DictionaryDecoder = .default

            return try? dictionaryDecoder.decode(BundleInfo.self, from: infoDictionary)
        }
    }

    var localizedInfo: BundleInfo? {
        get {
            guard let localizedInfoDictionary else { return nil }

            let dictionaryDecoder: DictionaryDecoder = .default

            return try? dictionaryDecoder.decode(BundleInfo.self, from: localizedInfoDictionary)
        }
    }
}
