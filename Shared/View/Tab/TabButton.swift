//
//  TabButton.swift
//  TestingYourLife (iOS)
//
//  Created by MIN on 2021/08/16.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    var image : String
    @Binding var selected : String
    
    var body: some View {


        Button(action: {
            
            withAnimation(.spring()){selected = title}
            
        }) {

            Image(systemName: image) // 기존 이미지로 사용
                .resizable()
                .renderingMode(.template)
                .frame(width: 20, height: 20)
                .foregroundColor(selected == title ? .white : .gray)

        
        }
        .padding(.vertical)
        .padding(.horizontal)
        .background(Color.black.opacity(selected == title ? 0.7 : 0))
        .clipShape(Capsule())

        
        
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
