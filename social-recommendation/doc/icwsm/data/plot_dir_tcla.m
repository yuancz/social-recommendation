load_constants;

% init
legend_content = strvcat('Tags','Comments','Likes','All'); % Friend -> All
subm = 3;
subn = 5;
fontsize = 10;

% do plots
figure(1);
load likes_data.txt;

% Row 1: INCOMING
do_plot('k', 'P(likes|incoming link inter)', likes_data, legend_content, subm, subn, 1, 1, fontsize, ...
    [-1; get_index(AVG,IN,A,LINK_COMMENTS); get_index(AVG,IN,A,LINK_LIKES); get_index(AVG,IN,A,LINK_ALL)]);
do_plot('k', 'P(likes|incoming post inter)', likes_data, legend_content, subm, subn, 1, 2, fontsize, ...
    [get_index(AVG,IN,A,POST_TAGS); get_index(AVG,IN,A,POST_COMMENTS); get_index(AVG,IN,A,POST_LIKES); get_index(AVG,IN,A,POST_ALL)]);
do_plot('k', 'P(likes|incoming photo inter)', likes_data, legend_content, subm, subn, 1, 3, fontsize, ...
    [get_index(AVG,IN,A,PHOTO_TAGS); get_index(AVG,IN,A,PHOTO_COMMENTS); get_index(AVG,IN,A,PHOTO_LIKES); get_index(AVG,IN,A,PHOTO_ALL)]);
do_plot('k', 'P(likes|incoming video inter)', likes_data, legend_content, subm, subn, 1, 4, fontsize, ...
    [get_index(AVG,IN,A,VIDEO_TAGS); get_index(AVG,IN,A,VIDEO_COMMENTS); get_index(AVG,IN,A,VIDEO_LIKES); get_index(AVG,IN,A,VIDEO_ALL)]);
do_plot('k', 'P(likes|all incoming inter)', likes_data, legend_content, subm, subn, 1, 5, fontsize, ...
    [get_index(AVG,IN,A,ALL_TAGS); get_index(AVG,IN,A,ALL_COMMENTS); get_index(AVG,IN,A,ALL_LIKES); -1]); % TODO: All

% Row 2: OUTGOING
do_plot('k', 'P(likes|outgoing link inter)', likes_data, legend_content, subm, subn, 2, 1, fontsize, ...
    [-1; get_index(AVG,OUT,A,LINK_COMMENTS); get_index(AVG,OUT,A,LINK_LIKES); get_index(AVG,OUT,A,LINK_ALL)]);
do_plot('k', 'P(likes|outgoing post inter)', likes_data, legend_content, subm, subn, 2, 2, fontsize, ...
    [get_index(AVG,OUT,A,POST_TAGS); get_index(AVG,OUT,A,POST_COMMENTS); get_index(AVG,OUT,A,POST_LIKES); get_index(AVG,OUT,A,POST_ALL)]);
do_plot('k', 'P(likes|outgoing photo inter)', likes_data, legend_content, subm, subn, 2, 3, fontsize, ...
    [get_index(AVG,OUT,A,PHOTO_TAGS); get_index(AVG,OUT,A,PHOTO_COMMENTS); get_index(AVG,OUT,A,PHOTO_LIKES); get_index(AVG,OUT,A,PHOTO_ALL)]);
do_plot('k', 'P(likes|outgoing video inter)', likes_data, legend_content, subm, subn, 2, 4, fontsize, ...
    [get_index(AVG,OUT,A,VIDEO_TAGS); get_index(AVG,OUT,A,VIDEO_COMMENTS); get_index(AVG,OUT,A,VIDEO_LIKES); get_index(AVG,OUT,A,VIDEO_ALL)]);
do_plot('k', 'P(likes|all outgoing inter)', likes_data, legend_content, subm, subn, 2, 5, fontsize, ...
    [get_index(AVG,OUT,A,ALL_TAGS); get_index(AVG,OUT,A,ALL_COMMENTS); get_index(AVG,OUT,A,ALL_LIKES); -1]); % TODO ALL

% Row 3: BIDIR
do_plot('k', 'P(likes|bidir. link inter)', likes_data, legend_content, subm, subn, 3, 1, fontsize, ...
    [-1; get_index(AVG,BI,A,LINK_COMMENTS); get_index(AVG,BI,A,LINK_LIKES); get_index(AVG,BI,A,LINK_ALL)]);
do_plot('k', 'P(likes|bidir. post inter)', likes_data, legend_content, subm, subn, 3, 2, fontsize, ...
    [get_index(AVG,BI,A,POST_TAGS); get_index(AVG,BI,A,POST_COMMENTS); get_index(AVG,BI,A,POST_LIKES); get_index(AVG,BI,A,POST_ALL)]);
do_plot('k', 'P(likes|bidir. photo inter)', likes_data, legend_content, subm, subn, 3, 3, fontsize, ...
    [get_index(AVG,BI,A,PHOTO_TAGS); get_index(AVG,BI,A,PHOTO_COMMENTS); get_index(AVG,BI,A,PHOTO_LIKES); get_index(AVG,BI,A,PHOTO_ALL)]);
do_plot('k', 'P(likes|bidir. video inter)', likes_data, legend_content, subm, subn, 3, 4, fontsize, ...
    [get_index(AVG,BI,A,VIDEO_TAGS); get_index(AVG,BI,A,VIDEO_COMMENTS); get_index(AVG,BI,A,VIDEO_LIKES); get_index(AVG,BI,A,VIDEO_ALL)]);
do_plot('k', 'P(likes|all bidir. inter)', likes_data, legend_content, subm, subn, 3, 5, fontsize, ...
    [get_index(AVG,BI,A,ALL_TAGS); get_index(AVG,BI,A,ALL_COMMENTS); get_index(AVG,BI,A,ALL_LIKES); -1]); % TODO ALL
