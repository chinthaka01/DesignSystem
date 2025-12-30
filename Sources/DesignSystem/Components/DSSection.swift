//
//  DSSection.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

public struct DSSection<Content: View>: View {
    let title: String
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
                .fill(DSColor.surface)
        )
        .padding(.horizontal, DSSpacing.md)
    }
}
