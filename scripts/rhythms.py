import random as r
import argparse as ap
from abjad import *
from abjad import lilypondfiletools as lyft
from pprint import pprint as pp


def mutate(x):
    out = x + r.randrange(-1, 2)
    if out < 0:
        out = 0
    elif out > 3:
        out = 3
    return out


def permute(cell):
    i = r.randrange(0,cell.__len__())
    return cell[0:i] + [mutate(cell[i])] + cell[i+1:]


def gen_permutations(n, cell):
    out = [cell]
    src = cell
    while n > 1:
        new_cell = permute(src)
        if new_cell not in out:
            out.append(new_cell)
            n -= 1
        src = new_cell
    return out


# override staff lines
def change_line_layout(line_num, line_pos, staff):
    override(staff).staff_symbol.line_count = line_num
    override(staff).staff_symbol.line_positions = line_pos


def make_three_line(staff):
    change_line_layout(3, [-4, 0, 4], staff)


def make_five_line(staff):
    change_line_layout(5, [-4, -2, 0, 2, 4], staff)


# change note head/stem status
def show_note_head(show, note):
    override(note).note_head.stencil = show


def show_note_stem(show, note):
    override(note).stem.stencil = show


def show_note(show, note):
    for f in [show_note_head, show_note_stem]:
        f(show, note) 


# books and book parts
def make_book():
    return lyft.Block(name='book')


def wrap_in_book_part(staff):
    out = lyft.Block(name='bookpart')
    out.items.append(staff)
    return out


def setup_paper(lyf):
    lyf.items.insert(0,snippet_size)
    lyf.paper_block.items.insert(0, set_paper("snippet"))
    lyf.paper_block.indent            = 0
    lyf.paper_block.tagline           = False
    lyf.paper_block.ragged_right      = False
    lyf.paper_block.top_margin        = 5
    lyf.paper_block.right_margin      = 5
    lyf.paper_block.left_margin       = 5
    lyf.paper_block.print_page_number = False


def set_paper(size):
    return schemetools.Scheme(
            "set-paper-size",
            schemetools.Scheme(size, force_quotes=True))


note_map = {
        0: lambda d: Rest("r{}".format(d)),
        1: lambda d: Note("f{}".format(d)),
        2: lambda d: Note("c'{}".format(d)),
        3: lambda d: Note("g'{}".format(d))
        }


snippet_size = schemetools.Scheme(
    'set!',
    'paper-alist',
    schemetools.Scheme('cons',
        schemetools.Scheme(
            schemetools.Scheme("snippet", force_quotes=True), 
            ".", 
            schemetools.Scheme('cons',
                schemetools.Scheme('*', 50, 'mm'),
                schemetools.Scheme('*', 30, 'mm')),
            quoting="'"),
            'paper-alist'))

if __name__ == '__main__':
    cell   = [1,0,0]

    print("Permuting cell: {}".format(cell))
    cells  = gen_permutations(3, cell)
    perm   = [gen_permutations(64, c) for c in cells]

    print("Converting to Abjad")
    notes  = [[note_map[x](4) for x in c] for p in perm for c in p]

    print("Creating Staves")
    staves = [Staff(c) for c in notes]
    for st in staves:
        time_sig = indicatortools.TimeSignature((3,4))
        clef     = Clef('percussion')
        attach(time_sig, st)
        attach(clef, st)
        make_three_line(st)

    print("Building Book Parts")
    bps    = [wrap_in_book_part(s) for s in staves]
    book   = make_book()
    lyf    = lyft.make_basic_lilypond_file()

    print("Attaching Book Parts")
    for bp in bps:
        book.items.append(bp)

    # constructor would insert book into a score block
    print("Creating file")
    lyf.items.append(book)
    setup_paper(lyf)

    fp = u"/home/danny/dev/python/steel/notation/section{}-{}.ly".format(1,3)
    with open(fp, "w") as f:
        f.write(format(lyf))

    print(u"done! file lives in: {}".format(fp))
