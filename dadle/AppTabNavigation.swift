//
//  AppTabNavigation.swift
//  dadle
//
//  Created by Glen-Mini on 2022/09/23.
//

import SwiftUI

struct AppTabNavigation: View {
    
    enum Tab {
        case home
        case test
        case test2
        case profile
    }
    
    @State private var selection: Tab = .home
    
    var body: some View {
        TabView(selection: $selection) {
            
            // MARK: Home Tab
            HomeView()
                .tabItem {
                    let homeText = Text("Home", comment: "is Home tab title")
                    Label {
                        homeText
                    } icon: {
                        Image(systemName: "house")
                    }.accessibility(label: homeText)
                }
                .tag(Tab.home)
            
            // MARK: Test Tab
            NavigationView {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
            }
            .tabItem {
                Label {
                        Text("Test", comment: "is Test Tab Title")
                    } icon: {
                        Image(systemName: "circle")
                    }
                }
                .tag(Tab.test)
            
            // MARK: Test2 Tab
            NavigationView {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.blue)
            }
            .tabItem {
                Label {
                        Text("Test2", comment: "is Test2 Tab Title")
                    } icon: {
                        Image(systemName: "square")
                    }
                }
                .tag(Tab.test2)
            
            // MARK: Profile Tab
            NavigationView {
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.yellow)
            }
            .tabItem {
                Label {
                        Text("Profile", comment: "is Profile Tab Title")
                    } icon: {
                        Image(systemName: "person")
                    }
                }
                .tag(Tab.profile)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
