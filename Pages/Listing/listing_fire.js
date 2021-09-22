

var db = firebase.firestore();
var coll = db.collection("listing");

const getTasks = () => db.collection("listing").get();
const onGetTasks = (callback) => db.collection("listing").onSnapshot(callback);
const deleteTask = (id) => db.collection("listing").doc(id).delete();
const getTask = (id) => db.collection("listing").doc(id).get();
const updateTask = (id, updatedTask) => db.collection('listing').doc(id).update(updatedTask);

window.addEventListener("DOMContentLoaded", async (e) => {
    var listingCard = document.querySelector('listing-card').innerHTML;

    onGetTasks((querySnapshot) => {
        querySnapshot.forEach((doc) => {
        const prop = doc.data();
        place_div = document.createElement("DIV");
        place_div.setAttribute("class", "place");
        place_div.appendChild(listingCard);
        place_div.find('.property-price').text();
        });
    });
});