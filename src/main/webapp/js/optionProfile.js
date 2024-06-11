const profile = document.querySelector('#profile');
const arrow = document.querySelector('#arrow');
const subMenu = document.querySelector('#sub-menu');
let checkShowSubMenu = true;

profile.addEventListener('click', () => {
	if (checkShowSubMenu) {
		subMenu.classList.remove('hidden');
		arrow.classList.remove('bi-caret-up-fill');
		arrow.classList.add('bi-caret-down-fill');
	}else {
		subMenu.classList.add('hidden');
		arrow.classList.add('bi-caret-up-fill');
		arrow.classList.remove('bi-caret-down-fill');
	}
	checkShowSubMenu = !checkShowSubMenu;
});