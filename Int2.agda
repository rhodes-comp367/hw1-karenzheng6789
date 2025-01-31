module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = (+ suc n)
isuc (- zero) = (+ suc zero)
isuc (- (suc n)) = (- n)

-- given i, return i - 1.
ipred : Int → Int
ipred (+ n) = (+ n) (suc zero)
ipred (- zero) = (-suc zero)
ipred (-(suc n)) = (- suc n) (suc zero)

-- given i, return -i.
ineg : Int → Int
ineg (+ n) = (- n)
ineg (- zero) = (- zero)
ineg (-(suc n)) = (-(suc n)) (-(suc n))

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ n) (+ m) = + (n + m)
iplus (+ n) (- zero) = (+ n)
iplus (+ n) (-(suc m)) = + (n - m)
iplus (-(suc n)) (+ m) = (-(suc)) (+m)
iplus (-(suc n)) (-(suc m)) = - (suc n + suc m)

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (+ n) (j)  = (+ n) (j)
iminus (- zero) (j) = j
iminus (-(suc n)) (j) = (-(suc n)) (j)

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+ n) (+ m) = + (n * m)
itimes (- zero) (+ n) = (- zero)
itimes (-(suc n)) (+ n) = - (n * suc m)
itimes (- zero) j = - zero
itimes (-(suc n)) (+ m) = - (suc n * m)
itimes (-(suc n)) (-(suc m)) = + (suc n * suc m)

--I got parts of the last three problems from inspiration from ChatGPT. 
--I wasnt quite sure on how to word these.


