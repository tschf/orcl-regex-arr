# Oracle Regex Array

A simple regex utility to return the results of a regex match pattern into an array. There are SQL functions to work with regular expressions, but it could be helpful to be able to return the results in a PL/SQL collection type.

## Install

```
@install
```

## Sample

```plsql
declare
    l_words regex_arr.t_string_list;
begin
    l_words := regex_arr.get_matches('The quick brown fox jumped over the lazy dog!', '\w+');

    for i in 1..l_words.count
    loop
        dbms_output.put_line('Match ' || i || ' is: ' || l_words(i));
    end loop;
end;
/
```

Output:

```
Match 1 is: The
Match 2 is: quick
Match 3 is: brown
Match 4 is: fox
Match 5 is: jumped
Match 6 is: over
Match 7 is: the
Match 8 is: lazy
Match 9 is: dog
```

## License

The Unlicense - do with this what you will :)

## Author

Trent Schafer
