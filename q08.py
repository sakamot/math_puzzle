N = 12

def move(current):
    if len(current) > N:
        return 1

    count = 0

    for d in [[0, 1], [0, -1], [1, 0], [-1, 0]]:
        next_pos = [current[-1][0] + d[0], current[-1][1] + d[1]]
        if next_pos not in current:
            count += move(current + [next_pos])

    return count

if __name__ == '__main__':
    print(move([[0, 0]]))
