//
//  ContentView.swift
//  weatherApp
//
//  Created by Matheus on 12/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading{
                    LoadingView()
                } else {
                    WelcomeView().environmentObject(locationManager )
                }
            }
        }
        .background(.black)
        .preferredColorScheme(.dark )
    }
}

#Preview {
    ContentView()
}
