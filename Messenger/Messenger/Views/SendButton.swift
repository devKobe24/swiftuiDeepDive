//
//  SendButton.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct SendButton: View {
	@Binding var text: String
	
    var body: some View {
			Button(action: {
				self.sendMessage()
			}, label: {
				Image(systemName: "paperplane")
					.font(.system(size: 33))
					.aspectRatio(contentMode: .fit)
					.frame(width: 55, height: 55)
					.foregroundColor(.white)
					.background(.blue)
					.clipShape(Circle())
			})
    }
	
	func sendMessage() {
		guard !text.isEmpty else {
			return
		}
	}
}

#Preview {
	SendButton(text: Binding<String>.constant(""))
}
