//
//  valentinesApp.swift
//  valentines
//
//  Created by Diana Jing on 05/02/2026.
//

import SwiftUI

@main
struct valentinesApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: valentinesDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
