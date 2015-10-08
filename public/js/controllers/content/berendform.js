function validateField(pattern,subject) {
    return pattern.test(subject);
}

function validatePostal(elem) {
    console.log(elem.id);
    console.log($(elem.id));
    console.log(validateField(/^\d{4}\s?[a-z]{2}$/i, elem.value));
    if(validateField(/^\d{4}\s?[a-z]{2}$/i, elem.value) == false) {
        $('#Postcode').addClass("red-border");
    } else {
        $('#Postcode').removeClass("red-border");
    }
    //console.log(validateField(/^\d{4}\s?[a-z]{2}$/i, input));
}