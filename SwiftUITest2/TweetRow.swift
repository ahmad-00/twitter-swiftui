//
//  TweetRow.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI

struct TweetRow: View {
    
    var tweet: Status
    
    var body: some View {
        ZStack {
            Color.init(UIColor.backColor()).ignoresSafeArea()
            HStack(alignment: .top) {
                
//                Image("website").resizable().frame(width: 60, height: 60, alignment: .center).clipShape(Circle())
                ImageHolder(url: tweet.user?.profileImageURLHTTPS ?? "").frame(width: 60, height: 60, alignment: .center).clipShape(Circle())
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                            Text(tweet.user?.name ?? "").font(.headline).lineLimit(1).foregroundColor(.white)
                            Text("@\(tweet.user?.screenName ?? "")").font(.subheadline).lineLimit(1).foregroundColor(.white)
                        }.frame(height: 60)
                    Text(tweet.text ?? "").font(.footnote).padding(.top, 5).lineLimit(3).foregroundColor(.white)
                    GeometryReader { geometry in
                        Image("website").resizable().scaledToFill().frame(maxWidth: geometry.size.width, minHeight: 150, maxHeight: 150, alignment: .center).cornerRadius(6).aspectRatio(contentMode: .fill)
                    }.frame(height: 170, alignment: .center)
                    
                    HStack {
                        Button(action: {
                            print("Like")
                        }, label: {
                            Image("like").renderingMode(.template).resizable().scaledToFit().padding(.all, 4).foregroundColor(.white)
                        }).buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Retweet")
                        }, label: {
                            Image("retweet").renderingMode(.template).resizable().scaledToFit().padding(.all, 4).foregroundColor(.white)
                        }).buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("Forward")
                        }, label: {
                            Image("forward").renderingMode(.template).resizable().scaledToFit().padding(.all, 4).foregroundColor(.white)
                        }).buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        
                        Text("2 comments").font(.footnote).foregroundColor(.white)
                        
                    }.frame(height: 28, alignment: .center)
                    
                }
            }.padding(.trailing, 0)
        }.listRowBackground(Color.init(UIColor.backColor()))
    }
}

//struct TweetRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRow()
//    }
//}
