//
//  ProfileImgView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/24.
//

import SwiftUI
import URLImage

struct ProfileImgView: View {
    
    var imageUrl: URL
    
    var body: some View {
        
        
        URLImage(imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 60, height: 60)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
        
    }
}

#Preview {
    
//    let url = URL(string: "https://randomuser.me/api/portraits/women/67.jpg")!
    
    ProfileImgView(imageUrl: URL(string: "https://randomuser.me/api/portraits/women/67.jpg")!)
}
