% computes the gaussian probability distribution for cross-validation and test sets

function [pval] = probabEstimate(Xcv,mu,sigma2)

pval=zeros(size(Xcv,1),1);

for i=1:size(Xcv,1)
	pvaltemp=zeros(size(Xcv,2),1);
	for j=1:size(Xcv,2)
		diff=Xcv(i,j)-mu(j);
		diffsq=diff*diff;
		div=diffsq/(2*sigma2(j));
		e=exp(-div);
		pvaltemp(j)=(1/(sqrt(2*pi*sigma2(j))))*e;
	end
	pval(i)=prod(pvaltemp);
end
		
end
