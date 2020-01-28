-- find  type of expresions
-- :: "type of"
type1 = :t 'a'
-- 'a' :: Char
type2 = :t True
-- True :: Bool

--Type Declaration
removeNonUpCase :: [Char] -> [Char]
removeNonUpCase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
-- param, param, param, return type
addThree x y z = x + y + z

-- Common Types --
-- Int
-- Integer
-- Float
-- Double
-- Bool
-- Char
-- Variable (of any type)

-- Functions that use type variables --> Polymorphic Functions
-- class contraint =>

-- Type Classes

-- Eq: supports equality testing
eq_type_class1 = 5 == 5
-- True
eq_type_class2 = 5 /= 5
-- False
eq_type_class3 = 'a' == 'a'
-- True

-- Ord: ypes whose values can be put in some order
ord_type_class1 = "Abrakadabra" < "Zebra"
-- True
ord_type_class2 = "Abrakadabra" `compare` "Zebra"
-- LT
ord_type_class3 = 5 >= 2
-- True
ord_type_class4 = 5 `compare` 3
-- GT
ord_type_class5 = 'b' > 'a'
-- True

-- Show: values can be represented as strings
show_type_class1 = show 3
-- "3"
show_type_class2 = show 5.666
-- "5.666"
show_type_class3 = show True
-- "True"

-- Read: takes a string and returns a value whose type is an instace of Read
read_type_class1 = read "True" || False
-- True
read_type_class2 = read "8.2" + 3.8
-- 12.0
read_type_class3 = read "5" - 2
-- 3
read_type_class4 = read "[1,2,3,4]" ++ [3]
-- [1,2,3,4,3]
read_type_class5 = read "4"
-- Error - add type signature
read_type_class6 = read "5" :: Int
-- 5
read_type_class7 = read "5" :: Float
-- 5.0
read_type_class8 = (read "5" :: Float) * 4
-- 20.0
read_type_class9 = read "[1,2,3,4]" :: Int
-- [1,2,3,4]
read_type_class10 = read "(3, a)" :: (Int, Char)
-- (3, 'a')

-- Enum: sequentially ordered types, values can be enumerated
enum_type_class1 = ['a'..'e']
-- "abcde"
enum_type_class2 = [LT .. GT]
-- [LT,EQ,GT]
enum_type_class3 = [3 .. 5]
-- [3,4,5]
enum_type_class4 = succ "B"
-- 'C'

-- Bounded: instances have an upper bound and a lower bound
bounded_type_class1 = minBound :: Int
-- -2147483648
bounded_type_class2 = maxBound :: Char
-- '\1114111'
bounded_type_class3 = maxBound :: Bool
-- True
bounded_type_class4 = minBound :: Bool
-- False
bounded_type_class5 = maxBound :: (Bool, Int, Char) -- tuples whose components are all instances of Bounded are also considered to be instances of Bounded themselves
-- (True, 2147483647, '\1114111')

-- Num: instances can act like numbers (Int, Integer, Float, or Double)
num_class_type1 = :t 20
-- 20 :: (Num t) => t
-- To be an instance of Num, a type must already be in Show and Eq type classes

-- Floating: includes the Float and Double types which are used to store floating point numbers
-- sin
-- cos
-- sqrt

-- Integral: includes only integral (whole) numbers - Int and Integer types
integral_type_class1 = fromIntegral :: (Num b, Integral a) => a -> b
integral_type_class2 = fromIntegral (length [1,2,3,4]) + 3.2
-- 7.2 -note: an errors occurs if not using from integral because we tried adding an Int to a floating point number



