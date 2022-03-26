model laba7_2

parameter Real N= 1003;// максимальное количество людей, которых может заинтересовать товар
parameter Real N0= 7;// количество людей, знающих о товаре в начальный момент времени
Real n(start=N0);

function k
  input Real t;
  output Real result;
algorithm
  result:= 0.00006; //коэф.для второго случая
end k;

function p
  input Real t;
  output Real result;
algorithm
  result:=  0.72; //коэф.для второго случая
end p;

equation
der(n)=(k(time)+p(time)*n)*(N-n);

end laba7_2;
