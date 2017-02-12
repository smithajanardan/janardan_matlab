A = input ('A= ');
B = input ('B= ');
c=0;
d=0;
n = size(A,1);
for k=1:n-1
	q=k;
	cond=0;
	while cond==0
		if (A(q,k)~=0)
				cond=1;
				i=q;
		else
			q=q+1;
			c=c+1;
        end
	end
	if i~=k
		t=A(i,:);
		A(i,:)=A(k,:);
		A(k,:)=t;
		t=B(i);
		B(i)=B(k);
		B(k)=t;
    end
	for j=k+1:n
		p=A(j,k)/A(k,k);
		d=d+1;
		A(j,:)=A(j,:)-p*A(k,:);
		B(j)=B(j)-p*B(k);
		c=c+4;
	end
end
X(n)=B(n)/A(n,n);
d=d+1;
for i=n-1:-1:1
		sum=0;
		for j=i+1:n
			sum=sum+A(i,j)*X(j);
			c=c+2;
		end
		X(i)=(B(i)-sum)/A(i,i);
		c=c+1;
		d=d+1;
end
X'