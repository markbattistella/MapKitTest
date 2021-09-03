//
//  FullWidthButton.swift
//  MapKitTest
//
//  Created by Mark Battistella on 3/9/21.
//

import SwiftUI

struct FullWidthButton: View {
	
	let text: String
	let backgroundColour: Color
	let textColour: Color
	
    var body: some View {
		Text( text )
			.padding()
			.frame(maxWidth: 300, idealHeight: 50)
			.background( backgroundColour )
			.foregroundColor( textColour )
			.cornerRadius(12)
    }
}
