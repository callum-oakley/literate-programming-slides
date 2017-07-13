class: center

Literate Programming
====================

*How you can type check your blog, and why you’d want to*

---

What?
=====

- Don’t have comments in code, have code in prose

- One source file for humans and computers

- Program flow matches logical flow

---

Why?
====

- Streamlines the writing of documents with embedded code

- Elucidated thought process

- Free, first-rate documentation

---

When?
=====

- Blog posts

- Tutorials

- Example heavy documentation

---

Literate Haskell
================

- GHC has native support for ‘.lhs’ files

- You can mix and match ‘.lhs’ and ‘.hs’ files

- Haskell is particularly well suited to literate programming

- Pages on the [Haskell wiki](https://wiki.haskell.org/Arrow_tutorial) are
  often written in *Bird Style*

---

Bird Style
==========

Code is marked with a ‘>’. So your files ends up looking something like this
slide.

```
> fibs :: [Integer]
> fibs = 0 : scanl (+) 1 fibs
```

The markup language you use for the prose is up to you – *pandoc is your friend*.

---

I’m So Meta Even This Acronym
==============

These slides are valid Literate Haskell source.

Let’s make use of the ‘fibs’ definition from the previous slide to approximate
the golden ratio.

```
> approxGoldenRatio :: Int -> Double
> approxGoldenRatio accuracy = p / q
>   where
>     p = fibs !! (accuracy + 1)
>     q = fibs !! accuracy
```

There’s an error in the snippet above. Time for a live fix!
