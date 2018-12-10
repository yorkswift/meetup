import Foundation

struct Present {
    var contents = ""
}

struct GiftWrappedBox {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
    var present : Present?
    func open(){
        
        guard let present = self.present else {
            print("Empty")
            return
        }
        print(present.contents)
        
    }
    
    mutating func wrap(present :Present){
        self.present = present
    }
}


var 🎁 = GiftWrappedBox(width: 4.0, height: 5.0, depth: 2.0, present: nil)
🎁.volume
🎁.open()

🎁.wrap(present: Present(contents: "🚂"))

🎁.open()

