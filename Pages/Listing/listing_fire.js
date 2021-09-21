

var db = firebase.firestore();
var coll = db.collection("listing");

const getTasks = () => db.collection("listing").get();
const onGetTasks = (callback) => db.collection("listing").onSnapshot(callback);
const deleteTask = (id) => db.collection("listing").doc(id).delete();
const getTask = (id) => db.collection("listing").doc(id).get();
const updateTask = (id, updatedTask) => db.collection('listing').doc(id).update(updatedTask);

window.addEventListener("DOMContentLoaded", async (e) => {
    var listingCard = $('#listing-card').html();

    onGetTasks((querySnapshot) => {
        querySnapshot.forEach((doc) => {
        const prop = doc.data();
        var place_div = $("<div>", {"class": "place"});
        place_div.append(listingCard);
        place_div.find('.property-price').text(prop.precio);
        });
    });
});












let data = JSON.parse(this.response)

// Status 200 = Success. Status 400 = Problem.  This says if it's successful and no problems, then execute 
if (request.status >= 200 && request.status < 400) {

    // Map a variable called cardContainer to the Webflow element called "Cards-Container"
    const cardContainer = document.getElementById("Cards-Container")

    // This is called a For Loop. This goes through each object being passed back from the Xano API and does something.
    // Specifically, it says "For every element in Data (response from API), call each individual item restaurant"
    data.forEach(restaurant => {

        // For each restaurant, create a div called card and style with the "Sample Card" class
        const style = document.getElementById('samplestyle')
        // Copy the card and it's style
        const card = style.cloneNode(true)

        card.setAttribute('id', '');
        card.style.display = 'block';

        // When a restuarant card is clicked, navigate to the item page by passing the restaurant id
        card.addEventListener('click', function() {
            document.location.href = "/item?id=" + restaurant.id;
        });

        // For each restaurant, Create an image and use the restaurant image coming from the API
        const img = card.getElementsByTagName('IMG')[0]
        img.src = restaurant.banner.url + "?tpl=big:box"; // using Xano's template engine to re-size the pictures down and make them a box

        // For each restaurant, create an h3 and set the text content to the restaurant's title
        const h3 = card.getElementsByTagName('H3')[0]
        h3.textContent = restaurant.name;

        // For each restaurant, create an paragraph and set the text content to the restaurant's description
        const p = card.getElementsByTagName('P')[0]
        p.textContent = `${restaurant.description.substring(0, 240)}` // Limit to 240 chars

        // Place the card into the div "Cards-Container" 

        cardContainer.appendChild(card);
    })
}