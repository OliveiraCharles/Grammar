from prod_lib.grammar import Grammar


# EX01:
vocabulary = '0123SA'
terminals = '0123'
rules = {
    'S': ['0S33', 'A'],
    'A': ['12', ''],
}
root = 'S'

# EX02:
# vocabulary = "abcSBC"
# terminals = "abc"
# rules = {
#     "S": ["aSBC", "abC"],
#     "CB": ["BC"],
#     "bB": ["bb"],
#     "bC": ["bc"],
#     "cC": ["cc"],
# }
# root = "S"

grammar = Grammar(
    vocabulary=vocabulary, rules=rules, root=root, terminals=terminals
)

sentences = grammar.sentences(3, True)
sentences.sort(reverse=True)
print(sentences)
