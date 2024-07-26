//
//  ProfileView.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct UserProfileView: View {
    var profilImg: String
    var name: String
    var info: String

    var body: some View {
        HStack(spacing: 0) {
            Image(profilImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .background(Color.gray)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text(info)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
        }
        .padding()
    }
}

#Preview {
    VStack {
        UserProfileView(profilImg: "heart.fill", name: "Minerva", info: "Administrator")
        UserProfileView(profilImg: "image2", name: "Kevin Lanceplaine", info: "kevin@lanceplaine.com")
    }
}
