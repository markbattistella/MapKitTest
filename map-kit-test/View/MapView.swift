//
//  MapView.swift
//  MapKitTest
//
//  Created by Mark Battistella on 3/9/21.
//

import SwiftUI
import MapKit

struct MapView: View {
	
	@StateObject var mapData = MapViewModel()
	
	var body: some View {
		
		ZStack {
			
			UIMapView()
				.environmentObject(mapData)
				.ignoresSafeArea()
			
			VStack(alignment: .trailing) {
				Spacer()

				HStack {
					Button {
						mapData.showOverlay.toggle()
					} label: {
						MapOverlayButton(image: "circle.dashed")
					}
					
					Button {
						mapData.recentreLocation()
					} label: {
						MapOverlayButton(image: "location.fill")
					}
				}
			}
		}
	}
}
