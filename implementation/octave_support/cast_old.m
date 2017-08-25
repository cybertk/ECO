function retval = cast (varargin)
% This function provides 'like' feature for Octave
%
% Behavious of cast(A, 'like', B) in Matlab can be found at
% https://www.mathworks.com/help/matlab/ref/cast.html
%
% Author:        Quanlong He <kyan.ql.he@gmail.com>
% Last-Modified: Fri Jul 28 17:43:07 CST 2017

script_path = fileparts(mfilename('fullpath'));
rmpath(script_path);
octave_cast = @cast;

warning_state = warning('query', 'Octave:shadow').state;
warning('off', 'Octave:shadow');
addpath(script_path);
warning(warning_state, 'Octave:shadow');

disp("hi")
if nargin == 3 && strcmp(varargin{end-1}, 'like')
    varargin(end-1) = [];
    varargin{end} = class(varargin{end});
end

size(varargin)
class(varargin{end})
retval = feval(octave_cast,varargin{:});

end
