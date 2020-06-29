import qualified Data.Set as Set

sentence_1 = "hello set"
sentence_2 = "data structures"

main = do
	let set_of_sentence_1 = Set.fromList sentence_1
	let set_of_sentence_2 = Set.fromList sentence_2
	print(set_of_sentence_1)
	print(set_of_sentence_2)




