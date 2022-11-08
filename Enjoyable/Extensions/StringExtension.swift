//
//  StringExtension.swift
//  Enjoyable
//
//  Created by Otabek Tuychiev on 08/11/2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
