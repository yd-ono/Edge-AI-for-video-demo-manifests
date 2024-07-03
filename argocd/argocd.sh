#!/bin/bash

argocd login cd.argoproj.io --core
argocd app sync $1
