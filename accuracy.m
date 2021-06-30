a = readmatrix('final.csv')
f = readfis('Fuzzy3.fis')
for i = 1:14598
	k = evalfis([a(i,2),a(i,3),a(i,4),a(i,5),a(i,6)],f)
	if k< 0.357
		a(i,1) = 0
	else
		a(i,1) = 1
    end
end
	
b = readmatrix('final.csv')
count = 1
for i=1:14598
	exp = b(i,1)
	pred = a(i,7)
	if exp == pred
		count = count+1
    end
end

acc = (count/14598)*100
disp(acc)