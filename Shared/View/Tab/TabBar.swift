//
//  TabBar.swift
//  TestingYourLife (iOS)
//
//  Created by MIN on 2021/08/16.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = "HomeView"
    
    var body: some View {
        
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            
            TabView(selection: $current){
                
                HomeView()
                    .tag("HomeView")
                
                TastingView()
                    .tag("TastingView")
                
                SettingView()
                    .tag("SettingView")
                    
            }
            
            HStack(spacing: 0){
                
                TabButton(title: "HomeView", image: "house", selected: $current)
                
                Spacer(minLength: 0)
                
                TabButton(title: "TastingView", image: "plus", selected: $current)
                
                Spacer(minLength: 0)
                
                TabButton(title: "SettingView", image: "gear", selected: $current)
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(Color.white)
            .clipShape(Capsule())
            
            // 음영주기
            .shadow(color: Color.black.opacity(0.10), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.10), radius: 5, x: -5, y: -5)
            .padding(.horizontal, 50)
            
            
        }
    }
            
    
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
