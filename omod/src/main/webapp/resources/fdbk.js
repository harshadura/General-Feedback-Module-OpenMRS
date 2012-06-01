// Feedback Module javascript for feedback submission 


$j(document).ready(function() {
    $j('#dialog').dialog({
        autoOpen: false,
        modal: true
    });
    $j('#feedbackPhotoDialog').dialog({
        autoOpen: false,
        modal: true
    });
});

function popUp() {
    $j('#dialog').dialog({
        autoOpen: true,
        width: '90%'
    });

}

function fdbkPhotoPopUp() {
    $j('#feedbackPhotoDialog').dialog({
        autoOpen: true,
        width: '90%'
    });

}

$j(function(){
    $j("#demoForm").formwizard({
        formPluginEnabled: true,
        validationEnabled: true,
        focusFirstInput : true,
        formOptions :{
            success: function(data){$j("#status").fadeTo(500,1,function(){ $j(this).html("You are now registered!").fadeTo(5000, 0); })},
            beforeSubmit: function(data){$j("#data").html("data sent to the server: " + $j.param(data));},
            dataType: 'json',
            resetForm: true
        }
    }
            );
});