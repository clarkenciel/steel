from abjad import *
from abjad import lilypondfiletools as lyft

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
