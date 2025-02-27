/*
-- Test unions.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


struct two_ints  { int a, b; };
struct four_ints { int a, b, c, d; };

union U1 {
    int i;
    two_ints d;
    four_ints q;
};


void set_i(U1& u)
{
	u.i = 10;
}
int add_i(U1& u)
{
	return u.i;
}

void set_d(U1& u)
{
    u.d.a = 166;
    u.d.b = -66;
}
int add_d(U1& u)
{
    int r = 0;
    r += u.d.a;
    r += u.d.b;
    return r;
}

void set_q(U1& u)
{
    u.q.a = 100;
    u.q.b = 200;
    u.q.c = 300;
    u.q.d = 400;
}
int add_q(U1& u)
{
    int r = 0;
    r += u.q.a;
    r += u.q.b;
    r += u.q.c;
    r += u.q.d;
    return r;
}

void test_U1()
{
    chess_message("// test_U1");
    U1 u;

    set_i(u);                // u = [  10,    0,    0,    0 ]
    chess_report(add_i(u));  // --> 10

    set_d(u);                // u = [ 166,  -66,    0,    0 ]
    chess_report(add_d(u));  // --> 100

    set_q(u);                // u = [ 100,  200,  300,  400 ]
    chess_report(add_q(u));  // --> 1000

    set_i(u);                // u = [  10,  200,  300,  400 ]
    chess_report(add_q(u));  // --> 910
}




union U2 {
    two_ints d;
    int i;
};

U2 uu = { 11, 22 };
U2 UU[4] = { { 1, 6 }, { 11, 16 }, { 101, 606 }, { 1111, 6666 } };

extern "C++" int sum(U2& u)
{
        return u.d.a + u.d.b;
}

extern "C++" int sum(U2 U[4])
{
    int r = 0;
    for (int i = 0; i < 4; ++i)
        r += sum(U[i]);
    return r;
}

void test_U2()
{
    chess_message("// test_U2");
    chess_report(sum(uu));
    chess_report(sum(UU));
}




int main()
{
    test_U1();
    test_U2();
    chess_exit(0);
    return 0;
}
