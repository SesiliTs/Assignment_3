//შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).


var numbersArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8]

//ესეც მუშაობდა მარა მერე უფრო მარტივი გამოსავალი ვნახე

//numbersArray.append(numbersArray[0])
//numbersArray.remove(at: 0)
//numbersArray.insert((numbersArray[numbersArray.count - 2]), at: 0)
//numbersArray.remove(at: (numbersArray.count - 2))
//print(numbersArray)

var firstElement = numbersArray[0]
numbersArray[0] = numbersArray[numbersArray.count - 1]
numbersArray[numbersArray.count - 1] = firstElement
print(numbersArray)


//შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).


var fullArray = [1, 2, 3, 4, 5, 6, 7]

if fullArray.count % 2 == 0 {
    fullArray.removeLast(fullArray.count / 2)
} else {
    fullArray.removeLast(fullArray.count / 2 + 1)
}

print(fullArray)


//შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.


let intArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var oddArray: [Int] = []
var evenArray: [Int] = []

for i in intArray {
    if i % 2 == 0 {
        evenArray.append(i)
    } else {
        oddArray.append(i)
    }
}

print(oddArray)
print(evenArray)


//შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.


var doublesArray: [Double] = [1.2, 3.4, 5.5, 7.8, 10.5]
var highestDouble: Double = 0

for i in doublesArray {
    if i > highestDouble {
        highestDouble = i
    }
}

print(highestDouble)


//შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.

var firstArray = [8, 4, 9, 9, 0, 2]
var secondArray = [1, 0, 9, 2, 3, 7, 0, 1]

var thirdArray = firstArray + secondArray

//for i in 0...(thirdArray.count - 2) {
//    if thirdArray[i] > thirdArray[i + 1] {
//        var temp = thirdArray[i]
//        thirdArray[i] = thirdArray[i + 1]
//        thirdArray[i + 1] = temp
//    }
//}
//
//print(thirdArray)

// ზედა ამოხსნას ჩემს ლოგიკაში უნდა ემუშავა მარა ვერ ვხვდები რატო ურევს, ნუ ბოლომდე გამართულად ვერა, ბოლო ინდექსს რო მიმწვდარიყო და რეინჯი 0...(thirdArray.count - 1) ყოფილიყო index not in range ერორამდე მივდიოდი მარა მაგაზე მერე ვიდარდებდი ეს ლოგიკა რო გამოსულიყო :დ

for i in 0..<thirdArray.count {
    for j in 0..<thirdArray.count {
        var temp = 0
        if thirdArray[i] < thirdArray[j] {
            temp = thirdArray[i]
            thirdArray[i] = thirdArray[j]
            thirdArray[j] = temp
        }
    }
}
print(thirdArray)


//შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.


let someString = "i am groot"
var setFromString: Set<Character> = []

for char in someString {
    setFromString.insert(char)
}

//აქ გვიან ვნახე რო Set(someString) შემეძლო მარა ფორ ციკლზეც ვივარჯიშე :დ

print(setFromString.count == someString.count ? "სტრინგში ყველა ასო უნიკალურია" : "სტრინგში ასოები არ არის უნიკალური")


//შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.


let firstSet: Set<Int> = [1, 3, 15, 7, 31, 45, 8]
let secondSet: Set<Int> = [2, 3, 46, 7, 24, 11, 8]

print(firstSet.intersection(secondSet))
print(firstSet.union(secondSet))
print(firstSet.subtracting(secondSet))
print(secondSet.subtracting(firstSet))


//შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.

let cats: Set<String> = ["Mia", "Botora", "Nala"]
let pets: Set<String> = ["Mia", "Kendy", "Botora", "Nala", "Stephi"]

print(cats.isSubset(of: pets) ? "პირველი სიმრავლე არის მეორეს ქვესიმრავლე" : "პირველი სიმრავლე არ არის მეორეს ქვესიმრავლე")



//შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

var myArray = [1, 2, 3, 4, 5, 5, 6, 7]

print(myArray.count == Set(myArray).count ? "array-ში ყველა ელემენტი განსხვავებულია" : "array შეიცავს მსგავს ელემენტებს")



//შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
//

let tvShows = [
    "Fleabag": 8,
    "Leftovers": 10,
    "Shameless": 8,
    "Attack on Titan": 10,
    "Game of Thrones": 7,
    "Gravity Falls": 10,
    "Sons of Anarchy": 9
]

var sumOfValues = 0

for rating in tvShows.values {
    sumOfValues += rating
}

print("საშუალო რეიტინგი არის: \(sumOfValues / tvShows.count)")
