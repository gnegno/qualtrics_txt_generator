clear all; clc; 

d = uigetdir;
folder_contents = dir(d);

txt = '[[AdvancedFormat]]\n';

for i = 1:length({folder_contents.name})
    tmp_str = sprintf(      ...
        ['\n\n[[Block:%i]]\n'    ...
        '[[Question:MC:SingleAnswer:Horizontal]]\n' ...
        '<img src="https://raw.githubusercontent.com/gnegno/images_for_qualtrics/master/test_face/%s/face_%03d.png">\n' ...
        '[[AdvancedChoices]]\n' ...
        '[[Choice:1]]\n' ...
        'Same\n' ...
        '[[Choice:2]]\n' ...
        'Different'], i, d(end-13:end), i); 
    
    txt = strcat(txt,tmp_str);
    
end   

fid = fopen( 'survey_text.txt', 'wt');
fprintf(fid, txt);
fclose(fid);


 
