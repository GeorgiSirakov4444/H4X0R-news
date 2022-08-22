//
//  H4X0R_newsApp.swift
//  H4X0R news
//
//  Created by Georgi Sirakov on 22.08.22.
//

import SwiftUI

@main
struct H4X0R_newsApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: H4X0R_newsDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
