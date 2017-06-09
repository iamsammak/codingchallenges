# Funding Circle Coding Challenge (Old)

Write a program that prints out a multiplication table of the first 10 prime numbers.

The program must run from the command line and print one table to STDOUT.
The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

## Setup

Navigate to root directory and run bundle install
```
$ bundle install
```


## Dependencies

This implementation utilizes [Terminal Table](https://github.com/tj/terminal-table)

#### Installation
```
$ gem install terminal-table
```

### Testing

Navigate to root directory and run Rspec Tests
```
$ bundle exec rspec spec/primes_spec.rb
```
