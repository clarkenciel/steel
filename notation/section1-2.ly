% 2016-01-29 14:24
\version "2.18.2"
\language "english"

#(set! paper-alist (cons '("snippet" . (cons (* 50 mm) (* 30 mm))) paper-alist))

\header {}

\layout {}

\paper {
    #(set-paper-size "snippet")
    indent = #0
    left-margin = #5
    print-page-number = ##f
    ragged-right = ##f
    right-margin = #5
    tagline = ##f
    top-margin = #5
}

\book {
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            f4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            c'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            f4
            r4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            c'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            g'4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            g'4
        }
    }
    \bookpart {
        \new Staff \with {
            \override StaffSymbol #'line-count = #3
            \override StaffSymbol #'line-positions = #'(-4 0 4)
        } {
            \clef "percussion"
            \time 4/4
            r4
            r4
        }
    }
}