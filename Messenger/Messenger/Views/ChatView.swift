//
//  ChatView.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct ChatView: View {
	@State var message: String = ""
	
    var body: some View {
			VStack {
				ScrollView(.vertical) {
					ChatRow(type: .sent)
						.padding(3)
					ChatRow(type: .received)
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
			.navigationTitle("RubberDuck")
    }
}

#Preview {
    ChatView()
}
