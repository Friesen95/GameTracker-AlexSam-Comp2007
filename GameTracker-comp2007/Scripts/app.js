/* 
    Author: Alex Friesen and Sam Sunny 
    Stud #: 200302342 & 200300762
    Date: June 6th, 2016
    Description: This is custome js page     */

// Have a button that is able to toggle through collapsing and opening text
$('.row .btn-collapse').on('click', function (e) {
    e.preventDefault();
    var $this = $(this);
    var $collapse = $this.closest('.collapse-group').find('.collapse');
    $collapse.collapse('toggle');
});

