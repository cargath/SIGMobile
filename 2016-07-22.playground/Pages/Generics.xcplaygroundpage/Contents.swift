//: Generics

import Foundation

public struct Array2D<T> {

    // the underlying 1D array
    public var contents: [T]

    // dimensions
    public let rows: Int
    public let cols: Int

    // Creates a new 2D array of given dimensions with a default value.
    public init(cols: Int, rows: Int, repeatedValue: T) {
        self.cols = cols
        self.rows = rows
        self.contents = Array(count: cols * rows, repeatedValue: repeatedValue)
    }

    public subscript(col: Int, row: Int) -> T {
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
