//
//  DSTextStyle.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

/// Centralized text styles for the design system.
///
/// Wraps common `Font` configurations so typography stays consistent
/// across features and can be adjusted in one place.
public enum DSTextStyle {
    
    /// Large, bold text used for big avatars or prominent initials.
    public static let largeAvatar = Font.title.bold()
    
    /// Bold title style for primary headings and screen titles.
    public static let title = Font.title2.bold()
    
    /// Headline style for section headers and important labels.
    public static let headline = Font.headline
    
    /// Default body style for primary content text.
    public static let body = Font.body
    
    /// Caption style for secondary or supporting information.
    public static let caption = Font.caption
}
