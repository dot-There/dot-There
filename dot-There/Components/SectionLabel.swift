//
//  SectionLabel.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct SectionLabel: View {
    var text: String

    var body: some View {
        Text(text.uppercased())
            .font(.footnote)
            .foregroundColor(.gray)
            .padding(.horizontal)
            .padding(.vertical, 6)
            .background(Color.clear)
    }
}

#Preview {
    VStack {
        SectionLabel(text: "POST")
        SectionLabel(text: "Map")
        SectionLabel(text: "Setting")
    }
}
