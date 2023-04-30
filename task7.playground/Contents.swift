var age = 65

switch age {
    case 0...16:
         print("shkolota")
         print("shkolota")
    fallthrough
    case 17...21: print("student")
    case 22...50: print("some")
    case 51,52,55: print("some1")
default:break
}


var name = "Alex"

switch name {
    case "Alex" where age > 30:
        print("yes")
    case "Alex" where age > 50: print("no")
default: break
}

let tuple = (name,age)
switch tuple {
    case ("Alex", 60): print("No")
    case ("Alex", 51): print ("Yes")
    case (_, let number) where number >= 65 && number <= 70: print("Congrut")
    
    case ("Alex", _): print("Nothing")
    
    
default:break
}
/*
var optional: Int? = 5

if let a = optional {
    print("\(a) != nil")
}
*/

let point = (5,5)

switch point{
    case let (x,y) where x == y: print("x==y")
    case let (x,y) where x == -y: print("x==y")
    case let (_,y) where y < 0: print("x==y")
default: break
}


let array : [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[2]{
    case  _ as Int: print("Int")
    case  _ as Float: print("Float")
    case  _ as Double: print("Double")
default: break
}


//1
let sometext = "sadaasdksakfkak6fkaskfakfkakfakfkask.sfka12sfkakfkasfkaskfas4igjweigherihnrfsdjknf,sdjbfsfmdskfmdskfmsdkfmksdmfksdmfksmfksdmfkd?smfksdmfkmsdmfkmdskfsmdfkmsdk.fmsdkmfks3dmfksdmgjenhierhnernugrhjgnrjgnsdlkmkdsl"

sometext.count
var k = 0
var g = 0
var c = 0
var t = 0
for i in sometext{
    switch i{
    case i where i == "a" || i == "i" || i == "e" || i == "u" || i == "o": k+=1
    case i where i == "1" || i == "2" || i == "4" || i == "3" || i == "6": g+=1
    case i where i == "." || i == "," || i == "?" : c+=1
    case i where i == "q" || i == "w" || i == "r" || i == "t" || i == "p" || i == "s" || i == "d" || i == "f" || i == "g" || i == "h" || i == "j" || i == "k" || i == "l" || i == "z" || i == "x" || i == "c" || i == "v" || i == "b" || i == "n" || i == "m"     : t+=1
    default: break
    }
}
print(k)
print(g)
print(c)
print(t)


let age1 = 25

switch age1 {
    case 0...16: print("sholnik")
    case 0...25: print("student")
default:break
}


let student = (surname:"Mercer", name:"Alex", patronymic:"Some")


switch student{
    case let (_,x,_) where Array(x)[0] == "G" : print(x)
    case let (_,x,z) where Array(z)[0] == "R" : print(x,z)
    case let (y,_,_) where Array(y)[0] == "O" : print(y)
    case let (y,x,z) where Array(y)[0] != "M" || Array(x)[0] != "A" || Array(x)[0] != "S"  : print(y,x,z)
default:break
}


let sh = (8,5)

var ship1 = 0
var ship2 = 0

switch sh{
case let (x,y) where (x == 5 && y == 6) || (x == 8 && y == 3) || (x == 9 && y == 0) || (x == 8 && y == 5) : print("убил")
case (0...3, 3) : print("попал")
case (0, 6...9) : print("попал")
case (4...6, 1) : print("попал")
case (4...6, 1) : print("попал")
case (2...3, 9) : print("попал")
case (8...9, 8) : print("попал")
default: print("мимо")
}
