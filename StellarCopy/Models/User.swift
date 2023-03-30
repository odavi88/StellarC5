//
//  User.swift
//  StellarCopy
//
//  Created by India Doria on 3/28/23.
//

import Foundation

enum Zodiac: String, Codable {
    case pisces = "Pisces"
    case aries = "Aries"
    case sagittarius = "Sagittarius"
    case leo = "Leo"
    case scorpio = "Scorpio"
    case gemini = "Gemini"
    case taurus = "Taurus"
    case virgo = "Virgo"
    case cancer = "Cancer"
    case libra = "Libra"
    case capricorn = "Capricorn"
    case aquarius = "Aquarius"
}

struct User: Codable {
    var firstName: String
    var lastName: String
    var zodiacSign: Zodiac
}
