module ParserJS where
{-
	Instalação: cabal install language-javascript
	Página do pacote: https://hackage.haskell.org/package/language-javascript
	Documentação: https://hackage.haskell.org/package/language-javascript-0.5.13/docs/
-}

import Language.JavaScript.Parser

-- Uso da função no ghci (depois de ter importado o módulo "ParserJS") -> main
main = do
	-- Lê o conteúdo do arquivo javascript.
	codigo <- readFile "teste.js"

	-- Parse recebe o código javascript e o nome do arquivo javascript.
	let r = parse codigo "teste.js"

	-- A saída é uma árvore sintática abstrata (AST) de zero ou mais instruções javascript.
	print r

	case r of
		Left erro -> print erro

		-- renderToString recebe um JSNode e retorna uma String
		-- serve para imprimir o código JavaScript de forma legível
		Right saida -> putStrLn $ renderToString saida
