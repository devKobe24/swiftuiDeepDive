//
//  ChatView.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct ChatView: View {
	@State var message: String = ""
	let otherUsername: String
	
	init(otherUsername: String) {
		self.otherUsername = otherUsername
	}
	
    var body: some View {
			VStack {
				ScrollView(.vertical) {
					ChatRow(text: "Hello World", type: .sent)
						.padding(3)
					ChatRow(text: "Hello World", type: .received)
						.padding(3)
				}
				// Field, send button
				HStack {
					TextField("Message...", text: $message)
						.padding()
						.background(Color(.secondarySystemBackground))
						.cornerRadius(7)
					
					SendButton(text: $message)
				}
				.padding()
			}
			.navigationTitle(otherUsername)
    }
}

#Preview {
	ChatView(otherUsername: "RubberDuck")
}
