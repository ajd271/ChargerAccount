//
//  SideMenuOptionModel.swift
//  OnboardingFlow
//
//  Created by Jonathan Duval on 8/31/24.
//

import Foundation
import SwiftUI


enum SideMenuOptionsModel: Int, CaseIterable {
    case y2024
    case may24
    case april24
    case y2023
    case y2022
    case december22
    case november22
    
    var title: String {
        switch self {
        case .y2024:
            return "2024"
        case .may24:
            return "May 2024"
        case .april24:
            return "April 2024"
        case .y2023:
            return "2023"
        case .y2022:
            return "2022"
        case .december22:
            return "December 2022"
        case .november22:
            return "November 2022"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .y2024:
            return ""
        case .may24:
            return "doc"
        case .april24:
            return "doc"
        case .y2023:
            return ""
        case .y2022:
            return ""
        case .december22:
            return "doc"
        case .november22:
            return "doc"
        }
    }
}

extension SideMenuOptionsModel: Identifiable, Hashable {
    var id: Int { return self.rawValue }
}
