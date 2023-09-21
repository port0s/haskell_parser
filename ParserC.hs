module ParserC where
{-
	instalação: cabal install language-c
	site do pacote: https://hackage.haskell.org/package/language-c
	documentação: https://hackage.haskell.org/package/language-c-0.4.7/docs/
-}

import Language.C

-- Uso da função no ghci (depois de ter importado o módulo "ParserC") -> main
main = do
	-- Lê o conteúdo do arquivo javascript.
	r <- parseCFilePre "teste.c"

	case r of
		Left erro -> print erro
		Right ast -> do
			print ast
			print $ pretty ast
