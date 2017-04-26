create or replace package body regex_arr
as

    function get_matches(
        p_input_str in varchar2,
        p_match_pattern in varchar2
    )
    return t_string_list
    as
        l_string_matches t_string_list;
    begin

        select regexp_substr(p_input_str, p_match_pattern, 1, level) str
        bulk collect into l_string_matches
        from dual
        connect by level <= regexp_count(p_input_str, '\w+')
        order by level asc;

        return l_string_matches;

    end get_matches;

end regex_arr;
/
