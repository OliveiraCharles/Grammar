# Gramática

Este projeto tem como objetivo principal por em prática os conceitos aprendidos em aula na matéria de Linguagens Formais e compiladores.

Dado:

$$G=(V_1*\Sigma_1*P_1*S)$$

Onde:

- V = Vocabulário = Conjunto finito e não vazio de símbolos
- $\Sigma$ = Conjunto finito e não vazio dos *símbolos terminais* = Alfabeto
- P = Conjunto finito e não vazio das produções ou regras de substituição
- S = Raiz ou *símbolo* inicial da gramática (S E(pertence) V)

A aplicação é capaz de gerar uma lista com cadeias (sentenças) válidas para a definição da quadrupla especificada.

```python
# Exemplo de input da quadrupla:
vocabulary = '0123SA'
terminals = '0123'
rules = {
    'S': ['0S33', 'A'],
    'A': ['12', ''],
}
root = 'S'
```

```sh
# Exemplo de retorno
['12', '033', '01233', '003333', '00123333', '']
```

```sh
# Exemplo de retorno com verbose ativado
0S33 (S --> 0S33) 00S3333
0S33 (S --> A) 0A33
A (A --> 12) 12
A (A --> )
00S3333 (S --> 0S33) 000S333333
00S3333 (S --> A) 00A3333
0A33 (A --> 12) 01233
0A33 (A --> ) 033
000S333333 (S --> 0S33) 0000S33333333
000S333333 (S --> A) 000A333333
00A3333 (A --> 12) 00123333
00A3333 (A --> ) 003333
['12', '033', '01233', '003333', '00123333', '']
```

## Instalação

### 1. Clone o repositório do projeto

```sh
git clone https://path.to/project/repository.git gramatica

cd gramatica
```

### 2. Instale o ambiente virtual e as dependências do projeto

Na pasta scripts existe um arquivo ``install.sh`` que possui comandos necessários para criação do ambiente virtual bem como as dependências deste projeto, sinta-se a vontade para alterá-lo e adapta-lo como quiser.

```sh
source scripts/install.sh
```

## Execution

### Execução manual

Você pode executar `python main.py` a partir do terminal estando na pasta do projeto e com ambiente virtual ativado.

### Execute o arquivo run.sh

Para facilitar este processo, na pasta scripts existe um arquivo ``run.sh`` que possui comandos necessários para execução deste projeto, sinta-se a vontade para alterá-lo e adapta-lo como quiser.

```sh
source scripts/run.sh
```

## Contribuição

### Git Flow

Neste projeto, utilizamos o fluxo de trabalho Git Flow. Se você não está familiarizado com ele, pode ler mais sobre isso aqui. Aqui está uma visão geral rápida:

1. **Master**: Este ramo está sempre pronto para implantação e contém o histórico oficial de lançamentos. Todos os commits neste ramo são versionados.

2. **Develop**: Este é o ramo principal de desenvolvimento, onde as últimas funcionalidades são integradas.

3. **Ramos de feature**: São criados a partir do ramo develop e é onde o trabalho de novas funcionalidades acontece.

4. **Ramos de release**: São criados a partir do develop para testes finais em preparação para um lançamento.

5. **Ramos de hotfix**: São criados a partir do master se um problema é encontrado em produção e precisa ser corrigido.

Por favor, siga o fluxo de trabalho Git Flow ao contribuir para este projeto.

### Mensagens de commit

Ao contribuir para este projeto, siga as melhores práticas para mensagens de commit:

1. **Use termos iniciais específicos na linha de assunto**. Isso ajuda a entender rapidamente o propósito do commit. Aqui estão alguns exemplos:
   - `[Add]` quando você adiciona novas funcionalidades ou arquivos.
   - `[Update]` ou `[Change]` quando você faz alterações em funcionalidades existentes.
   - `[Fix]` quando você corrige um bug.
   - `[Remove]` quando você remove uma funcionalidade ou arquivo.
   - `[Refactor]` quando você faz alterações no código que não modificam seu comportamento.
   - `[Improve]` quando você aprimora uma funcionalidade sem adicionar uma nova.

2. **Use o modo imperativo** na linha de assunto. Por exemplo, use "[Add] funcionalidade" em vez de "[Adicionada] funcionalidade" ou "[Adiciona] funcionalidade".

3. **Limite a linha de assunto a 50 caracteres**. Isso permite melhor legibilidade e mensagens de commit concisas e claras.

4. **Inicie a linha de assunto com letra maiúscula**. Isso é uma prática padrão.

5. **Não termine a linha de assunto com um ponto**. A linha de assunto deve ser um resumo breve das alterações, não uma frase completa.

6. **Separe o assunto do corpo com uma linha em branco**. Nem todos os commits são complexos o suficiente para exigir um corpo, mas se for necessário explicar o que e por que de uma alteração, é aqui que você deve fazê-lo.

7. **Limite o corpo a 72 caracteres**. Isso garante que a mensagem seja exibida corretamente em várias ferramentas Git.

8. **Use o corpo para explicar o que e por que da alteração**, não o como. O próprio código explica como a alteração é feita, portanto, concentre-se em deixar claro qual é o propósito da alteração e por que ela é necessária.

Lembre-se de que boas mensagens de commit podem ajudar outras pessoas a entender suas alterações e seu propósito. Portanto, reserve um momento para escrever mensagens de commit significativas.

## Testes

```sh
pytest -x -v
```

## Licenças

## Autores

- Charles Oliveira

## Contacts

- [Charles Oliveira](mailto:neo_charles@outlook.com)
