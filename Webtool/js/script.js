var contador = 0;
var coloroff="#622f2f";
var coloron="red";
var looppreview;

$(function() {
  initial();
  $('#btn').on('click', function() {
    var container = document.getElementById('top_section');
    var clone = $(document.getElementsByClassName('sequence_section')[contador]).clone(true).hide(); //number add
    $(container).append(clone);
    clone.fadeIn(1000);
    contador++;
    initial();
  });

  $('#btnrem').on('click', function() {
    if (contador > 0) {
      contador--;
      $(".sequence_section:last").fadeOut(300, function() {
        $(".sequence_section:last").remove();
        return false;
      });
    }
  });

  $('#gen').on('click', function() {
    var str = "";
    var elementos = top_section.getElementsByClassName("square");
    var seqs = document.getElementsByClassName("timeseq");
    str = str.concat("s" + seqs.length + "s-t");
    for (var j = 0; j < seqs.length; j++) {
      str = str.concat(seqs[j].value + "t");
    }
    str = str.concat("-x");

    for (var n = 0; n < elementos.length; n++) {
      var onoff = elementos[n].style.backgroundColor == coloron ? 1 : 0;
      str = str.concat(onoff);
      if (((n + 1) % 60) == 0) {
        str = str.concat("x");
      }
    }
    clearInterval(looppreview);
    var thiswrite = preview.getElementsByClassName("square");
    var validation=document.getElementById("validation");
    var error= comprobar(seqs, validation);
    if (error==false){
      $("#generated_code").text(str);
      $("#preview").fadeIn(300);
      previewSeq(str, thiswrite);
    }
    else{
      $("#preview").fadeOut(300);
      $("#generated_code").text("Correct the previous errors and click on \"Generate & Preview\" button to obtain your sequence code.");
    }
  });

  $('#js-textareacopybtn').on('click', function() {
    var copyTextarea = document.querySelector('.js-copytextarea');
    copyTextarea.select();
    document.execCommand('copy');
  });
  $('.offall').on('click', function() {
    var sqreset = this.parentNode.parentNode.parentNode.getElementsByClassName("square");
    for (var i = 0; i < sqreset.length; i++) {
      sqreset[i].style.backgroundColor = coloroff;
    }
  });
  $('.onall').on('click', function() {
    var sqreset = this.parentNode.parentNode.parentNode.getElementsByClassName("square");
    for (var i = 0; i < sqreset.length; i++) {
      sqreset[i].style.backgroundColor = "red";
    }
  });
});

function initial() {
  var elements = document.getElementsByClassName("square");
  for (var i = 0; i < elements.length; i++) {
    elements[i].addEventListener("click", changeColor);
  }
}

function changeColor(event) {
  if (this.parentNode.className == "ledsarriba") {
    var c = this.parentNode.getElementsByClassName("square");
    for (var w = 0; w < c.length; w++) {
      c[w].style.backgroundColor = c[w].style.backgroundColor == coloron ? coloroff : coloron;
    }
  } else {
    this.style.backgroundColor = this.style.backgroundColor == coloron ? coloroff : coloron;
  }
}

function previewSeq(seqcode, thiswrite) {
  var splitted = seqcode.split('-');
  var cantsplitted = splitted[0].split('s').filter(Number);
  var tiempossplitted = splitted[1].split('t').filter(Number);
  var seqsplitted = splitted[2].split('x')
  seqsplitted.splice(0,1);
  seqsplitted.splice(seqsplitted.length-1,1);
  var seqarray = Create2DArray(seqsplitted.length);
  for (var j = 0; j < seqsplitted.length; j++) {
    for (var i = 0; i < seqsplitted[j].length; i++) {
      seqarray[j][i] = seqsplitted[j].slice(i, i + 1);
    }
  }
  var tiempototal = 0;
  var contador = 0;
  var tiempofix = tiempossplitted;

  // 1000, 1000, 200

  var temp = parseInt(tiempossplitted[tiempossplitted.length - 1]);
  for (var t = tiempossplitted.length - 1; t >= 0; t--) {
    if (t == 0) {
      tiempofix[0] = temp;
    } else {
      tiempofix[t] = parseInt(tiempossplitted[t - 1]);
    }
  }

  for (var u = 0; u < tiempofix.length; u++) {
    tiempototal = tiempototal + tiempofix[u];
  }
  letstry(thiswrite, contador, seqarray, tiempofix);
  looppreview=setInterval(function() {
    letstry(thiswrite, contador, seqarray, tiempofix);
  }, tiempototal);
}

function letstry(thiswrite, contador, seq, tiempofix) {
  setTimeout(function() {
    for (var y = 0; y < thiswrite.length; y++) {
      if (seq[contador][y] == 0) {
        thiswrite[y].style.background = "black";
      } else {
        thiswrite[y].style.background = coloron;
      }
    }

    if (contador < seq.length - 1) {
      letstry(thiswrite, contador + 1, seq, tiempofix);
    }
  }, tiempofix[contador]);
};

function Create2DArray(rows) {
  var arr = [];

  for (var i = 0; i < rows; i++) {
    arr[i] = [];
  }

  return arr;
};

function comprobar(seqs, validation) {
  var texterror="";
  var finalerror="";
  var error = false;
  for (var i = 0; i < seqs.length; i++) {
    seqs[i].style.background = "";
  }
  for (var i = 0; i < seqs.length; i++) {
    var box = seqs[i];
    var valor = seqs[i].value;
    if (valor == null || valor.length == 0 || /^\s+$/.test(valor)) {
      rederror(box);
      error = true;
      texterror = texterror.concat("<li>Blank time value detected on sequence #" + (i+1) + "</li>");
      //Blank value detected on sequence number: X
    } else if (isNaN(valor)) {
      rederror(box);
      error = true;
      texterror = texterror.concat("<li>Invalid character on time value detected on sequence #" + (i+1) + "</li>");
      //Non number value detected on sequence number: X
    } else if (parseInt(valor) < 100 || parseInt(valor) > 10000) {
      rederror(box);
      error = true;
      texterror = texterror.concat("<li>Invalid time value detected on sequence #" + (i+1) + ". It has to be greater than 100ms and lesser than 10000ms." + "</li>");
      //Invalid value detected on sequence number: X must be greater than 100ms and smaller than 10000ms
    }
  }

  if (error){
    finalerror = finalerror.concat("Please check the following errors: <br> <ul>"+texterror+"</ul>");
  }
  validation.innerHTML=finalerror;
  return error;
};

function rederror(box) {
  box.style.background = "red";
};
