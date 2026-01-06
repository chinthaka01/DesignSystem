//
//  DSCard.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

/// Reusable card container used to group related content.
///
/// Applies consistent padding, max‑width, alignment, corner radius,
/// and background color from the design system.
public struct DSCard<Content: View>: View {
    
    /// The content rendered inside the card.
    let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        content
            .padding(DSSpacing.md)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(DSColor.card)
            )
    }
}
