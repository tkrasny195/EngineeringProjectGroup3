a(1).b = 1;
a(1).c = 2;
a(2).b = 4;
a(2).c = 1;
a(3).b = 0;
a(3).c = 0;
a(4).b = 5;
a(4).c = 3;
a(5).b = 0;
a(5).c = 20;

mean([a.b])
mean(nonzeros([a.b]))
