//
//  PageIndicator.swift
//
//  Created By Dhiwise
//
//

import Foundation
import SwiftUI

/**
 PageIndicator provide a indicators duraing page update.

 # Input Variable: #

 - `numPages`: count of total indicators

 - `currentPage`: variable wrapped with @Binding. update currunt page.

 - `selectedColor`: currunt page indicator color.

 - `unSelectedColor`: remaining indicators color.

 # Example #
 ```
    @State private var curruntPage: Int = 0

    PageIndicator(numPages: 5,
                  currentPage: $curruntPage,
                  selectedColor: Color.green,
                  unSelectedColor: Color.gray,
                  spacing: 8.0)
 ```
 */

struct PageIndicator: View {
    // Constants
    private var spacing: CGFloat = 2
    private let diameter: CGFloat = 8
    private var selectedColor: Color = .green
    private var unSelectedColor: Color = .gray

    // Settings
    let numPages: Int
    @Binding var selectedIndex: Int

    init(numPages: Int, currentPage: Binding<Int>, selectedColor: Color, unSelectedColor: Color,
         spacing: CGFloat)
    {
        self.numPages = numPages
        _selectedIndex = currentPage
        self.spacing = spacing
        self.selectedColor = selectedColor
        self.unSelectedColor = unSelectedColor
    }

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: spacing) {
                ForEach(0 ..< numPages) {
                    DotIndicator(pageIndex: $0,
                                 selectedColor: selectedColor,
                                 unSelectedColor: unSelectedColor,
                                 slectedPage: self.$selectedIndex).frame(width: self.diameter,
                                                                         height: self.diameter)
                }
            }
        }
    }
}

struct DotIndicator: View {
    let minScale: CGFloat = 1
    let maxScale: CGFloat = 1.1
    let minOpacity: Double = 0.6

    let pageIndex: Int
    let selectedColor: Color
    let unSelectedColor: Color
    @Binding var slectedPage: Int

    var body: some View {
        Button(action: {
            self.slectedPage = self.pageIndex
        }) {
            Circle()
                .scaleEffect(slectedPage == pageIndex
                    ? maxScale
                    : minScale)
                .animation(.spring())
                .foregroundColor(slectedPage == pageIndex
                    ? selectedColor
                    : unSelectedColor.opacity(minOpacity))
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator(numPages: 5, currentPage: .constant(2), selectedColor: .red,
                      unSelectedColor: .green, spacing: 10)
            .previewDisplayName("Regular")
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
    }
}
