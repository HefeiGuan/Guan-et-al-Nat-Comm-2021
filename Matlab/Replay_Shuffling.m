% Shuffling firing rate template of each place cell 

shuffledrvalsleft=Inf(numberofshuffles,length(leftdecodes));
shuffledrvalsright=Inf(numberofshuffles,length(rightdecodes));

allpossleft = repmat(norm2tcleft, numberofshuffles, 1); %replicates it underneath N times
shiftby=randi([0 size(allpossleft,2)],size(allpossleft,1),1);
[mb nb] = size(allpossleft);
[R C]=ndgrid(1:mb,1:nb);
C=mod(bsxfun(@plus,C,shiftby(:)-1),nb)+1;
shuffledout = allpossleft;
shuffledout(:) = allpossleft(sub2ind([mb nb], R, C));
allpossleft=mat2cell(shuffledout,[ones(numberofshuffles,1)*size(norm2tcleft,1)],size(norm2tcleft,2));

allpossright = repmat(norm2tcright, numberofshuffles, 1); %replicates it underneath N times
shiftby=randi([0 size(allpossright,2)],size(allpossright,1),1);
[mb nb] = size(allpossright);
[R C]=ndgrid(1:mb,1:nb);
C=mod(bsxfun(@plus,C,shiftby(:)-1),nb)+1;
shuffledout = allpossright;
shuffledout(:) = allpossright(sub2ind([mb nb], R, C));
allpossright=mat2cell(shuffledout,[ones(numberofshuffles,1)*size(norm2tcright,1)],size(norm2tcright,2));
