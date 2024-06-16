import { mainPage } from "./mainPage.js";
import { eventsPage } from "./eventsPage.js";
import { walletPage } from "./walletPage.js"; 
// import { eventBuy } from "./event_buyPage.js";
const myBody = document.body;
myBody.innerHTML = mainPage;
function addListeners(){
	let events = document.getElementById("events-link");
	let home = document.getElementById("home-link");
	let wallet = document.getElementById("wallet");
	// let eventBuycards = document.querySelectorAll(".event-card");
	events.addEventListener("click", function(){
		myBody.innerHTML = eventsPage;
		let findLink = document.querySelector(".active-link");
		if(findLink){
			findLink.classList.remove("active-link")
		}
		document.getElementById("events-link").classList.add("active-link");
		addListeners();
	});
	home.addEventListener("click", function(){
		myBody.innerHTML = mainPage;
		let findLink = document.querySelector(".active-link");
		if(findLink){
			findLink.classList.remove("active-link")
		}
		document.getElementById("home-link").classList.add("active-link");
		addListeners();
	});
	wallet.addEventListener("click", function(){
		myBody.innerHTML = walletPage;
		let findLink = document.querySelector(".active-link");
		if(findLink){
			findLink.classList.remove("active-link")
		}
		document.getElementById("wallet").classList.add("active-link");
		addListeners();
	})
	// eventBuycards.forEach(elem =>{
	// 	elem.addEventListener("click", function(){
	// 		myBody.innerHTML = eventBuy;
	// 		addListeners();
	// 	});
	// }); additional functionality

}

addListeners();