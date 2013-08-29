## Getting ready...

1. Clone or export this repository:

    ```git clone git://github.com/st23am/pubkata.git```

    Or, if you don't care about fetching updates later:

    ```git clone --depth 1 git://github.com/st23am/pubkata.git```

    Of course, you can [fork it on GitHub](https://github.com/st23am/pubkata/fork_select) and use your own copy.

2. Get the local environment set:

    ```bundle install```

3. See if the specs will run (and all fail).

    ```rspec spec```


# Pub Kata

1. Go to the pub

2. Pick a Kata (from the ```spec/``` directory)

3. Run the spec and pick the next failure:

    ```rspec --fail-fast --format d spec/*kata_name*_spec.rb```

    It can help to define an alias to make this easier:

    ```alias run='rspec --fail-fast --format d'```

    Then it's just something like:

    ```run spec/fizz_buzz_spec.rb```

    Until no more failures:

        1. Open the class from the ```src/``` directory with your favorite editor.

        2. Make it pass.

4. Go get a drink (HINT: doesn't *have* to be alcoholic)

5. Pick a new pub

6. GOTO 1
