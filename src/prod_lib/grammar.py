class Grammar:
    def __init__(
        self, vocabulary: list, terminals: list, rules: dict, root: str
    ) -> list:
        self.vocabulary = vocabulary
        self.terminals = terminals
        self.rules = rules
        self.root = root
        self.non_terminals = list(set(vocabulary) - set(terminals))

    def is_sentence(self, sentential_form):
        non_terminals = self.non_terminals

        for non_terminal in non_terminals:
            if non_terminal in sentential_form:
                return False
        return True

    def substitution(
        self, root: str, rules: dict, verbose: bool = False
    ) -> list:
        subs = []
        for rule, vals in rules.items():
            if rule in root:
                for val in vals:
                    derivation = root.replace(rule, val)
                    subs.append(derivation)
                    if verbose:
                        print(f'{root} ({rule} --> {val}) {derivation}')

        return subs

    def sentences(self, limit: int = 3, verbose: bool = False):

        sentential_forms = self.substitution(self.root, self.rules)
        sentences = []

        while len(sentences) < limit:
            for i, sentential_form in enumerate(sentential_forms):
                if len(sentences) < limit and not self.is_sentence(
                    sentential_form
                ):
                    ramification = self.substitution(
                        sentential_form, self.rules, verbose=verbose
                    )
                    sentential_forms.extend(ramification)

                if (
                    self.is_sentence(sentential_form)
                    and sentential_form not in sentences
                ):
                    sentences.append(sentential_form)

        return sentences
