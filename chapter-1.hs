doubleSmallNumber x = if x > 100
  then x
  else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

concatLists = [1,2,3,4] ++ [5,6,7,8]
-- [1,2,3,4,5,6,7,8]
concatStrings = "hello" ++ " " ++ "there"
-- "hello there"
concatListofChars = ['w', 'o'] ++ ['o', 't']
-- woot

consOpString = 'A': " Smol Doge"
-- A Smol Doge
consOpList = 5:[1,2,3,4,5]
-- [5,1,2,3,4,5]
plusPlusLists = [1,2,3,4,5] ++ [5]
-- [1,2,3,4,5,5]

accessListElements x = "Kimberly Lalmansingh" !! x
-- l

listOfLists = [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]] !! 2
-- [1,2,3,4]

-- Lists are compared in lexicographical order, head first, if equal, move to second elements for comparison

compareLists1 = [3,2,1] > [2,1,0]
-- true
compareLists2 = [3,2,1] > [3,2]
-- true
compareLists3 = [3,2,1] = [3,2,1]
-- true

-- don't use on empty lists
headList = head [1,2,4,5]
-- 1
tailList = tail [1,2,3,5,6]
-- [2,3,5,6]
lastList = last [5,4,3,2]
-- 2
initList = init [2,3,4,5,6]
-- [2,3,4,5]

lengthList = length [4,3,2,1]
-- 4

nullList1 = null [1,2,3]
-- False
nullList2 = null []
-- True

reverseList = reverse [5,4,3,2,1]
-- [1,2,3,4,5]

take3 = take 3 [5,4,3,2]
-- [5,4,3]
take1 = take 1 [5,4,1]
-- [5]
take0 = take 0 [4,3,2]
-- []
take9 = take 9 [1,2,3]
-- [1,2,3]

drop3 = drop 3 [5,4,6,7]
-- [7]
drop0 = drop 0 [2,3,4]
-- [2,3,4]
drop20 = drop 20 [1,3,4]
-- []

minList = minimum [8,4,2,1,5,6]
-- 1
maxList maximum [1,9,2,3,4]
-- 9

sumList = sum [5,2,1,6,3,2,5,7]
-- 31
productList = product [6,2,1,2]
-- 24
productList0 = product [1,2,5,6,0]
-- 0

elemList1 = 4 `elem` [3,4,5,6]
-- True
elemList2 = 10 `elem` [3,4,5,6]
-- False

-- TEXAS RANGES

oneToTwenty = [1..20]
-- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
aToZ = ['a'..'z']
-- "abcdefghijklmnopqrstuvwxyz"
ktoZ = ['K'..'Z']
-- "KLMNOPQRSTUVWXYZ"
stepOf2 = [2,4..20]
-- [2,4,6,8,10,12,14,16,18,20]
stepOf3 = [3,6..20]
-- [3,6,9,12,15,18]
twentyToOne = [20, 19...1]
floatingPointRanges = [0.1, 0.3 .. 1]
-- [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]

-- cycle takes a list and cycles it into an infinite list. If you just try to display the result, it will go on forever so you have to slice it off somewhere.
cycleList = take 10 (cycle [1,2,3])
-- [1,2,3,1,2,3,1,2,3,1]

repeatList = take 5 (repeat 5)
-- [5,5,5,5,5,5,5,5,5,5]

replicateList = replicate 3 10
-- [10,10,10]

listComprehension = [x*2 | x <- [1..10]]
-- [2,4,6,8,10,12,14,16,18,20]
listComprehension2 = [x*2 | x <- [1..10], x*2 >= 12]
-- [12,14,16,18,20]
listComprehension3 = [ x | x <- [50..100], x `mod` 7 == 3]
-- [52,59,66,73,80,87,94]]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangs [7..13]
-- ["BOOM!","BOOM!","BANG!","BANG!"]
listComprehension4 = [ x*y | x <- [2,5,10], y <- [8,10,11]]
-- [16,20,22,40,50,55,80,100,110]

let nouns = ["hobo","frog","pope"]
let adjectives = ["lazy","grouchy","scheming"]
listComprehension5 = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
-- ["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchy pope","scheming hobo","scheming frog","scheming pope"]

length' xs = sum [1 | _ <- xs]
-- _ means that we don't care what we'll draw from the list anyway so instead of writing a variable name that we'll never use, we just write _. This function replaces every element of a list with 1 and then sums that up. This means that the resulting sum will be the length of our list.

let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
listComprehension6 = [ [ x | x <- xs, even x ] | xs <- xxs]
-- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]] does not flatten list

--TUPLES
-- a tuple of size two (also called a pair) is its own type, which means that a list can't have a couple of pairs in it and then a triple (a tuple of size three) [(1,2),(8,11),(4,5)]

fstTuple = fst (8,11)
-- 8
sndTuple = snd(8,11)
-- 11

zipList = zip [1,2,3,4,5] [5,5,5,5,5]
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]
zipList2 = zip [1 .. 5] ["one", "two", "three", "four", "five"]
-- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]
zipList3 = zip [5,3,2,6,2,7] ["im","a","turtle"]
-- [(5,"im"),(3,"a"),(2,"turtle")]

-- which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
