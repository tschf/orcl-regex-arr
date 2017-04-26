create or replace package regex_arr
as

    --Record type to store the array of matches into
    --make a subtype of dbms_sql.varchar2a so we don't rely on parent types
    --(can change the underlying type in future if need be, without breaking
    --code that uses this utility)
    subtype t_string_list is dbms_sql.varchar2a;

    -- get_matches accepts two arguments:
    -- 1. p_input_str: the string you want to apply the regular expression to
    -- 2. p_match_pattern: the pattern to apply against the string, that you would
    --    like any and all matches returned for
    function get_matches(
        p_input_str in varchar2,
        p_match_pattern in varchar2
    )
    return t_string_list;

end regex_arr;
/
