//
//  ContentView.swift
//  HackerNews
//
//  Created by Chithian on 16/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailWebsiteView(url: post.url )) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                
                
            }
            .navigationTitle("Hacker News")
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello World"),
//    Post(id: "3", title: "Hello"),
//    Post(id: "4", title: "Hello"),
//    Post(id: "5", title: "Hello")
//]
