//  Copyright (c) 2025 resans0725
//  This software is released under the MIT License.
//  See LICENSE file for details.

import Testing
import SwiftUI
import BubbleAnimationButton
@testable import BubbleAnimationButton

@MainActor @Test
func testAnimationApplied() {
    let button = BubbleAnimationButton(
        options: [BubbleOption(icon: "star.fill", color: .yellow)],
        mainButtonColor: .blue,
        optionSize: 50,
        spacing: 10,
        animation: .easeInOut(duration: 0.3),
        action: { _ in }
    )

    assert(button.animation == Animation.easeInOut(duration: 0.3), "Animation should be easeInOut")
}
