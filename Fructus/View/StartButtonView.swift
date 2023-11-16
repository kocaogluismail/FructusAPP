//
//  StartButtonView.swift
//  Fructus
//
//  Created by İsmail Kocaoglu on 15.11.2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing : 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(Color.white)
    }
}
// MARK: - PREVIEW

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
