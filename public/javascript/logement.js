var main = document.getElementsByTagName('main');
var button = document.getElementsByClassName('button');
var p = document.getElementsByTagName('p');
var section = document.getElementsByTagName('section')[0];
section.onsubmit =()=>{return false}
var current_main = 0;
main[current_main].style.display = "block";
if (current_main == 0)
{
    button[0].style.display = "none";
    p[0].style.backgroundColor = "royalblue";
    
}

button[1].onclick = ()=>{
    current_main++;
    var back_main = current_main - 1;
    if ((current_main > 0) && (current_main < 12))
    {
        button[0].style.display = "block";
        main[current_main].style.display = "block";
        main[back_main].style.display = "none";
        p[current_main].style.backgroundColor = "royalblue";
        p[back_main].style.backgroundColor = "green";
        button[1].style.cssText ="float:right; margin-right:88px;"
        
        if (current_main == 11)
        {
            button[1].innerHTML = "Ouvrir mon hébergement à la réservation ";
            button[1].style.cssText = "width:300px;left:412px;"
            button[0].style.display ="none";
            button[1].style.display ="none";
            
        }
    }
    else
    {
        if (current_main > 11)
        {
            section.onsubmit =()=>{return true}
            
        }
    }
}
button[0].onclick = ()=>{
    {
        current_main--;
        var back_main =current_main +1;
        
        
        main[current_main].style.display= "block";
        main[back_main].style.display = "none";
        p[current_main].style.backgroundColor ="royalblue";
        p[back_main].style.backgroundColor = "#ededed" ;
        if (current_main < 12)
        {
            button[1].innerHTML = "Next";
            
            
            
        }
        
        
        
        
    }
    if (current_main == 0) {
        button[0].style.display = "none";
    }
}

// options sur le fonction chambre
function chambre() {
    const parent = document.getElementById('options')
    const checkboxes = parent.querySelectorAll(`input[class="checkbox options_list"]:checked`);

    const n = document.getElementById('nombre')
    const nombre = n.querySelectorAll('input[class="nombre_lit"]');
    let values = [];

    nombre.forEach((number) => {
      var n = ".block_" + number.getAttribute('value');

      console.log(number.getAttribute('value'));

  });
    checkboxes.forEach((checkbox) => {
        var target = ".block_" + checkbox.getAttribute('data-type');
        document.querySelector(target).innerHTML =  null;
    });

    checkboxes.forEach((checkbox) => {
        var target = ".block_" + checkbox.getAttribute('data-type');
    //console.log(checkbox.getAttribute('data-type'));
    var val = checkbox.getAttribute('data-value');
    var quantity = checkbox.parentNode.querySelector(".nombre_lit").value
    document.querySelector(target).innerHTML +=  val + "&nbsp(" + quantity + ")" + ","
});
    return values;
}
$(document).on('click', '.savebutton', function() {
    chambre()
})

// option sur le fonction salon
function salon() {
    const parent = document.getElementById('options_salon')
    const checkboxes = parent.querySelectorAll(`input[class="checkbox options_salon"]:checked`);

    const n = document.getElementById('nombre_canape')
    const nombre = n.querySelectorAll('input[class="nombre_lit"]');
    let values = [];

    nombre.forEach((number) => {
      var n = ".salon_" + number.getAttribute('value');

      console.log(number.getAttribute('value'));

  });
    checkboxes.forEach((checkbox) => {
        var target = ".salon_" + checkbox.getAttribute('data-type');
        document.querySelector(target).innerHTML =  null;
    });

    checkboxes.forEach((checkbox) => {
        var target = ".salon_" + checkbox.getAttribute('data-type');
    //console.log(checkbox.getAttribute('data-type'));
    var val = checkbox.getAttribute('data-value');
    var quantity = checkbox.parentNode.querySelector(".nombre_lit").value
    document.querySelector(target).innerHTML +=  val + "&nbsp(" + quantity + ")" + ","
});
    return values;
}
$(document).on('click', '.savebutton', function() {
    salon()
})

