require 'rouge'

module Rouge
  module Lexers
    class Portugol < RegexLexer
      title "G-Portugol"
      desc "Linguagem G-Portugol para ensino de algoritmos"
      tag 'gportugol'
      filenames '*.gpt'

      KEYWORDS1 = %w[algoritmo variáveis fim-variáveis início fim função]
      KEYWORDS2 = %w[inteiro inteiros real reais caractere caracteres literal literais lógico lógicos matriz conjunto leia imprima]
      KEYWORDS3 = %w[verdadeiro falso]
      KEYWORDS4 = %w[se senão então fim-se enquanto faça fim-enquanto para de até passo fim-para retorne e ou não]

      OPERATORS = %w[+ - * / % = < > <= >= <>]
      DELIMITERS = %w[( ) , : ;]

      state :root do
        # Comentários
        rule %r{//.*$}, Comment::Single
        rule %r{/\*.*?\*/}m, Comment::Multiline

        # Strings
        rule %r/"(\\.|[^"])*"/, Str::Double

        # Números
        rule %r/\b\d+(\.\d+)?\b/, Num

        # Palavras-chave
        rule %r/\b(#{KEYWORDS1.join('|')})\b/, Keyword
        rule %r/\b(#{KEYWORDS2.join('|')})\b/, Keyword::Type
        rule %r/\b(#{KEYWORDS3.join('|')})\b/, Name::Builtin::Pseudo
        rule %r/\b(#{KEYWORDS4.join('|')})\b/, Keyword

        # Operadores
        rule %r/(#{OPERATORS.map { |o| Regexp.escape(o) }.join('|')})/, Operator

        # Delimitadores
        rule %r/[#{Regexp.escape(DELIMITERS.join)}]/, Punctuation

        # Identificadores
        rule %r/[a-zA-Z_][a-zA-Z0-9_]*/, Name

        # Espaços
        rule %r/\s+/, Text
      end
    end
  end
end
