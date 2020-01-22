import Cocoa

var str = "Hello, playground"

class BoardLocation {
  let row: Int, column: Int

  init(row: Int, column: Int) {
    self.row = row
    self.column = column

    let closure = {
      print(self.row)
    }
  }
}
