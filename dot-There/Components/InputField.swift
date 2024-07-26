//
//  InputField.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct InputField: View {
    var icon: String?
    var label: String
    var action: () -> Void
    var showChevron: Bool = false
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.blue)
                }
                
                Text(label)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Spacer()
                
                if showChevron {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.lightGray)
                }
            }
            .padding()
            .background(Color.boxBG)
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

#Preview {
    InputField(icon: "heart.fill", label: "Start Date", action: {
        print("ButtonTapped")
    }, showChevron: true)
}
