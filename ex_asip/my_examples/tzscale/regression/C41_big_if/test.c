/*
-- Test Test long (> 128 and > 256) jumps.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


int jump_less_128(int n, int m, int x)
{
    chess_message("// jump_less_128(" << n << ", " << m << ", " << x << ')');
    if (n > 0) {
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
    } else {
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
    }
    return m ? x : -x;
}

int jump_more_128(int n, int m, int x)
{
    chess_message("// jump_more_128(" << n << ", " << m << ", " << x << ')');
    if (n > 0) {
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;

        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
        x += 1; x &= 0xfff;
    } else {
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;

        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
        x -= 1; x &= 0xfff;
    }
    return m ? x : -x;
}

int main()
{
    chess_report(jump_less_128(10, 1, 1000));
    chess_report(jump_less_128(-5, 1, 1000));
    chess_report(jump_more_128(10, 1, 1000));
    chess_report(jump_more_128(-5, 1, 1000));
    chess_exit(0);
    return 0;
}
