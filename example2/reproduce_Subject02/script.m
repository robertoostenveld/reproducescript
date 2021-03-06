%%

cfg = [];
cfg.dataset = '../rawdata/Subject02.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;

cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.dataset = '../rawdata/Subject02.ds';
cfg.trialfun = 'ft_trialfun_general';
cfg.trialdef.eventtype = 'backpanel trigger';
cfg.trialdef.eventvalue = [3 5 9];
cfg.trialdef.prestim = 1;
cfg.trialdef.poststim = 2;

cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.datafile = '../rawdata/Subject02.ds/Subject02.meg4';
cfg.headerfile = '../rawdata/Subject02.ds/Subject02.res4';
cfg.dataformat = 'ctf_meg4';
cfg.headerformat = 'ctf_res4';
cfg.representation = 'numeric';
cfg.trl = 'reproduce_Subject02/20210112T113748_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { 'reproduce_Subject02/20210112T113748_ft_preprocessing_output_data.mat' };
cfg.channel = { 'MEG', 'EEG029' };
cfg.continuous = 'yes';
ft_preprocessing(cfg);

%%

cfg = [];
cfg.artfctdef.visual.artifact = [39601 40500;
48601 49500;
51301 52200;
71101 72000;
74701 75600;
14401 15300;
27001 27900;
30601 31500;
38701 39600;
66601 67500;
67501 68400;
70201 71100;
98101 99000;
169201 170100;
186301 187200;
207901 208800;
209701 210600];


cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113748_ft_preprocessing_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113755_ft_rejectartifact_output_data.mat' };
ft_rejectartifact(cfg);

%%

cfg = [];
cfg.trials = logical([false;
true;
false;
false;
true;
true;
false;
false;
true;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
true;
false;
true;
true;
false;
false;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
true;
false;
false;
true;
true;
false;
false;
true;
false;
false;
false;
true;
false;
false;
false;
true;
true;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
true;
true;
false;
true;
true;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
false;
false;
false;
false;
true;
true;
false;
true;
false;
false;
false;
true;
true;
false;
false;
false;
false;
false;
false;
false;
false;
true;
true;
false;
false;
true;
false;
true;
true;
false;
true;
true;
true;
false;
false;
false;
true;
false;
true;
true;
false;
false;
false;
false;
false;
false;
false;
true;
false;
false;
true;
true;
false;
true;
false;
true;
true;
false;
false;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
false;
true;
true;
false;
true;
true;
false;
true;
false;
false;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
false;
false;
false;
true;
true;
false;
true;
false;
true;
true;
false;
true;
false;
true;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
false;
false;
true;
false;
false;
false;
true;
false;
true;
false;
true;
true]);
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113755_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113800_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([true;
false;
true;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
false;
false;
false;
false;
true;
true;
false;
false;
false;
false;
false;
true;
true;
true;
false;
false;
false;
false;
false;
true;
true;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
false;
false;
true;
false;
false;
true;
true;
false;
false;
true;
true;
true;
false;
false;
true;
true;
true;
true;
false;
false;
false;
false;
false;
true;
false;
true;
true;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
false;
false;
false;
true;
true;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
false;
true;
false;
true;
false;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
true;
false;
true;
false;
true;
false;
false;
false;
true;
true;
false;
false;
false;
false;
true;
false;
false;
false;
true;
false;
true;
false;
true;
false;
false;
true;
false;
false;
true;
false;
false;
true;
false;
true;
true;
false;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
true;
true;
true;
false;
false;
false;
true;
false;
false;
false;
false;
false;
true;
true;
true;
false;
false;
false;
true;
false;
true;
true;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
false;
true;
true;
false;
true;
true;
true;
false;
false;
true;
false;
true;
false;
true;
false;
false;
true;
true;
false;
true;
false;
false;
false;
true;
false;
false;
false;
false]);
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113755_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113805_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.trials = logical([false;
false;
false;
true;
false;
false;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
true;
true;
true;
false;
true;
false;
false;
true;
false;
false;
true;
true;
false;
true;
false;
false;
false;
false;
true;
false;
true;
true;
true;
false;
false;
true;
false;
false;
true;
false;
false;
false;
true;
false;
false;
true;
true;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
true;
true;
false;
false;
false;
false;
true;
true;
true;
false;
true;
false;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
true;
false;
true;
false;
true;
false;
false;
true;
false;
true;
false;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
true;
true;
false;
true;
true;
false;
true;
false;
false;
false;
false;
false;
true;
false;
false;
false;
true;
true;
false;
true;
false;
true;
false;
true;
false;
false;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
false;
true;
false;
false;
false;
false;
false;
false;
true;
true;
false;
true;
true;
false;
false;
false;
false;
false;
false;
true;
false;
false;
false;
false;
true;
true;
true;
true;
true;
false;
true;
false;
true;
false;
false;
false;
true;
false;
false;
false;
false;
false;
true;
false;
true;
false;
false;
false;
true;
false;
true;
false;
false;
false;
false;
true;
true;
true;
true;
false;
false;
true;
false;
true;
false;
false;
false;
false;
false;
false;
true;
true;
false;
true;
false;
false;
true;
false;
false;
false;
false;
true;
false;
false;
false;
true;
false;
false;
true;
false;
false;
false;
false;
true;
true;
false;
false;
false;
true;
false;
false]);
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113755_ft_rejectartifact_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113809_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.showlabels = 'no';
cfg.fontsize = 6;
cfg.layout = 'CTF151_helmet.mat';
cfg.baseline = [-0.2 0];
cfg.xlim = [-0.2 1];
cfg.ylim = [-3e-13 3e-13];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113805_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject02/20210112T113809_ft_timelockanalysis_output_timelock.mat', 'reproduce_Subject02/20210112T113800_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113818_ft_multiplotER_output';
figure; 
ft_multiplotER(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113800_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113826_ft_prepare_neighbours_output_neighbours.mat' };
ft_prepare_neighbours(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20210112T113826_ft_prepare_neighbours_output_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113800_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113829_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20210112T113826_ft_prepare_neighbours_output_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113805_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113832_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.feedback = 'yes';
cfg.method = 'template';
cfg.neighbours = 'reproduce_Subject02/20210112T113826_ft_prepare_neighbours_output_neighbours.mat';
cfg.planarmethod = 'sincos';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113809_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113836_ft_megplanar_output_data.mat' };
ft_megplanar(cfg);

%%

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113829_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113839_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113832_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113843_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113836_ft_megplanar_output_data.mat' };
cfg.outputfile = { 'reproduce_Subject02/20210112T113847_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113800_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113849_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113805_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113853_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113809_ft_timelockanalysis_output_timelock.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113857_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113839_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113901_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113843_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113906_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

%%

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.zlim = 'maxabs';
cfg.colorbar = 'yes';
cfg.layout = 'CTF151_helmet.mat';
cfg.tracktimeinfo = 'yes';
cfg.trackmeminfo = 'yes';
cfg.inputfile = { 'reproduce_Subject02/20210112T113847_ft_combineplanar_output_data.mat' };
cfg.outputfile = 'reproduce_Subject02/20210112T113911_ft_topoplotER_output';
figure; 
ft_topoplotER(cfg);

