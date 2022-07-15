//
//  DetailView.swift
//  HackerNews
//
//  Created by Chithian on 16/2/21.
//

import SwiftUI


struct DetailWebsiteView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWebsiteView(url: "https://www.google.com")
    }
}





