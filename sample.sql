declare

    l_regex_results regex_arr.t_string_list;

begin

    l_regex_results := regex_arr.get_matches('This is a test', '\w+');

    for i in 1..l_regex_results.count
    loop
        dbms_output.put_line('Match ' || i || ' is: ' || l_regex_results(i));
    end loop;

end;
/
