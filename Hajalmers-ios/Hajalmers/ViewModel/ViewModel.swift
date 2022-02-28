

import SwiftUI
import UIKit
import Combine
import WebKit

class ViewModel: ObservableObject {
    @Published var showMenuItem1 = true
    @Published var showMenuItem2 = true
    @Published var showMenuItem3 = true 
    @Published var showMenuItem4 = true
    @Published var backgroundBlack = true
    @Published var selectedSegment: Int = 0
    

    /// Functions for Action Sheet Menu Animation

    func showMenu() {
        
        withAnimation {
            self.backgroundBlack.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            withAnimation {
                self.showMenuItem3.toggle() }})
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            withAnimation {
                self.showMenuItem2.toggle()}})
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            withAnimation {
                self.showMenuItem1.toggle()
            }})}
    
    /// Functions for PDF Segment
    func containedView(index: Int) -> WebView {
        switch index {
        case 0:
            return WebView(request: openColor())
        case 1:
            return WebView(request: openFront())
        case 2:
            return WebView(request: openBack())
        default:
            return WebView(request: openColor())}
        
        /// Functions by PDF Segment

        
    }
    func openBack() -> URLRequest {
        let path = Bundle.main.path(forResource: "back", ofType: "jpg")
        let url = URL(fileURLWithPath: path!)
        return URLRequest(url: url)}
    
    func openFront() -> URLRequest {
        let path = Bundle.main.path(forResource: "front", ofType: "jpg")
        let url = URL(fileURLWithPath: path!)
        return URLRequest(url: url)}
    
    func openColor() -> URLRequest {
        let path = Bundle.main.path(forResource: "color", ofType: "jpg")
        let url = URL(fileURLWithPath: path!)
        return URLRequest(url: url)}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


/// Functions for PDF Webview

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context)-> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context)  {
        uiView.load(request)
        
    }}
