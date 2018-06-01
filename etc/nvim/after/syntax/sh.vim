" {{{1 Deref

hi def link shDerefTransform shDerefOp
hi def link shDerefTransformOp shDerefOp
syn cluster shDerefList add=shDerefTransform

syn match shDerefTransform contained '@' nextgroup=shDerefTransformOp
syn region shDerefTransformOp contained start='.' end='\ze}'

" {{{1 Printf

syn match shPrintfFormat display "%\([aAbdiuoxXDOUfFeEgGcCsSpn]\)" containedin=shString

hi def link shPrinfFormat Special
