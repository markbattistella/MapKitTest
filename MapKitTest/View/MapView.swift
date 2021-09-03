//
//  MapView.swift
//  MapKitTest
//
//  Created by Mark Battistella on 3/9/21.
//

import SwiftUI

struct MapView: View {
	
	@StateObject var mapData = MapViewModel()

	var body: some View {
		
		ZStack {
			UIMapView()
				.environmentObject(mapData)
				.ignoresSafeArea()
			
			VStack(alignment: .trailing) {
				Spacer()
				
				Button {
					mapData.recentreLocation()
				} label: {
					Image(systemName: "location.fill")
						.padding()
						.background(Color(.systemBackground))
						.foregroundColor(.accentColor)
						.clipShape(Circle())
						.shadow(radius: 10)
				}
			}
		}
    }
}
