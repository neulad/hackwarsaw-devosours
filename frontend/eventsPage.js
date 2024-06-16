export let eventsPage = `<header>
<div class="nav">
	<div id ="home-link" class="logo">
		<span class="highlight">Evento</span>Web3
	</div>
	<nav>
		<ul>
			<li><a id="events-link" href="#">EVENTS</a></li>
			<li><a href="#">PROJECTS</a></li>
			<li><a id="wallet" href="#">WALLET</a></li>
			<li><a href="#">BLOG</a></li>
			<li><a href="#" class="login">LOG IN</a></li>
		</ul>
	</nav>
</div>
<div class="header-content">
	<h1>EVENTO WEB3</h1>
	<p>DISCOVER THE FUTURE OF EVENTS</p>
</div>
</header>
<main>
            <div class="create-event">
                <h2>CREATE YOUR EVENT</h2>
                <form>
                    <label for="event-name">EVENT NAME:</label>
                    <input type="text" id="event-name" name="event-name" placeholder="Enter the event name">
                    
                    <label for="description">DESCRIPTION:</label>
                    <input type="text" id="description" name="description" placeholder="Enter the event description">
                    
                    <label for="category">CATEGORY:</label>
                    <select id="category" name="category">
                        <option value="" disabled selected>Choose</option>
                        <!-- Add more categories as options here -->
                    </select>
                    
                    <label for="price">PRICE:</label>
                    <input type="text" id="price" name="price" placeholder="Enter the price per ticket">
                    
                    <label for="tickets">NUMBER OF TICKETS:</label>
                    <input type="text" id="tickets" name="tickets" placeholder="Enter the number of tickets">
                    
                    <button type="submit" class="add-button">ADD</button>
                </form>
            </div>
</main>
<footer>
<div class="footer-content">
	<div class="logo">
		Evento<span class="highlight">Web3</span>
	</div>
	<div class="footer-links">
		<a href="#">PRIVACY & POLICY</a>
		<a href="#">TERMS & CONDITIONS</a>
		<a href="#">CONTACT US</a>
	</div>
</div>
</footer>`;