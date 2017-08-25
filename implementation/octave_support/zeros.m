function val = zeros(varargin)

% This function provides 'like' feature for Octave
%
% Behavious of zeros(N, 'like', B) in Matlab can be found at
% https://www.mathworks.com/help/matlab/ref/zeros.html
%
% Author:        Quanlong He <kyan.ql.he@gmail.com>
% Last-Modified: Fri Jul 28 17:43:07 CST 2017

ref = varargin{end};

if nargin > 2 && strcmp(varargin{end-1}, 'like')
    varargin(end-1) = [];
    varargin{end} = class(varargin{end});
end

if iscomplex(ref)
    val = complex(builtin('zeros', varargin{:}));
else
    val = builtin('zeros', varargin{:});
end

end
