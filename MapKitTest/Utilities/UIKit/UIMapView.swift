//
//  MapView.swift
//  MapKitTest
//
//  Created by Mark Battistella on 3/9/21.
//

import SwiftUI
import MapKit

struct UIMapView: UIViewRepresentable {
	
	@EnvironmentObject var mapData: MapViewModel
	
	func makeCoordinator() -> Coordinator {
		return Coordinator()
	}
	
	func makeUIView(context: Context) -> MKMapView {
		let view = mapData.mapView
		view.showsUserLocation = true
		view.delegate = context.coordinator
		return view
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {}
	
	class Coordinator: NSObject, MKMapViewDelegate {
		
	}
}
