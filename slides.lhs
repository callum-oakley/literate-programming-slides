class: center

Literate Programming
====================

*How you can type check your blog, and why you should*

---

What is literate programming?
=============================

- Don’t have comments in code, have code in prose

- One source file for humans and computers

- Program flow matches logical flow

- Weaving, tangling, & tooling

---

Why tho?
========================

- Embedded snippets can’t be out of date if they *are* the code

- Streamlines the process of writing technical documents

- Elucidated thought process

- Free, first-rate documentation

---

When is it crap?
================

- When you wanted a manual but were handled a novel

- Code ordering can cause friction

- Non “literate aware” tooling is a barrier

- Comment rot: probably still a thing

---

When is it great?
=================

- Blog posts

- Tutorials

- Example heavy documentation

- Puzzle solutions

- Slides?

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

This presentation is a Literate Haskell file.

Let’s make use of the ‘fibs’ definition form the previous slide to approximate
the golden ratio.

```
> approxGoldenRatio :: Int -> Double
> approxGoldenRatio accuracy = p / q
>   where
>     p = fibs !! (accuracy + 1)
>     q = fibs !! accuracy
```

There’s an intentional mistake in the snippet above. Time for a live fix!
