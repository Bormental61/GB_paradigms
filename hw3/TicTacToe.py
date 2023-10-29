class TicTacToe:
    def __init__(self):
        self.array = [''] * 9

    def print(self):
        for i in range(0, 9, 3):
            for j in range(i, i + 3):
                if self.array[j] == '':
                    print(j, end='\t')
                else:
                    print(self.array[j], end='\t')
            print()

    def check_win(self):
        if self.array[0] == self.array[1] == self.array[2] != ''\
            or self.array[0] == self.array[3] == self.array[6] != ''\
                or self.array[0] == self.array[4] == self.array[8] != '':
            return self.array[0]
        elif self.array[3] == self.array[4] == self.array[5] != ''\
            or self.array[1] == self.array[4] == self.array[7] != ''\
                or self.array[2] == self.array[4] == self.array[6] != '':
            return self.array[4]
        elif self.array[6] == self.array[7] == self.array[8] != ''\
                or self.array[2] == self.array[5] == self.array[8] != '':
            return self.array[8]
        else:
            return True

    def check_equal(self):
        return len(self.get_empty()) == 0

    def set_x(self):
        print('Put ✖: ')
        index = int(input())
        if self.array[index] != '':
            print('Choose empty slot')
            self.print()
            self.set_x()
        else:
            self.array[index] = '✖'

    def set_o(self):
        print('Put ◯: ')
        index = int(input())
        if self.array[index] != '':
            print('Choose empty slot')
            self.print()
            self.set_o()
        else:
            self.array[index] = '◯'

    def get_empty(self):
        result = []
        for i in range(9):
            if self.array[i] == '':
                result.append(i)
        return result

    def run(self):
        while self.check_win():
            self.print()
            self.set_x()
            print()
            if self.check_equal():
                self.print()
                print('Nobody wins')
                return
            if self.check_win() == '✖':
                self.print()
                print('✖ wins!')
                return
            self.print()
            self.set_o()
            print()
            if self.check_win() == '◯':
                self.print()
                print('◯ wins!')
                return
