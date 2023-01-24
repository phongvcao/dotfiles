#!/usr/bin/octave -qf

% flush the output stream

fflush(stdout);

nr = input("Enter the number of rows in the matrix: ");
nc = input("Enter the number of columns in the matrix: ");

A = rand(nr, nc)

minA = min(min(A));

disp("The minimum of A is");
disp(minA);
