/*
-- Test local static variables in called and inline functions.
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


static int ggg = 10;
int CL() { int iii = 0; return ++iii; }
int CG() { return ++ggg; }
int CS() { static int iis = 20; return ++iis; }

void test_cld_local()
{
    chess_message("// test_cld_local()");
    int x = 0;
    x += CL();            //+1 == 1
    chess_report(x);
    x += CL();            //+1 == 2
    chess_report(x);
}

void test_cld_global()
{
    chess_message("// test_cld_global()");
    int x = 100;
    x += CG();            //+11 == 111
    chess_report(x);
    x += CG();            //+12 == 123
    chess_report(x);
}

void test_cld_static()
{
    chess_message("// test_cld_static()");
    int x = 200;
    x += CS();            //+21 == 241
    chess_report(x);
    x += CS();            //+22 == 243
    chess_report(x);
}


static int iii = 40;
inline int IL() { int iii = 30; return ++iii; }
inline int IG() { return ++iii; }
inline int IS() { static int iis = 50; return ++iis; }

void test_inl_local()
{
    chess_message("// test_inl_local()");
    int x = 300;
    x += IL();            //+31 == 311
    chess_report(x);
    x += IL();            //+31 == 362
    chess_report(x);
}

void test_inl_global()
{
    chess_message("// test_inl_global()");
    int x = 400;
    x += IG();            //+41 == 441
    chess_report(x);
    x += IG();            //+42 == 483
    chess_report(x);
}

void test_inl_static()
{
    chess_message("// test_inl_static()");
    int x = 500;
    x += IS();            //+51 == 551
    chess_report(x);
    x += IS();            //+52 == 603
    chess_report(x);
}


void test_string_lit()
{
    chess_message("// test_string_lit()");
    int x = "xxAxx"[2];   //'A' == 65
    chess_report(x);
}

void test_dup_static(int b, int n)
{
    chess_message("// test_dup_static()");
    int x = 900;
    if (b) {
	static const int ddd[] = { 11, 12, 13, 14 };
	x += ddd[n];
    } else {
	static int ddd[] = { 21, 22, 23, 24, 25 };
	x += ddd[n];
    }
    chess_report(x);
}


int main()
{
    test_cld_local();
    test_cld_global();
    test_cld_static();
    test_inl_local();
    test_inl_global();
    test_inl_static();
    test_string_lit();
    test_dup_static(1, 2); //> 913
    test_dup_static(0, 4); //> 925

    chess_exit(0);
    return 0;
}
