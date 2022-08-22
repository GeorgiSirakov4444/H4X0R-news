//
//  ContentView.swift
//  H4X0R news
//
//  Created by Georgi Sirakov on 22.08.22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: H4X0R_newsDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(H4X0R_newsDocument()))
    }
}
