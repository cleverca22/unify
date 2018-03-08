module Entry where

foreign export ccall foo :: Int -> IO Int

foo :: Int -> IO Int
foo n = return $ n * 10
