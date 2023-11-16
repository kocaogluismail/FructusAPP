//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by İsmail Kocaoglu on 15.11.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
          Text(labelText.uppercased()).fontWeight(.bold)
          Spacer()
         Image(systemName: labelImage)
    }
  }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
