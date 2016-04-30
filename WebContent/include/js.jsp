<script src="<%= request.getContextPath()%>/template/js/jquery.min.js"></script>
<script src="<%= request.getContextPath()%>/template/js/jquery.scrolly.min.js"></script>
<script src="<%= request.getContextPath()%>/template/js/jquery.dropotron.min.js"></script>
<script src="<%= request.getContextPath()%>/template/js/jquery.scrollex.min.js"></script>
<script src="<%= request.getContextPath()%>/template/js/skel.min.js"></script>
<script src="<%= request.getContextPath()%>/template/js/util.js"></script>
<!--[if lte IE 8]><script src="<%= request.getContextPath()%>/template/js/ie/respond.min.js"></script><![endif]-->
<script src="<%= request.getContextPath()%>/template/js/main.js"></script>
<script>
$(document).ready(function(){
    var next = 1;
    $(".add-more").click(function(e){
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<input autocomplete="off" class="input form-control" id="field' + next + '" name="field' + next + '" type="text">';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source',$(addto).attr('data-source'));
        $("#count").val(next); 
       
        
            $('.remove-me').click(function(e){
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length-1);
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
            });
    });
    

    
});
   
</script>

<script>

function ma_fonction(){
event.preventDefault();
document.getElementById("hihi").style.display="block";

/*var form = document.getElementsByTagName('form')[0];
var input = document.createElement('input');

input.setAttribute('type', 'text');
input.setAttribute('name', 'pet');
form.appendChild(input);*/
}

</script>

