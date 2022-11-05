//
//  Aftereight2App.swift
//  Aftereight2

import SwiftUI

@main
struct Aftereight2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LogoAnimationView()
        }
    }
}
