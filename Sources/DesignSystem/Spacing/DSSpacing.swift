//
//  DSSpacing.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation

/// Centralized spacing scale for the design system.
///
/// Uses a simple 4‑point base grid (`4, 8, 16, 24`) to keep margins
/// and paddings consistent across components.
public enum DSSpacing {
    public static let xs: CGFloat = 4
    public static let sm: CGFloat = 8
    public static let md: CGFloat = 16
    public static let lg: CGFloat = 24
}
