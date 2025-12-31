//
//  DSAvatar.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

public struct DSAvatar: View {
    let name: String
    let size: CGFloat
    let font: Font

    public init(name: String, size: CGFloat = 44, font: Font = DSTextStyle.headline) {
        self.name = name
        self.size = size
        self.font = font
    }

    public var body: some View {
        Circle()
            .fill(DSColor.primary.opacity(0.15))
            .frame(width: size, height: size)
            .overlay(
                Text(String(name.prefix(1)))
                    .font(font)
                    .foregroundColor(DSColor.primary)
            )
    }
}
