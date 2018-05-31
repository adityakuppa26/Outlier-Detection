function [p] = classi(pvaltest,epsilon)

p=zeros(size(pvaltest,1),1);

for i=1:size(pvaltest,1)
	if(pvaltest(i) < epsilon)
		p(i)=1;
	else
		p(i)=0;
	end
end

end