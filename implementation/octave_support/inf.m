function retval = inf(varargin)

% This function provides 'like' feature for Octave
%
% Behavious of inf(N, 'like', B) in Matlab can be found at
% https://www.mathworks.com/help/matlab/ref/inf.html
%
% Author:        Quanlong He <kyan.ql.he@gmail.com>
% Last-Modified: Wed Aug  2 18:40:25 CST 2017

%if nargin == 0
%    retval = builtin('inf');
%    return;
%end
%
%ref = varargin{end};

if nargin > 2 && strcmp(varargin{end-1}, 'like')
    varargin(end-1) = [];
    varargin{end} = class(varargin{end});
end

if nargin > 1 && iscomplex(varargin{end})
    retval = complex(builtin('inf', varargin{:}));
else
    retval = builtin('inf', varargin{:});
end

end
