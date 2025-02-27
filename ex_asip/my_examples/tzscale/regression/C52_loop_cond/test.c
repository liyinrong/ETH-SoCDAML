/*
-- Test loops with complex condition or step.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


extern "C++" int do_while_and(int a, int b)
{
    chess_message("// do_while_and(" << a << ", " << b << ')');
    int x = 0;
    do {
        x += a-- + b--;
    } while (a > 0 && b > 0);
    return x;
}

extern "C++" int do_while_and(int a, int b, int c)
{
    chess_message("// do_while_and(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += a-- + b-- + c--;
    } while (a > 0 && b > 0 && c > 0);
    return x;
}

extern "C++" int do_while_or(int a, int b)
{
    chess_message("// do_while_or(" << a << ", " << b << ')');
    int x = 0;
    do {
        x += 1;
    } while (a-- > 0 || b-- > 0);
    return x;
}

extern "C++" int do_while_or(int a, int b, int c)
{
    chess_message("// do_while_or(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += 1;
    } while (a-- > 0 || b-- > 0 || c-- > 0);
    return x;
}

int do_while_or_and(int a, int b, int c)
{
    chess_message("// do_while_or_and(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += 1;
    } while (a-- > 0 || (b-- > 0 && c-- > 0));
    return x;
}

int do_while_and_or(int a, int b, int c)
{
    chess_message("// do_while_and_or(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += 1;
    } while (a-- > 0 && (b-- > 0 || c-- > 0));
    return x;
}

int do_while_and_break(int a, int b, int c)
{
    chess_message("// do_while_and_break(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += 1;
        if (c < 0) { x += 1000; break; }
        a--;
        b--;
        c--;
    } while (a > 0 && b > 0);
    return x;
}

int do_while_or_break(int a, int b, int c)
{
    chess_message("// do_while_or_break(" << a << ", " << b << ", " << c << ')');
    int x = 0;
    do {
        x += 1;
        if (c < 0) { x += 1000; break; }
        a--;
        b--;
        c--;
    } while (a > 0 || b > 0);
    return x;
}

int do_bool_and(int a, int b, int c)
{
    chess_message("// do_bool_and(" << a << ", " << b << ", " << c << ')');
    int i = 0;
    while (a-- && b-- && c--) i++;
    return i;
}

int do_cond_step(int c)
{
    static int AA[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 };
    chess_message("// do_cond_step(" << c << ')');
    int x = 0;
    for (int i = 0; i < 10; /**/) {
        x += AA[c ? (i += 2) : (i += 3)];
    }
    return x;
}

int main()
{
    chess_report(do_while_and(3, 2));
    chess_report(do_while_and(4, 6));
    chess_report(do_while_and(3, 4, 5));
    chess_report(do_while_and(5, 3, 4));
    chess_report(do_while_and(4, 5, 3));

    chess_report(do_while_or(3, 2));
    chess_report(do_while_or(4, 6));
    chess_report(do_while_or(3, 4, 5));
    chess_report(do_while_or(5, 3, 4));
    chess_report(do_while_or(4, 5, 3));

    chess_report(do_while_or_and(4, 2, 2));
    chess_report(do_while_or_and(4, 3, 2));
    chess_report(do_while_or_and(4, 2, 3));
    chess_report(do_while_or_and(2, 4, 2));
    chess_report(do_while_or_and(2, 2, 4));

    chess_report(do_while_and_or(2, 3, 3));
    chess_report(do_while_and_or(2, 2, 3));
    chess_report(do_while_and_or(2, 3, 2));
    chess_report(do_while_and_or(4, 4, 2));
    chess_report(do_while_and_or(4, 2, 4));

    chess_report(do_while_and_break(3, 4, 5));
    chess_report(do_while_and_break(5, 3, 4));
    chess_report(do_while_and_break(4, 5, 3));

    chess_report(do_while_or_break(3, 4, 5));
    chess_report(do_while_or_break(5, 3, 4));
    chess_report(do_while_or_break(4, 5, 3));

    chess_report(do_bool_and(0, 0, 0));
    chess_report(do_bool_and(1, 0, 0));
    chess_report(do_bool_and(0, 1, 0));
    chess_report(do_bool_and(0, 0, 1));
    chess_report(do_bool_and(1, 1, 1));
    chess_report(do_bool_and(5, 4, 3));
    chess_report(do_bool_and(4, 6, 3));
    chess_report(do_bool_and(2, 3, 4));

    chess_report(do_cond_step(0));
    chess_report(do_cond_step(1));

    chess_exit(0);
    return 0;
}