// modal sur les fonction autre
function autre() {
    const parent = document.getElementById('options_autre')
    const checkboxes = parent.querySelectorAll(`input[class="checkbox options_autre"]:checked`);

    const n = document.getElementById('nombre_autre')
    const nombre = n.querySelectorAll('input[class="nombre_lit"]');
    let values = [];

    nombre.forEach((number) => {
      var n = ".autre_" + number.getAttribute('value');

      console.log(number.getAttribute('value'));

  });
    checkboxes.forEach((checkbox) => {
        var target = ".autre_" + checkbox.getAttribute('data-type');
        document.querySelector(target).innerHTML =  null;
    });

    checkboxes.forEach((checkbox) => {
        var target = ".autre_" + checkbox.getAttribute('data-type');
    //console.log(checkbox.getAttribute('data-type'));
    var val = checkbox.getAttribute('data-value');
    var quantity = checkbox.parentNode.querySelector(".nombre_lit").value
    document.querySelector(target).innerHTML +=  val + "&nbsp(" + quantity + ")" + ","
});
    return values;
}
$(document).on('click', '.savebutton', function() {
    autre()
})
    //const btn = document.querySelector('.savebutton');
    // btn.addEventListener('click', (event) => {
    //document.querySelector('.za').innerHTML = chambre('values')
    //});


    var cache = document.getElementById("caché")
    var clicke1 = document.getElementById("clicke1")
    var clicke = document.getElementById("clicke")
    clicke1.onclick = function () {
        cache.style.display= "block";
        clicke.style.display="none"

    }
    $(".datepicker").load("contenu.html"); // un élément portant l'id "content" existe dans contenu.html
    $(function($){
        var datepicker = $( ".datepicker").datepicker({
            minDate: 0,
            onSelect: function(date){
                var option = this.id = 'start_date'? 'minDate' : 'maxDate';
                datepicker.not('#'+this.id).datepicker('option',option,date);
            }

        })
    });

    var p1 = document.getElementById("up-1");
    var p2 = document.getElementById("up-2");
    var p3 = document.getElementById("up-3");
    var p4 = document.getElementById("up-4");
    var p5 = document.getElementById("up-5");
    var p6 = document.getElementById("up-6");
    var p7 = document.getElementById("up-7");
    var p8 = document.getElementById("up-8");
    var p12 = document.getElementById('12');
    var p13 = document.getElementById('13');
    var p14 = document.getElementById('14');
    var p15 = document.getElementById('15');
    var p16 = document.getElementById('16');
    var p17 = document.getElementById('17');
    var p18 = document.getElementById('18');
    var p19 = document.getElementById('19');
    p1.onclick = function (){
        p2.style.display="block";
        p13.style.display="block";
        p1.style.display="none";
        p12.style.display="none";
    }
    p2.onclick = function (){
        p3.style.display="block";
        p14.style.display="block";
        p2.style.display="none";
        p13.style.display="none";
    }
    p3.onclick = function (){
        p4.style.display="block";
        p3.style.display="none";
        p14.style.display="none";
        p15.style.display="block";
    }
    p4.onclick = function (){
        p5.style.display="block";
        p4.style.display="none";
        p15.style.display="none";
        p16.style.display="block";
    }
    p5.onclick = function (){
        p6.style.display="block";
        p5.style.display="none";
        p16.style.display="none";
        p17.style.display="block";
    }
    p6.onclick = function (){
        p7.style.display="block";
        p6.style.display="none";
        p17.style.display="none";
        p18.style.display="block";
    }
    p7.onclick = function (){
        p8.style.display="block";
        p7.style.display="none";
        p18.style.display="none";
        p19.style.display="block";
    }
    p8.onclick = function (){
        p8.style.display="none";
        p19.style.display="none";
        
    }
    
    function shwoMyImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#addImage-'+input.id).attr('src', e.target.result);
                $('#addImage-'+input.id).show();
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $(".photo-js").change(function() {
        shwoMyImage(this);

    });


    mapboxgl.accessToken = 'pk.eyJ1Ijoicm9sbGFuZGphc21pZSIsImEiOiJja2V2OXUyazYxbjJhMnduMGZ2NmU3YmRrIn0.qwoke-4A7fwXdW3JXu4cIw';
    var coordinates = document.getElementById('coordinates');
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [55.5418558827792, -21.11980347123354],
        zoom: 9
    });
    var geocoder = new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
    });
    
    var marker = new mapboxgl.Marker({
        draggable: true
    })
    .setLngLat([55.5418558827792, -21.11980347123354])
    .addTo(map);
    
    function onDragEnd() {
        var lngLat = marker.getLngLat();
        coordinates.style.display = 'block';
        coordinates.innerHTML =
        'Longitude: ' + lngLat.lng + '<br />Latitude: ' + lngLat.lat;
        let carte1 = document.getElementById("carte1")
        let carte2 = document.getElementById("carte2")

        carte1.value = lngLat.lng;
        carte2.value = lngLat.lat;
    }
    
    marker.on('dragend', onDragEnd);


    $(".decrement-js").click(function(){
        input = $($(this)).parent().find("input")[1]
        $(input).val(parseInt($(input).val())-1)
    })
    $(".incremente-js").click(function(){
        input = $($(this)).parent().find("input")[1]
        $(input).val(
            parseInt($(input).val())+1
            )
    })
    //

    function getValue() {
    // Sélectionner l'élément input et récupérer sa valeur
    var h1 = document.getElementById('az');
    var ville1 = document.getElementById("ville1").value;
    var adresse1 = document.getElementById("adresse1").value;
    var adresse2 = document.getElementById("adresse4")
    var ville2 = document.getElementById("ville2")

    var d3 = document.getElementById("aza")
    var nom1 = document.getElementById("nom1").value
    var s = document.getElementById("nomm")


    // Afficher la valeur
    h1.textContent = ville1 + "  "+ adresse1;
    d3.textContent = nom1
    s.value = nom1  

    ville2.value = ville1
    adresse2.value = adresse1
}
function getVal (){
  var adresse6 = document.getElementById("adresse4").value
  var ville6 = document.getElementById("ville2").value
  var h3 = document.getElementById('az');
  h3.textContent = ville6 + "  "+ adresse6;


}
function getVa () {
  ss = document.getElementById("nomm").value
  var d33 = document.getElementById("aza")
  d33.textContent = ss
}
function refuserToucheEntree(event)
{
    // Compatibilité IE / Firefox
    if(!event && window.event) {
        event = window.event;
    }

    // IE
    if(event.keyCode == 13) {
        event.returnValue = false;
        event.cancelBubble = true;
    }
    // DOM
    if(event.which == 13) {
        event.preventDefault();
        event.stopPropagation();
    }
}