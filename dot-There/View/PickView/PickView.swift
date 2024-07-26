//
//  PickView.swift
//  dotThere
//
//  Created by 김한빛 on 7/24/24.
//

import SwiftUI

struct PickView: View {
    var body: some View {
        ZStack {
            Color.thereBG.ignoresSafeArea()
            
            Text("PickView")
        }
        .navigationTitle("Pick")
    }
}

#Preview {
    PickView()
}
