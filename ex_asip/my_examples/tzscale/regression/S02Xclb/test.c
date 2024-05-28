/*
-- Test expressions on floats.
--
-- Copyright (c) 2014 Synopsys Inc.
*/

long long T[] = { 0x0000000008000000ULL,
                  0x0000000000800900ULL,
                  0x0000000070800900ULL,
                  0x0000000080800900ULL,
                  0x0000000100800900ULL,
                  0x00000000F0800900ULL,
                  0x00000000FC800900ULL,
                  0x0F0000003C800900ULL,
                  0,
                  -1,
                  0x8000000000000000ULL,
                  0x1000000000004000ULL,
                  0xF0000000F0800900ULL,
                  0xFFC0000000000900ULL,
                  0xFFFFFFFE00000000ULL,
                  0xFFFFFFFF00000000ULL,
                  0xFFFFFFFF80000000ULL,
                  0x0808080808080808ULL // sentinel
                };

void test_clb()
{
    chess_message( "// test_clb()" );

    chess_report ( clb((int)0));
    chess_report ( clb((int)1));
    chess_report ( clb((int)-1));

    int i = 0;
    while (T[i] != 0x0808080808080808ULL) {
        chess_message( "// new T");
        chess_report ((unsigned long long)T[i]);
        chess_report ( clb((int)T[i])                );
        chess_report ( clb((unsigned)T[i])           );
        chess_report ( clb((long long)T[i])          );
        chess_report ( clb((unsigned long long)T[i]) );
        i++;
    }
}

int main()
{
    test_clb();
    return 0;
}

