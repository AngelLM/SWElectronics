var contador = 0;
var looppreview;

$(function() {
  $('#gen').on('click', function() {
      var seqcode = document.getElementById("code").value;
      var arduinocode = "";
      //previewSeq(seqcode, arduinocode);


      var splitted = seqcode.split('-');
      var cantsplitted = splitted[0].split('s').filter(Number);
      var tiempossplitted = splitted[1].split('t').filter(Number);
      var seqsplitted = splitted[2].split('x');
      seqsplitted.splice(0, 1);
      seqsplitted.splice(seqsplitted.length - 1, 1);
      var l1 = [];
      var l2 = [];
      var l3 = [];
      var l4 = [];
      var l5 = [];
      var s1 = [];
      var s2 = [];
      var s3 = [];
      var s4 = [];
      var s5 = [];

      var seqarray = Create2DArray(seqsplitted.length);
      for (var j = 0; j < seqsplitted.length; j++) {
        for (var i = 0; i < seqsplitted[j].length; i++) {
          seqarray[j][i] = seqsplitted[j].slice(i, i + 1);
        }
      }

      for (var t = 0; t < cantsplitted; t++) {
        for (var y = 0; y < 5; y++) {
          seqarray[t].splice(0 + y, 3);
        }
      }

      for (w = 0; w < cantsplitted; w++) {
        l1[w] = seqarray[w][0];
        l2[w] = seqarray[w][1];
        l3[w] = seqarray[w][2];
        l4[w] = seqarray[w][3];
        l5[w] = seqarray[w][4];
        s1[w] = seqarray[w].slice(5, 13).join(",");
        s2[w] = seqarray[w].slice(13, 21).join(",");
        s3[w] = seqarray[w].slice(21, 29).join(",");
        s4[w] = seqarray[w].slice(29, 37).join(",");
        s5[w] = seqarray[w].slice(37, 45).join(",");
      }
      var segmentos = [s1, s2, s3, s4, s5];
      var leds = [l1, l2, l3, l4, l5];

      //hasta aqui bien
      for (var t = 0; t < tiempossplitted.length; t++) {
        tiempossplitted[t] = parseInt(tiempossplitted[t]);
      }
  arduinocode = arduinocode.concat("int secuencias="+cantsplitted+";");
  arduinocode = arduinocode.concat("int tiempos["+cantsplitted+"]={"+tiempossplitted.join(",")+"};");
      for (var numsegment = 0; numsegment < 5; numsegment++) {
        arduinocode = arduinocode.concat("byte s" + numsegment + "[" + cantsplitted + "][8]={");
        for (var i = 0; i < cantsplitted; i++) {
          arduinocode = arduinocode.concat("{" + segmentos[numsegment][i] + "}");
          if (i == cantsplitted - 1) {
            arduinocode = arduinocode.concat("};");
          } else {
            arduinocode = arduinocode.concat(",");
          }
        }
      }
      for (var numled = 0; numled < 5; numled++) {
        arduinocode = arduinocode.concat("byte led" + numled + "[" + cantsplitted + "]={" + leds[numled].join(",") + "};");
      }

    arduinocode = arduinocode.concat("int i=0;int t=0;void setup(){pinMode(2, OUTPUT);pinMode(3, OUTPUT);pinMode(4, OUTPUT);pinMode(5, OUTPUT);pinMode(6, OUTPUT);pinMode(7, OUTPUT);pinMode(8, OUTPUT);pinMode(9, OUTPUT);pinMode(10, OUTPUT);pinMode(11, OUTPUT);pinMode(12, OUTPUT);pinMode(13, OUTPUT);pinMode(A0, OUTPUT);pinMode(A1, OUTPUT);pinMode(A2, OUTPUT);pinMode(A3, OUTPUT);pinMode(A4, OUTPUT);pinMode(A5, OUTPUT);}void loop(){for (i=0; i<secuencias; i++){digitalWrite (A2,led0[i]);digitalWrite (A3,led1[i]);digitalWrite (A4,led2[i]);digitalWrite (A5,led3[i]);digitalWrite (13,led4[i]);for (t=0; t<(tiempos[i]/10);t++){digitalWrite (10,1);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (A1,0);  digitalWrite (A0,0);display(s0[i]);delay(2);alloff();digitalWrite (10,0);  digitalWrite (11,1);  digitalWrite (12,0);  digitalWrite (A1,0);  digitalWrite (A0,0);display(s1[i]);delay(2);alloff();digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,1);  digitalWrite (A1,0);  digitalWrite (A0,0);display(s2[i]);delay(2);alloff();digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (A1,1);  digitalWrite (A0,0);display(s3[i]);delay(2);alloff();digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (A1,0);  digitalWrite (A0,1);display(s4[i]);delay(2);alloff();}}}void display (byte array[]){digitalWrite (3,array[0]);digitalWrite (5,array[1]);digitalWrite (7,array[2]);digitalWrite (8,array[3]);digitalWrite (6,array[4]);digitalWrite (4,array[5]);digitalWrite (2,array[6]);digitalWrite (9,array[7]);}void allof (){digitalWrite (3,0);digitalWrite (5,0);digitalWrite (7,0);digitalWrite (8,0);digitalWrite (6,0);digitalWrite (4,0);digitalWrite (2,0);digitalWrite (9,0);}");

    document.getElementById("code").value = arduinocode;





  });

$('#copy').on('click', function() {
  var copyTextarea = document.querySelector('.js-copytextarea');
  copyTextarea.select();
  document.execCommand('copy');
});
});

function previewSeq(seqcode, arduinocode) {

  //var tiempototal = 0;
  //var contador = 0;
  //var tiempofix = tiempossplitted;

  // 1000, 1000, 200

  //var temp = parseInt(tiempossplitted[tiempossplitted.length - 1]);


  /*for (var u = 0; u < tiempofix.length; u++) {
    tiempototal = tiempototal + tiempofix[u];
  }

  letstry(thiswrite, contador, seqarray, tiempofix);
  looppreview = setInterval(function() {
    letstry(thiswrite, contador, seqarray, tiempofix);
  }, tiempototal);*/
}

function letstry(thiswrite, contador, seq, tiempofix) {
  setTimeout(function() {
    for (var y = 0; y < thiswrite.length; y++) {
      if (seq[contador][y] == 0) {
        thiswrite[y].style.background = "grey";
      } else {
        thiswrite[y].style.background = "red";
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
