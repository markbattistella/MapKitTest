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
		Coordinator()
	}
	
	func makeUIView(context: Context) -> MKMapView {
		let view = mapData.mapView
		view.showsUserLocation = true
		view.delegate = context.coordinator
		return view
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let overlays = uiView.overlays
		if( mapData.showOverlay ) {
			uiView.addOverlay(
				MKCircle(center: mapData.region.center, radius: 5000)
			)
		} else {
			uiView.removeOverlays(overlays)
		}
	}
	
	class Coordinator: NSObject, MKMapViewDelegate {
		func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
			if let overlay = overlay as? MKCircle {
				let circleRenderer = MKCircleRenderer(circle: overlay)
				circleRenderer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
				circleRenderer.strokeColor = .black
				circleRenderer.lineWidth = 1
				return circleRenderer
			}
			return MKOverlayRenderer(overlay: overlay)
		}
	}
}
