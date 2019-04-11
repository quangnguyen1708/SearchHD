 //Kiểm lỗi bỏ trống các text
 function validateForm() {
    if (form.yname.value == "") {
        alert("Bạn chưa nhập họ tên!");
        form.yname.focus();
        return;
    }   
    if (form.phone.value == "") {
        alert("Bạn chưa nhập số điện thoại !");
        form.phone.focus();
        return;
    }
    if (form.mail.value == "") {
        alert("Bạn chưa nhập Email !");
        form.mail.focus();
        return;
    }
    if (form.messag.value == "") {
        alert("Bạn chưa chọn nhập tin nhắn !");
        form.messag.focus();
        return;
    }
 
          
    //Kiểm lỗi sai định dạng số điện thoại
    //d(digit): bắt lỗi nhập số
    var reg = /^\d{10,11}$/; 
    if (!reg.test(form.phone.value)) {
        alert("Oops!!! Định dạng số điện thoại không đúng! Số điện thoại phải 10 - 11 số");
        form.phone.focus();
        return;
    }

    //Kiểm lỗi sai định dạng Email
    var regEmail = /^\w{3,}@\w{3,20}(.\w{2,3}){1,2}$/;
    if (!regEmail.test(form.mail.value)) {
        alert("Định dạng Email không đúng! VD: Example@mail.com");
        form.mail.focus();
        return;
    }
    alert("Chúc mừng bạn đã gửi thành công !!!");
    document.getElementById("form").reset();
}