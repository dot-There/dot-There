//
//  BlackButton.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct BlackButton: View {
    var label: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.headline)
                .foregroundColor(.inversePrimary)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.primary)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .frame(width: 100, height: 50)
        .padding(.horizontal)
    }
}

#Preview {
    VStack {
        BlackButton(label: "SELECT") {
            print("Button tapped")
        }
        
        BlackButton(label: "HIDE") {
            print("Button tapped")
        }
        
        BlackButton(label: "UNHIDE") {
            print("Button tapped")
        }
    }
}
