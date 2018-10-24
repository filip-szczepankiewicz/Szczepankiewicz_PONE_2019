function opt = dtd_gamma_opt_fsz(opt)

% This function sets the options for the dtd_gamma fitting pipeline.
% Code is based on the master branch of https://github.com/filip-szczepankiewicz/md-dmri
% 2018-10-24


if nargin  < 1
    opt = mdm_opt;
end

opt = dtd_gamma_opt(opt);

opt.dtd_gamma.fig_maps = {'s0', 'MD', 'MKi', 'MKa', 'MKt', 'ufa'};
opt.dtd_gamma.fit_lb   = [ .8 1e-10 -[1 1]*0.4e-18 ];
opt.dtd_gamma.fit_ub   = [1.2 4e-9   [1 1]*3.0e-18 ];

opt.dtd_gamma.guess_iters = 300;
opt.dtd_gamma.do_weight = 0;

opt.dtd_gamma.opt_name = mfilename;
opt.dtd_gamma.opt_date = date;

opt.dtd_gamma.do_multiseries = 0;