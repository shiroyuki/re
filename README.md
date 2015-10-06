# re: Simple Regular Expression for Go Language

This package is inspired by the module **re** from Python. It is designed for
simplicity and logically compatibility with Python's **re**.

## Usage

``` go
package myapp

import "fmt"
import "github.com/shiroyuki/re"

func DoSomething() {
    content := "..."
    pattern := Compile("Mr (?P<name>[^\\s]+) finished the assignment for this term.")
    result  := pattern.SearchOne(content)

    if result.HasAny() {
        fmt.Println("Not found.")
    }

    name := result.Key("name")

    fmt.Println("Found:", name)
}
```

## Installation

Just run ``go get github.com/shiroyuki/re``
