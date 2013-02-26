"Vim conceal file
" Language: Mathematica
" Maintainer: R. Menon <rsmenon@icloud.com>
" Last Change: Feb 25, 2013

if (exists('g:mma_candy') && g:mma_candy == 0) || !has('conceal') || &enc != 'utf-8'
    finish
endif

"These are fairly safe and straightforward conceals
if exists('g:mma_candy') && g:mma_candy > 0
	"Rules
	syntax match mmaOperator "->" conceal cchar=→ "Rule
	syntax match mmaOperator ":>" conceal cchar=⧴ "RuleDelayed

	"Logicals
	syntax match mmaOperator "===" conceal cchar=≡ "SameQ
	syntax match mmaOperator "=!=" conceal cchar=≢ "UnsameQ
	syntax match mmaOperator "!=" conceal cchar=≠ "NotEqual
	syntax match mmaOperator "<=" conceal cchar=≤ "LessEqual
	syntax match mmaOperator ">=" conceal cchar=≥ "GreaterEqual

	"Constants
	syntax keyword mmaSystemSymbol Pi conceal cchar=π
	syntax keyword mmaSystemSymbol Infinity conceal cchar=∞
	syntax keyword mmaSystemSymbol Degree conceal cchar=°

	"Domains
	syntax keyword mmaSystemSymbol Reals conceal cchar=ℝ
	syntax keyword mmaSystemSymbol Integers conceal cchar=ℤ
	syntax keyword mmaSystemSymbol Complexes conceal cchar=ℂ
	syntax keyword mmaSystemSymbol Rationals conceal cchar=ℚ
endif

"These might be troublesome if the appropriate fonts are missing. Also, they don't
"look quite as good as the earlier ones, so enable only if the user chooses
if exists('g:mma_candy') && g:mma_candy == 2
	"Constants
	syntax keyword mmaSystemSymbol I conceal cchar=ⅈ
	syntax keyword mmaSystemSymbol E conceal cchar=ⅇ

	"Functions
	syntax keyword mmaSystemSymbol Sum conceal cchar=∑
	syntax keyword mmaSystemSymbol Product conceal cchar=∏
	syntax keyword mmaSystemSymbol Sqrt conceal cchar=√

	"Misc
	syntax match mmaOperator ">>" conceal cchar=» "Put
	syntax match mmaOperator "<<" conceal cchar=« "Get
endif

hi! link Conceal Normal
setlocal conceallevel=2
