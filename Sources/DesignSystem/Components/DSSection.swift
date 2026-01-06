//
//  DSSection.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

/// Reusable titled section container.
///
/// Displays a section title using the design system headline style
/// and wraps its content inside a padded, card‑like background.
public struct DSSection<Content: View>: View {
    
    /// Text shown as the section header.
    let title: String
    
    /// The content rendered below the section title.
    let content: Content

    public init(
        title: String,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.content = content()
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.sm) {
            Text(title)
                .font(DSTextStyle.headline)

            content
        }
        .padding(DSSpacing.md)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(DSColor.card)
        )
        .padding(.horizontal, DSSpacing.md)
    }
}
