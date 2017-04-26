create or replace package regex_arr
as

    --Record type to store the array of matches into
    subtype t_string_list is dbms_sql.varchar2a;
    --
    function get_matches(
        p_input_str in varchar2,
        p_match_pattern in varchar2
    )
    return t_string_list;

end regex_arr;
/
