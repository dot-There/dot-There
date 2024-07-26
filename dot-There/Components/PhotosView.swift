//
//  PhotosView.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct PhotoView: View {
    var photos: [Image]
    var photoCount: Int

    let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]

    var body: some View {
        VStack {
            // 사진 목록
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(photos.indices, id: \.self) { index in
                    photos[index]
                        .resizable()
                        .scaledToFill()
                        .frame(width: (UIScreen.main.bounds.width - 4) / 3, height: (UIScreen.main.bounds.width - 4) / 3)
                        .cornerRadius(6)
                        .clipped()
                }
            }

            // 사진 갯수 레이블
            Text("\(photoCount) Photos")
                .foregroundColor(.gray)
                .padding(.top, 32)
        }
    }
}

#Preview {
    PhotoView(
        photos: [
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill"),
            Image(systemName: "rectangle.fill")
        ],
        photoCount: 9
    )
}
