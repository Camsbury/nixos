(use-package dash
  :defer t)

(when (load "private-conf.el")
  (use-package private-conf))

(use-package buffer-move)
(use-package dockerfile-mode)
(use-package wgrep)
(use-package agda2-mode)

(use-package autocomplete-conf)
(use-package bindings-conf)
(use-package browser-conf)
(use-package c-conf)
(use-package clj-conf)
(use-package counsel-conf)
(use-package dashboard-conf)
(use-package docs-conf)
(use-package elisp-conf)
(use-package env-conf)
(use-package evil-conf)
(use-package functions-conf)
(use-package git-conf)
(use-package haskell-conf)
(use-package irc-conf)
(use-package js-conf)
(use-package lisp-conf)
(use-package lsp-conf)
(use-package merge-conf)
(use-package minibuffer-conf)
(use-package org-conf)
(use-package package-conf)
(use-package pdf-conf)
(use-package project-conf)
(use-package python-conf)
(use-package racket-conf)
(use-package rlang-conf)
(use-package scroll-conf)
(use-package search-conf)
(use-package shell-conf)
(use-package snippet-conf)
(use-package style-conf)
(use-package theme-conf)
(use-package ui-conf)

(use-package modes)

(provide 'config)
