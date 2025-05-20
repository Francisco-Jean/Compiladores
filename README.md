<div style="display: flex; flex-direction: column; justify-content: center;">
  <div style="width: 100px; height: auto;margin-left: 160px">
    <img src="https://i.postimg.cc/PrqVxCwY/brasao1-horizontal-cor-300dpi.png" alt="Imagem" width="100">
  </div>
  <h2 style="margin-left: 45px">Universidade Federal do Ceará</h2>
</div>

## Disciplina Construção de Compiladores
#### Professor: Francisco Heron de Carvalho Júnior
## Team 05

### 👥 Equipe de Desenvolvimento do Compilador
|        Nome        |          E-mail        |
|:------------------:|:----------------------:|
| **Francisco Jean da Silva de Sousa** | franciscojean@alu.ufc.br |
| **Rodrigo Rodrigues Santos** | rrsantos2004@alu.ufc.br |
|  **Victoria de Castro Moura**  | viquecastro@alu.ufc.br |

**Gerador de Parser utilizado**: [ANTLR](https://github.com/antlr/antlr4/blob/master/doc/index.md)
 
## Forma mais fácil de utilizar o antlr4-tools:
- **Requisito:** Ter o Python instalado na máquina.
- **Requisito:** Ter o antlr4-tools.jar baixado na máquina.
  - *Neste projeto, o jar do ANTLR está localizado na pasta* `team-05\minijava\antlr-4.13.2-complete.jar`.

Para experimentar o ANTLR sem precisar se preocupar com a instalação e o Java necessário para executá-lo, use o antlr4-tools. O único requisito é o Python 3, que normalmente é instalado em todas as máquinas de desenvolvedores em todos os sistemas operacionais.

```
pip install antlr4-tools
```
Essa linha de comando cria os executáveis antlr4 e antlr4-parse que, se necessário, baixarão e instalarão o Java 11 mais o jar do ANTLR mais recente.

## Passo a passo para gerar o parser:

1. **Adicionar o caminho da pasta as variáveis de ambiente**:
   - O caminho da pasta onde o jar do ANTLR está localizado deve ser adicionado às variáveis de ambiente do sistema operacional. Isso pode ser feito através do terminal ou das configurações do sistema.
   - O caminho deve ser algo como `C:\team-05\minijava\antlr-4.13.0-complete.jar` no Windows.

2. **Gerar os arquivos do Parser e do Lexer a partir da gramática**:
   - **Requisito:** Estar na pasta onde o arquivo `MiniJava.g4` está localizado.
     - Por exemplo: `C:\team-05\compilador\src\main\java\br\ufc\compiladores\minijava`.
   - O comando para gerar os arquivos do Parser e do Lexer a partir da gramática é o seguinte:
   ```
   antlr4 MiniJava.g4
   ```
   <span style="color:#c80000;">OBS:</span> Esse comando irá gerar os arquivos `MiniJavaLexer.java`, `MiniJavaParser.java`, `MiniJavaBaseListener.java` e outros, e também irá compilar todos os arquivos .java gerados.

## Executar o Parser em um arquivo de entrada:
- **Requisito:** Estar na pasta onde o arquivo da gramática está localizado.
  - Por exemplo: `C:\team-05\compilador\src\parser`.
- Exemplos de execução do parser:
    ```
    grun MiniJava start -tree BinarySearch.java
    ```
    ```
    grun MiniJava start -gui BinaryTree.java
    ```
    ```
    grun MiniJava start -tokens BubbleSort.java
    ```
  