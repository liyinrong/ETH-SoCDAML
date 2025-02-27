/*
-- Benchmark: Sieve of Eratosthenes (computing prime numbers)
-- [based on "Doug's shootout" http://www.bagley.org/~doug]
--
-- Copyright (c) 2014 Synopsys, Inc. This processor model and the associated
-- documentation are proprietary to Synopsys, Inc.  This model may only be
-- used in accordance with the terms and conditions of a written license 
-- agreement with Synopsys, Inc.  All other use, reproduction, or distribution 
-- of this model are strictly prohibited.
*/


#define N 1500

int main()
{
    chess_message("// prime numbers:");

    static char flags[N + 1];
    int count = 0;

    // initialize sieve
    for (int i = 2; i <= N; ++i) flags[i] = 1;

    // loop over sieve
    for (int i = 2; i <= N; ++i) {
        if (flags[i]) {
            // i is prime, its multiples are not
            //chess_report(i);
            count++;
            for (int k = i + i; k<= N; k += i) flags[k] = 0;
        }
    }

    chess_message("// count primes upto " << N);
    chess_report(count);
    chess_exit(0);
    return 0;
}
