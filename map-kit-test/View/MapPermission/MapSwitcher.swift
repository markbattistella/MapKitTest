//
//  MapSwitcher.swift
//  MapKitTest
//
//  Created by Mark Battistella on 3/9/21.
//

import SwiftUI
import MapKit

struct MapSwitcher: View {

	@StateObject var mapData = MapViewModel()
	
	var body: some View {
		
		// find out what weve been permitted
		switch mapData.authorizationStatus {
			
			// success: user has allowed location use
			case .authorizedAlways,
				 .authorizedWhenInUse:
				MapView()
				
			// failure: user denied permission
			case .denied:
				MapViewError(errorText: "The app does not have location permissions. Please enable it in the settings app.")
				
			// unsure
			case .notDetermined:
				MapViewRequest()
					.environmentObject(mapData)
				
			// location use is not on
			case .restricted:
				MapViewError(errorText: "Location use is restricted.")
				
			// all other
			default:
				Text("Unexpected status")
		}
	}
}
