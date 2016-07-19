//: Generics

import Foundation

public struct Array2D<Element> {

    // the underlying 1D array
    public var contents: [Element]

    // dimensions
    public let rows: Int
    public let cols: Int

    // Creates a new 2D array of given dimensions with a default value.
    public init(cols: Int, rows: Int, repeatedValue: Element) {
        self.cols = cols
        self.rows = rows
        self.contents = Array(repeating: repeatedValue, count: cols * rows)
    }

    public subscript(col: Int, row: Int) -> Element {
        get {
            return contents[cols * row + col]
        }
        mutating set {
            contents[cols * row + col] = newValue
        }
    }
    
}

let array2D = Array2D(cols: 16, rows: 9, repeatedValue: "Foo")
array2D[3, 2]
