<%-- 
    Document   : DynamicContact
    Created on : Apr 13, 2017, 6:57:31 PM
    Author     : GOPIRAJ
--%>
<script>
        j = 0;
        function createdefault()
        {
            j++;
            ctrl0 = $(document.createElement('input')).attr({'type': 'text', 'id': 'txtt' + j, 'name': 'dynamic' + j, 'class': 'form-control CheckField', 'placeholder':'987654321'});
            ctrl1 = $(document.createElement('input')).attr({'type': 'button', 'value': '+', 'class': 'btnp' + j + ' btn', 'id': 'btnp' + j});
            ctrl2 = $(document.createElement('input')).attr({'type': 'button', 'value': '-', 'class': 'btnm' + j + ' btn', 'id': 'btnm' + j});
            br = $(document.createElement('br'));
            $("#mydiv").append(ctrl0, ctrl1, ctrl2, br);

            $(ctrl1).attr({'onClick': function()
                {
                    $(this).on("click", function(elem)
                    {
                        $("#btnp" + j).remove();
                        createdefault();
                    });
                }});
            $(ctrl2).attr({'onClick': function()
                {
                    $(this).on("click", function(elem)
                    {
                        var currentId = $(this).attr('id');
                        p = currentId.charAt(4);
                        x = $("#btnp" + p);
                        // here length property will check in whole document whether that jquery obj is present or not.
                        y = x.length;
                        if (y == "1")
                        {
                            //with plus
                            $("#btnp" + p).remove();
                            ctrl1 = $(document.createElement('input')).attr({'type': 'button', 'value': '+', 'class': 'btnp' + (j - 1), 'id': 'btnp' + (j - 1)});
                            $(ctrl1).attr({'onClick': function()
                                {
                                    $(this).on("click", function(elem)
                                    {
                                        $("#btnp" + (j - 1)).remove();
                                        createdefault();
                                    });
                                }
                            });
                            $("#mydiv").append(ctrl1);
                        }
                        $("#txtt" + p).remove();
                        $("#btnm" + p).remove();
                    });
                }});
        }

    </script>