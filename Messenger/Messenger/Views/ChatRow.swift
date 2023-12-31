//
//  ChatRow.swift
//  Messenger
//
//  Created by Minseong Kang on 1/1/24.
//

import SwiftUI

struct ChatRow: View {
	let type: MessageType
	
	var isSender: Bool {
		return type == .sent
	}
	
	init(type: MessageType) {
		self.type = type
	}
	
    var body: some View {
			HStack {
				if isSender { Spacer() }
				
				if !isSender {
					VStack {
						Spacer()
						Circle()
							.frame(width: 45, height: 45)
							.foregroundColor(Color.pink)
					}
				}
				
				HStack{
					Text("Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.Hello World.")
						.foregroundColor(isSender ? Color.white : Color(.label))
						.padding()
				}
				.background(isSender ? Color.blue : Color(.systemGray4))
				.padding(isSender ? .leading : .trailing,
								 isSender ? UIScreen.main.bounds.width/3 : UIScreen.main.bounds.width/5)
				.cornerRadius(6)
				
				if !isSender { Spacer() }
			}
    }
}

#Preview {
	Group {
		ChatRow(type: .sent)
		ChatRow(type: .received)
	}
}
