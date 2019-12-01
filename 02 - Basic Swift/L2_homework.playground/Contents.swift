// Домашнее задание

// MARK: Исправьте код, чтобы не было ошибки

let optional: Int? = 7
let nonOptional: Int = optional!

// MARK: Найдите ошибки

var name: String? = "Test"
//var age: Int = nil неопциональный тип данных не может быть nil
let distance: Float = 26.7
var middleName: String? = nil

// MARK: Полностью разверните number разными способами

let number: Int??? = 10

// 1
number!!!

// 2
if let number1 = number{
    if let number2 = number1{
        if let number3 = number2{
            print(number3)
        }
    }
}


// MARK: Замените значение 15 на 17 в массиве

 var numbers = [4, 8, 15, 16, 23, 42]
 numbers[2] = 17

// MARK: Найдите ошибки

let array1 = [Int]()
//let array2 = [] Не объявлен тип данных массива
let array3: [String] = []

let array4 = [1, 2, 3]
print(array4[0])
//print(array4[5]) В массиве нет элемента с индексом 5
array4[1...2]
//array4[0] = 4
//array4.append(4) Нельзя изменять или добавлять элементы к константе

var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
//array5[0] = "Six" Нельзя добавить строку к массиву целых чисел
//array5 += 6
for item in array5 { print(item) }

//let dict1: [Int, Int] = [:] Тип данных в словаре объявляется в формате [Int: Int]
//let dict2 = [:] Не указан тип
let dict3: [Int: Int] = [:]

let dict4 = ["One": 1, "Two": 2, "Three": 3]
//dict4[1] Нельзя обратиться к элементу словаря по значению ключа
dict4["One"]
//dict4["Zero"] = 0 Нельзя изменить константу
//dict4[0] = "Zero" тип данных должен соответствовать [String: Int]

var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil

// MARK: Найдите деревенских, но не домашних животных из данных множеств:

 let houseAnimals: Set = ["🐶", "🐱"]
 let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]

 let onlyFarmAnimals = farmAnimals.subtracting(houseAnimals)

// MARK: Сделайте из этого словаря новый словарь со средними рейтингами приложений

 let appRatings = [
     "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
     "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
     "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
 ]

 let awgAppRatings = appRatings.mapValues({Float($0.reduce(0,+))/Float($0.count)})

// MARK: Получите строку с названиями приложений из предыдущего задания с рейтингом выше 3

var bestApp = awgAppRatings.filter { $0.value > 3 }

// MARK: Напишите функцию, которая добавляет перед началом переданной строки "Привет, " и выводит результат в консоль

func helloPlusString(_ line: String) -> Void {
    print("Привет,", line)
}

// MARK: Напишите функцию, которая принимает имя и фамилию в виде параметров и выводит строку приветствия в консоль

func politeFunc(name: String, surname: String) -> Void {
    print("Приветствую тебя, \(name) \(surname)")
}

// MARK: Напишите функцию, которая принимает переменное число параметров типа int и возвращает их сумму

func sumCalculation(_ numbers: Int...) -> Int {
    var result: Int = 0
    for number in numbers{
        result += number
    }
    return result
}

// MARK: Напишите замыкание, которое печатает строку "Привет" и присвойте это замыкание переменной. Вызовите замыкание

let stringClosure = {print("Привет")}
stringClosure()

// MARK: Напишите замыкание, которое принимает 2 числа и возвращает их сумму. Присвойте это замыкание переменной и вызовите его

var sumOfSomeFloats = {(_ firstValue: Float, _ secondValue: Float) in return (firstValue+secondValue)}
sumOfSomeFloats(5.6, 6.2)

// MARK: Отсортируйте массив [16, 8, 15, 42, 4, 23] по убыванию

var sourceArray = [16, 8, 15, 42, 4, 23]
sourceArray.sort { $0 > $1 }

// MARK: Из массива [16, 8, 15, 42, 4, 23] сделайте новый массив с числами больше 10

var secondSourceArray = [16, 8, 15, 42, 4, 23]
var graterTenArray = secondSourceArray.filter { $0 > 10 }

// MARK: Напишите функцию, которая принимает замыкание в качестве параметра и вызывает его

func funcWithClosureParam(_ closure: (Int, Int) -> Int = {(_ x: Int, _ y: Int) in return (x+y)} ){
    closure(2, 5)
}

// MARK: Напишите функцию, которая возвращает замыкание, которое что-то печатает в консоль

func printWithClosure(_ text: String) {
    let output = {(_ text: String) in return print(text)}
    return output(text)
}

// MARK: Напшите функцию, которая повтораяет переданное замыкание заданное число раз

func multiClosure(closure: (Double, Double) -> Double, quantity: Int){
    var count = quantity
    while count>0{
        print(closure(0.5, 5.0))
        count -= 1
    }
}

// MARK: Уберите утечку памяти

class Employee { weak var computer: Computer?}
class Computer { weak var employee: Employee?}
var employee: Employee? = Employee()
var computer: Computer? = Computer()
employee?.computer = computer
computer?.employee = employee

// MARK: Уберите утечку памяти

class Counter {
    var value = 0
    lazy var increase = {
        self.value += 1
    }
}

// MARK: Напишите функцию, которая будет принимать строку и возвращать true, если она есть в любом из двух массивое, либо false в противном случае

let animals1 = ["dog", "cat", "bird", "pig"]
let animals2 = ["turtle", "snake", "lizard", "shark"]

func searchItem(text: String) -> Bool{
    if animals1.contains(text){
        return true
    }
    else if animals2.contains(text){
        return true
    }
    else{
        return false
    }
}

// MARK: Напишите функцию, которая считает факториал

func factorial(_ n: Int) -> Int{
    if n == 0{
        return 1
    }
    return n * factorial(n-1)
}

//MARK: Напишите функцию, которая будет считать сколько раз в массиве встречается цифра 2

func count2(_ arr: Array<Int>) -> Int{
    var count: Int = 0
    for item in arr{
        if item == 2{
            count += 1
        }
    }
    return count
}

// MARK: Напишите функцию, которая будет проверять есть ли среди первых 3 элементов массива цифра 2

func first3(_ arr: Array<Int>) -> Bool{
    if arr[1...3].contains(2){
        return true
    }
    else{
        return false
    }
}

// MARK: Напишите функцию, которая будет считать количество раз, которое две цифры 5 встречаются рядом в массиве

func doubleFive(_ arr: Array<Int>) -> Int{
    var total: Int = 0
    for i in 0 ..< arr.count{
        if arr[i] == 5 && arr[i+1] == 5{
            total += 1
        }
    }
    return total
}
