
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            //縦スクロール
            ScrollView{
                Message("hello",Color.blue)
                Message("world",Color.yellow)
                Message("I love disney",Color.orange)
                Message("yeah!",Color.pink)
                Message("hello",Color.blue)
                Message("world",Color.yellow)
                Message("I love disney",Color.orange)
                Message("yeah!",Color.pink)
                
            }
            .frame(width: 200,height:180)
            
            
            
            //横スクロール
            ScrollView (.horizontal){
                HStack{
                    Message("hello",Color.blue)
                    Message("world",Color.yellow)
                    Message("I love disney",Color.orange)
                    Message("yeah!",Color.pink)
                }
            }
            
        }
    }
}

struct Message : View{
    let message:String
    let color:Color
    
    //表示したいメッセージと色が引数
    init(_ text:String, _ background:Color){
        self.message = text
        self.color = background
    }
    
    var body: some View{
        Text(self.message)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .kerning(1.5)
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(self.color)
            .clipShape(Capsule())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
