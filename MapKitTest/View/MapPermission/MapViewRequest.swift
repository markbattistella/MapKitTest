//
//  MapViewRequest.swift
//  MapKitTest
//
//  Created by Mark Battistella on 17/8/21.
//

import SwiftUI

struct MapViewRequest: View {
	
	@EnvironmentObject var mapData: MapViewModel
	
	var body: some View {
		
		VStack {
			Image(systemName: "location.fill")
				.resizable()
				.frame(width: 68, height: 68)
			
			Text("Allow location to use the map")
				.padding()
				.font(.headline)
				.multilineTextAlignment(.center)
			
			Button {
				mapData.requestPermission()
			} label: {
				FullWidthButton(
					text: "Allow location",
					backgroundColour: .green,
					textColour: .white
				)
			}
		}
		.foregroundColor(.secondary)
		.frame(width: 300)
	}
}
