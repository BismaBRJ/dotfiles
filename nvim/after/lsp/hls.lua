-- overriding some defaults for the Haskell Language Server (HLS)
return {
    settings = {
        haskell = {
            cabalFormattingProvider = "none", -- default: cabal-fmt
            formattingProvider = "none" -- default: ormolu
        }
    }
}

