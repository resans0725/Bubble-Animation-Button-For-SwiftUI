// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct BubbleAnimationButton: View {
    let options: [BubbleOption]
    let action: (Int) -> Void
    let mainButtonColor: Color
    let optionSize: CGFloat
    let spacing: CGFloat
    let animation: Animation
    
    @State private var isExpanded = false
    
    public init(
        options: [BubbleOption],
        mainButtonColor: Color = .blue,
        optionSize: CGFloat = 50,
        spacing: CGFloat = 10,
        animation: Animation = .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0),
        action: @escaping (Int) -> Void
    ) {
        self.options = options
        self.mainButtonColor = mainButtonColor
        self.optionSize = optionSize
        self.spacing = spacing
        self.animation = animation
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            ForEach(options.indices, id: \..self) { index in
                if isExpanded {
                    BubbleButton(option: options[index], index: index, action: action, size: optionSize)
                        .offset(y: CGFloat(index + 1) * -(optionSize + spacing))
                        .transition(.scale)
                        .animation(animation, value: isExpanded)
                }
            }
            
            Button(action: {
                withAnimation(animation) {
                    isExpanded.toggle()
                }
            }) {
                Image(systemName: isExpanded ? "xmark" : "plus")
                    .foregroundColor(.white)
                    .frame(width: optionSize, height: optionSize)
                    .background(mainButtonColor)
                    .clipShape(Circle())
                    .shadow(radius: 4)
            }
        }
    }
}

struct BubbleButton: View {
    let option: BubbleOption
    let index: Int
    let action: (Int) -> Void
    let size: CGFloat
    
    var body: some View {
        Button(action: { action(index) }) {
            Image(systemName: option.icon)
                .foregroundColor(.white)
                .frame(width: size, height: size)
                .background(option.color)
                .clipShape(Circle())
                .shadow(radius: 4)
        }
    }
}
