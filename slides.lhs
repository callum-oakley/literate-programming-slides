class: center, middle

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

- You can mix and match with ‘.hs’ to your hearts content

- Haskell is particularly well suited to literate programming

- Pages on the [Haskell wiki](https://wiki.haskell.org/Arrow_tutorial) are often written in Bird Style

---

Bird Style
==========

This is one of the supported styles for writing Literate Haskell.

GHC ignores every line that doesn’t begin with a ‘>’. So your file ends up
looking something like this slide.

```
> fibs :: [Integer]
> fibs = 0 : scanl (+) 1 fibs
```

The markup style you use for the prose is up to you – pandoc is your friend.

---

For example...
==============

This presentation is a Literate Haskell file, so we can load it in to GHC and have some fun!

First to see that this behaves just like a normal source file, let’s make use of the ‘fibs’ definition form the previous slide to approximate the golden ratio.

```
> approxGoldenRatio n = p / q
>   where
>     p = fromInteger $ fibs !! (n + 1)
>     q = fromInteger $ fibs !! n
```

Why this works is out of the scope of these slides, but normally there would be a beautiful explanation of the mathematics here.
