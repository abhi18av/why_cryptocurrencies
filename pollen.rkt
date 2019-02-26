#lang racket/base

(require txexpr pollen/decode pollen/misc/tutorial pollen/tag)
(require "rkt/tags.rkt")
(require "rkt/post-process.rkt")

(provide (all-from-out "rkt/tags.rkt"))
(provide (all-from-out "rkt/post-process.rkt"))
(provide (all-defined-out))

(module setup racket/base
  (require file/glob)
  (require racket/runtime-path)

  (provide (all-defined-out))

  (define template-prefix "site")

  (define rkt-files (glob "rkt/*.rkt"))
  (define cache-watchlist rkt-files))
