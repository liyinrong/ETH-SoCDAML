/*
-- Test: pointer arithmetic
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


struct SS { short a, b, c, d, e, f; } ss[4];

void ptr_difference(SS* p, SS* q)
{
    chess_message("// ptr_difference");
    int t = (unsigned)(long)q - (unsigned)(long)p; // 2 * sizeof(SS)
    chess_report((int)(t / (int)sizeof(SS)) + 1);
    chess_report((int)(q - p) + 1); // 2
}

void ptr_comparison(SS* p, SS* q)
{
    chess_message("// ptr_comparison");
    chess_report(p <  q ? 10 : 11);
    chess_report(p >  q ? 20 : 21);
    chess_report(p <= q ? 30 : 31);
    chess_report(p >= q ? 40 : 41);
    chess_report(p != q ? 50 : 51);
    chess_report(p == q ? 60 : 61);
}

int main()
{
    SS* p1 = &ss[1];
    SS* p3 = &ss[3];

    ptr_difference(p1, p3);
    ptr_difference(p3, p1);
    ptr_difference(p1, p1);

    ptr_comparison(p1, p3);
    ptr_comparison(p3, p1);
    ptr_comparison(p1, p1);

    chess_exit(0);
    return 0;
}
