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

    public init(name: String, size: CGFloat = 44) {
        self.name = name
        self.size = size
    }

    public var body: some View {
        Circle()
            .fill(DSColor.primary.opacity(0.15))
            .frame(width: size, height: size)
            .overlay(
                Text(String(name.prefix(1)))
                    .font(DSTextStyle.headline)
                    .foregroundColor(DSColor.primary)
            )
    }
}
