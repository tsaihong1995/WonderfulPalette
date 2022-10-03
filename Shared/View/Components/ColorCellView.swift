//
//  ColorCellView.swift
//  WonderfulPalette (iOS)
//
//  Created by Hung-Chun Tsai on 2022-10-02.
//

import SwiftUI

struct ColorCellView: View {
    @ScaledMetric var cellSize: CGFloat = 55
    let color: Color
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            Rectangle()
                .foregroundColor(color)
                .frame(width: cellSize, height: cellSize)
            Text(color.hexStringFromColor())
                .font(.caption2)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.gray)
        }
    }
}

struct ColorCellView_Previews: PreviewProvider {
    static var previews: some View {
        UIElementPreview(
            ColorCellView(color: .red)
        )
    }
}
