function retval = cast (varargin)
% This function provides 'like' feature for Octave
%
% Behavious of cast(A, 'like', B) in Matlab can be found at
% https://www.mathworks.com/help/matlab/ref/cast.html
%
% Author:        Quanlong He <kyan.ql.he@gmail.com>
% Last-Modified: Fri Jul 28 17:43:07 CST 2017

if nargin == 3 && strcmp(varargin{end-1}, 'like')
    varargin(end-1) = [];
    varargin{end} = class(varargin{end});
end

val = varargin{1};
type = varargin{2};

% Same as m/miscellaneous/cast.m
if (! ischar (type))
    error ("cast: TYPE must be a string");
elseif (! any (strcmp (type, {"int8"; "uint8"; "int16"; "uint16";
                              "int32"; "uint32"; "int64"; "uint64";
                              "double"; "single"; "logical"; "char"})))
    error ("cast: TYPE '%s' is not a built-in type", type);
endif

retval = feval (type, val);

end
