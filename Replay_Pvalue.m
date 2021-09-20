mousenum=[];

for n=1:length(realleftcorrs);
    actualvalleft=abs(realleftcorrs(n));
    actualvalright=abs(realrightcorrs(n));
    shuffvalleft=shuffledrvalsleft(:,n);
    shuffvalright=shuffledrvalsright(:,n);
    shuffvalleft=abs(shuffvalleft);
    shuffvalright=abs(shuffvalright);
    shuffvalleft(shuffvalleft<actualvalleft)=[];
    shuffvalright(shuffvalright<actualvalright)=[];
    shuffvalleft=numel(shuffvalleft);
    shuffvalright=numel(shuffvalright);
    pvalleft=(shuffvalleft+1)/(1000+1);
    pvalright=(shuffvalright+1)/(1000+1);
    mousenum=[[mousenum];[pvalleft,pvalright]];
end;