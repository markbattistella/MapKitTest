//
//  MapViewError.swift
//  MapKitTest
//
//  Created by Mark Battistella on 17/8/21.
//

import SwiftUI

struct MapViewError: View {
	
	var errorText: String
	
	var body: some View {
		VStack {
			Image(systemName: "location.slash.fill")
				.resizable()
				.frame(width: 68, height: 68)
			
			Text(errorText)
				.padding()
				.font(.headline)
				.multilineTextAlignment(.center)
			
			// send user to settings
			Button(action: {
				UIApplication.shared.open(
					URL(string: UIApplication.openSettingsURLString)!
				)
			}, label: {
				FullWidthButton(
					text: "Go to settings",
					backgroundColour: .red,
					textColour: .white
				)
			})
			
		}
		.foregroundColor(.secondary)
		.frame(width: 300)
	}
}
