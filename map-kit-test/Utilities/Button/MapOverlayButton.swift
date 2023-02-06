//
//  MapOverlayButton.swift
//  MapKitTest
//
//  Created by Mark Battistella on 4/9/21.
//

import SwiftUI

struct MapOverlayButton: View {
	let image: String
	var body: some View {
		Image(systemName: image)
			.padding()
			.background(Color(.systemBackground))
			.foregroundColor(.accentColor)
			.clipShape(Circle())
			.shadow(radius: 10)
	}
}
