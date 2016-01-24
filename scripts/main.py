import numpy as np


def add_columns(m, n=1):
    '''Add n columns to a matrix. these will be "wraparounds" of the 
    original matrix'''
    rows, columns = m.shape
    return np.matrix(np.resize(m, (rows+n, columns))).T


def diff(mOne, mTwo):
    '''Number of discrepencies between two 3xn matrices'''
    sizeDif    = mOne.shape[1] - mTwo.shape[1]
    sdPenalty  = abs(sizeDif) * 3
    mOneAdj    = add_columns(mOne, sizeDif)
    comparison = np.array((mOneAdj == mTwo).ravel())

    return sdPenalty + (comparison.size - comparison.sum())


mone = np.matrix([[0,1,0]
                ,[1,0,0]
                ,[0,0,1]])
mtwo = np.matrix([[1,0,0]
                ,[0,1,0]
                ,[0,0,1]])


if __name__ == '__main__':
    one = np.matrix([[0,1,0]
                    ,[1,0,0]
                    ,[0,0,1]])
    two = np.matrix([[1,0,0]
                    ,[0,1,0]
                    ,[0,0,1]])
    print(diff(one, two))
