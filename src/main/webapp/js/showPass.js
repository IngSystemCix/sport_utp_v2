const hiddenPass = document.querySelector('.bi-eye-slash');
const inputPass = document.querySelector('#pass');
let checkStatusView = true;

hiddenPass.addEventListener('click', () => {
	if (checkStatusView) {
		hiddenPass.classList.remove('bi-eye-slash');
		hiddenPass.classList.add('bi-eye');
		inputPass.type = "text";
	}else {
		hiddenPass.classList.remove('bi-eye');
		hiddenPass.classList.add('bi-eye-slash');
		inputPass.type = "password";
	}
	checkStatusView = !checkStatusView;
});