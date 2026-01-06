//
//  DSColor.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI
import UIKit

/// Centralized color palette for the app.
///
/// Use these colors instead of hard‑coding values in individual views
/// to keep styling consistent and easy to update.
public enum DSColor {
    public static let background = Color(.systemGroupedBackground)
    public static let surface = Color(.systemBackground)
    public static let card = Color(.systemGray5)
    public static let primary = Color.accentColor
    public static let secondaryText = Color.secondary
    public static let headerText = Color.white
    public static let warningText = Color.red
}
