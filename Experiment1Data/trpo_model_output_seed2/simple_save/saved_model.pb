�
�(�(
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(�
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
�
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5��
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
h
Placeholder_1Placeholder*#
_output_shapes
:���������*
shape:���������*
dtype0
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_3Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
Placeholder_4Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
�
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"       *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:
�
.pi/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *�Ѿ*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *��>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
�
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed*
T0*"
_class
loc:@pi/dense/kernel*
seed2
�
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
�
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
�
pi/dense/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
: 
�
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 
�
pi/dense/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
: 
�
pi/dense/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container 
�
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
t
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
�
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
Y
pi/dense/TanhTanhpi/dense/BiasAdd*'
_output_shapes
:��������� *
T0
�
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *$
_class
loc:@pi/dense_1/kernel*
dtype0
�
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *�D��*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *�D�>*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
�
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

: *

seed*
T0*$
_class
loc:@pi/dense_1/kernel*
seed2*
dtype0
�
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
�
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
�
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
�
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
�
!pi/dense_1/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
pi/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:
�
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
a
pi/LogSoftmax
LogSoftmaxpi/dense_1/BiasAdd*'
_output_shapes
:���������*
T0
h
&pi/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
�
pi/multinomial/MultinomialMultinomialpi/dense_1/BiasAdd&pi/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:���������*
seed2'*

seed*
output_dtype0	
v

pi/SqueezeSqueezepi/multinomial/Multinomial*#
_output_shapes
:���������*
squeeze_dims
*
T0	
X
pi/one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
pi/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
axis���������*
TI0*'
_output_shapes
:���������
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*'
_output_shapes
:���������
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*#
_output_shapes
:���������*
	keep_dims( *

Tidx0*
T0
Z
pi/one_hot_1/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
[
pi/one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
pi/one_hot_1/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
axis���������*
TI0	*'
_output_shapes
:���������
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:���������
\
pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
�
pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
q
pi/PlaceholderPlaceholder*'
_output_shapes
:���������*
shape:���������*
dtype0
O
pi/ExpExppi/Placeholder*
T0*'
_output_shapes
:���������
^
pi/subSubpi/Placeholderpi/LogSoftmax*'
_output_shapes
:���������*
T0
Q
pi/mul_2Mulpi/Exppi/sub*
T0*'
_output_shapes
:���������
\
pi/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
pi/Sum_2Sumpi/mul_2pi/Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
R
pi/ConstConst*
valueB: *
dtype0*
_output_shapes
:
a
pi/MeanMeanpi/Sum_2pi/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
/v/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *!
_class
loc:@v/dense/kernel*
dtype0
�
-v/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *�Ѿ*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
�
-v/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *��>*!
_class
loc:@v/dense/kernel*
dtype0
�
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed*
T0*!
_class
loc:@v/dense/kernel*
seed2C
�
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
�
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*!
_class
loc:@v/dense/kernel
�
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
�
v/dense/kernel
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
�
v/dense/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
�
v/dense/bias
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
�
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
v/dense/TanhTanhv/dense/BiasAdd*
T0*'
_output_shapes
:��������� 
�
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"       *#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:
�
/v/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *JQھ*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
�
/v/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *JQ�>*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
�
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@v/dense_1/kernel*
seed2T*
dtype0*
_output_shapes

: *

seed
�
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
�
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
�
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
�
v/dense_1/kernel
VariableV2*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
v/dense_1/kernel/readIdentityv/dense_1/kernel*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
�
 v/dense_1/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:
�
v/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
�
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:*
T0
�
v/dense_1/MatMulMatMulv/dense/Tanhv/dense_1/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
l
	v/SqueezeSqueezev/dense_1/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:���������
O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:���������
=
ExpExpsub*#
_output_shapes
:���������*
T0
L
mulMulExpPlaceholder_2*
T0*#
_output_shapes
:���������
O
ConstConst*
_output_shapes
:*
valueB: *
dtype0
V
MeanMeanmulConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
1
NegNegMean*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:���������
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
F
powPowsub_1pow/y*
T0*#
_output_shapes
:���������
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Z
Mean_1MeanpowConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
^
gradients/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*#
_output_shapes
:���������*

Tmultiples0
`
gradients/Mean_1_grad/Shape_1Shapepow*
T0*
out_type0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
e
gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
_output_shapes
: *
T0
�
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
]
gradients/pow_grad/ShapeShapesub_1*
out_type0*
_output_shapes
:*
T0
]
gradients/pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
�
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:���������
]
gradients/pow_grad/sub/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
T0*
_output_shapes
: 
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*
T0*#
_output_shapes
:���������
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*#
_output_shapes
:���������*
T0
�
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
Tshape0*#
_output_shapes
:���������*
T0
a
gradients/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*
T0*#
_output_shapes
:���������
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
g
"gradients/pow_grad/ones_like/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:���������
�
gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*#
_output_shapes
:���������*
T0
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*#
_output_shapes
:���������*
T0
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*
T0*#
_output_shapes
:���������
�
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*
T0*#
_output_shapes
:���������
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:���������
�
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*
T0*#
_output_shapes
:���������
�
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
�
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape
�
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/pow_grad/Reshape_1*
_output_shapes
: *
T0
g
gradients/sub_1_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
T0*
out_type0
e
gradients/sub_1_grad/Shape_1Shape	v/Squeeze*
T0*
out_type0*
_output_shapes
:
�
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
gradients/sub_1_grad/Sum_1Sum+gradients/pow_grad/tuple/control_dependency,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
�
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:���������
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:���������
o
gradients/v/Squeeze_grad/ShapeShapev/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
,gradients/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
�
1gradients/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_1/BiasAdd_grad/BiasAddGrad
�
9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape*'
_output_shapes
:���������
�
;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Tanh9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1
�
8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*'
_output_shapes
:��������� *
T0*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul
�
:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: 
�
$gradients/v/dense/Tanh_grad/TanhGradTanhGradv/dense/Tanh8gradients/v/dense_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:��������� *
T0
�
*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Tanh_grad/TanhGrad*
_output_shapes
: *
T0*
data_formatNHWC
�
/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Tanh_grad/TanhGrad
�
7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Tanh_grad/TanhGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:��������� *
T0*7
_class-
+)loc:@gradients/v/dense/Tanh_grad/TanhGrad
�
9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
�
.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1
�
6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul*'
_output_shapes
:���������
�
8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1*
_output_shapes

: 
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_1/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
Tshape0*
_output_shapes
: *
T0
b
Reshape_2/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_3/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3concat/axis*
T0*
N*
_output_shapes	
:�*

Tidx0
g
PyFuncPyFuncconcat*
_output_shapes	
:�*
Tin
2*
Tout
2*
token
pyfunc_6
`
Const_2Const*
_output_shapes
:*%
valueB"�              *
dtype0
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
splitSplitVPyFuncConst_2split/split_dim*-
_output_shapes
:�: : :*
	num_split*

Tlen0*
T0
`
Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
c
	Reshape_4ReshapesplitReshape_4/shape*
_output_shapes

: *
T0*
Tshape0
Y
Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
a
	Reshape_5Reshapesplit:1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
: 
`
Reshape_6/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
e
	Reshape_6Reshapesplit:2Reshape_6/shape*
T0*
Tshape0*
_output_shapes

: 
Y
Reshape_7/shapeConst*
valueB:*
dtype0*
_output_shapes
:
a
	Reshape_7Reshapesplit:3Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:

beta1_power/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@v/dense/bias*
dtype0
�
beta1_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *w�?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
k
beta2_power/readIdentitybeta2_power*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
�
%v/dense/kernel/Adam/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB *    *
dtype0*
_output_shapes

: 
�
v/dense/kernel/Adam
VariableV2*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name *!
_class
loc:@v/dense/kernel
�
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

: *
T0*!
_class
loc:@v/dense/kernel
�
'v/dense/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB *    *
dtype0*
_output_shapes

: 
�
v/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

: *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: 
�
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
�
#v/dense/bias/Adam/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
v/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
�
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
�
%v/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB *    
�
v/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
�
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
�
'v/dense_1/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_1/kernel*
valueB *    *
dtype0*
_output_shapes

: 
�
v/dense_1/kernel/Adam
VariableV2*
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: 
�
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
�
)v/dense_1/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

: *#
_class
loc:@v/dense_1/kernel*
valueB *    
�
v/dense_1/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: 
�
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: *
T0
�
%v/dense_1/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
v/dense_1/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
�
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias
�
'v/dense_1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
v/dense_1/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container 
�
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
O

Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_4*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0
�
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_5*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias
�
&Adam/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( 
�
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam
i
Reshape_8/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
n
	Reshape_8Reshapev/dense/kernel/readReshape_8/shape*
T0*
Tshape0*
_output_shapes	
:�
i
Reshape_9/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
k
	Reshape_9Reshapev/dense/bias/readReshape_9/shape*
T0*
Tshape0*
_output_shapes
: 
j
Reshape_10/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
q

Reshape_10Reshapev/dense_1/kernel/readReshape_10/shape*
T0*
Tshape0*
_output_shapes
: 
j
Reshape_11/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
o

Reshape_11Reshapev/dense_1/bias/readReshape_11/shape*
_output_shapes
:*
T0*
Tshape0
V
concat_1/axisConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
�
concat_1ConcatV2	Reshape_8	Reshape_9
Reshape_10
Reshape_11concat_1/axis*
N*
_output_shapes	
:�*

Tidx0*
T0
h
PyFunc_1PyFuncconcat_1*
token
pyfunc_7*
_output_shapes
:*
Tin
2*
Tout
2
g
Const_3Const^Adam*%
valueB"�              *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
_output_shapes
: *
value	B : *
dtype0
�
split_1SplitVPyFunc_1Const_3split_1/split_dim*$
_output_shapes
::::*
	num_split*

Tlen0*
T0
h
Reshape_12/shapeConst^Adam*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_12Reshapesplit_1Reshape_12/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_13/shapeConst^Adam*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_13Reshape	split_1:1Reshape_13/shape*
_output_shapes
: *
T0*
Tshape0
h
Reshape_14/shapeConst^Adam*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_14Reshape	split_1:2Reshape_14/shape*
Tshape0*
_output_shapes

: *
T0
a
Reshape_15/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_15Reshape	split_1:3Reshape_15/shape*
Tshape0*
_output_shapes
:*
T0
�
AssignAssignv/dense/kernel
Reshape_12*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
Assign_1Assignv/dense/bias
Reshape_13*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
Assign_2Assignv/dense_1/kernel
Reshape_14*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
Assign_3Assignv/dense_1/bias
Reshape_15*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
C

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
T0*
_output_shapes
: 
m
#gradients_1/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
�
gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
^
gradients_1/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
�
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
`
gradients_1/Mean_grad/Shape_1Shapemul*
T0*
out_type0*
_output_shapes
:
`
gradients_1/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
e
gradients_1/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
gradients_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
gradients_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
�
gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*#
_output_shapes
:���������*
T0
]
gradients_1/mul_grad/ShapeShapeExp*
T0*
out_type0*
_output_shapes
:
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
_output_shapes
:*
T0*
out_type0
�
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*#
_output_shapes
:���������*
T0
�
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*#
_output_shapes
:���������*
T0
�
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*#
_output_shapes
:���������*
T0*
Tshape0
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*
T0*#
_output_shapes
:���������
`
gradients_1/sub_grad/ShapeShapepi/Sum*
T0*
out_type0*
_output_shapes
:
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
out_type0*
_output_shapes
:*
T0
�
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0
�
gradients_1/sub_grad/Sum_1Sumgradients_1/Exp_grad/mul,gradients_1/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
^
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*#
_output_shapes
:���������*
T0*
Tshape0
c
gradients_1/pi/Sum_grad/ShapeShapepi/mul*
T0*
out_type0*
_output_shapes
:
�
gradients_1/pi/Sum_grad/SizeConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients_1/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
�
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
�
gradients_1/pi/Sum_grad/Shape_1Const*
valueB *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
#gradients_1/pi/Sum_grad/range/startConst*
value	B : *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
#gradients_1/pi/Sum_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0
�
"gradients_1/pi/Sum_grad/Fill/valueConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
T0*

index_type0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
�
%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*
N*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
�
!gradients_1/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0
�
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:
�
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
�
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:������������������
�
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*'
_output_shapes
:���������*

Tmultiples0*
T0
g
gradients_1/pi/mul_grad/ShapeShape
pi/one_hot*
T0*
out_type0*
_output_shapes
:
l
gradients_1/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
out_type0*
_output_shapes
:*
T0
�
-gradients_1/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_grad/Shapegradients_1/pi/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/pi/mul_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/LogSoftmax*'
_output_shapes
:���������*
T0
�
gradients_1/pi/mul_grad/SumSumgradients_1/pi/mul_grad/Mul-gradients_1/pi/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
gradients_1/pi/mul_grad/ReshapeReshapegradients_1/pi/mul_grad/Sumgradients_1/pi/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_1/pi/mul_grad/Mul_1Mul
pi/one_hotgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:���������
�
gradients_1/pi/mul_grad/Sum_1Sumgradients_1/pi/mul_grad/Mul_1/gradients_1/pi/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
!gradients_1/pi/mul_grad/Reshape_1Reshapegradients_1/pi/mul_grad/Sum_1gradients_1/pi/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
j
"gradients_1/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:���������*
T0

4gradients_1/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
"gradients_1/pi/LogSoftmax_grad/SumSum!gradients_1/pi/mul_grad/Reshape_14gradients_1/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:���������
�
"gradients_1/pi/LogSoftmax_grad/mulMul"gradients_1/pi/LogSoftmax_grad/Sum"gradients_1/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:���������
�
"gradients_1/pi/LogSoftmax_grad/subSub!gradients_1/pi/mul_grad/Reshape_1"gradients_1/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:���������
�
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
�
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_1/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_1/pi/LogSoftmax_grad/sub*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:��������� 
�
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
transpose_b( *
T0*
_output_shapes

: *
transpose_a(
c
Reshape_16/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�

Reshape_16Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_16/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_17/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_17Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_17/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_18/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_18Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_19/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_19Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_19/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_2ConcatV2
Reshape_16
Reshape_17
Reshape_18
Reshape_19concat_2/axis*
N*
_output_shapes	
:�*

Tidx0*
T0
T
gradients_2/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_2/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
p
&gradients_2/pi/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients_2/pi/Mean_grad/ReshapeReshapegradients_2/Fill&gradients_2/pi/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
_output_shapes
:*
T0*
out_type0
�
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
h
 gradients_2/pi/Mean_grad/Shape_1Shapepi/Sum_2*
_output_shapes
:*
T0*
out_type0
c
 gradients_2/pi/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients_2/pi/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients_2/pi/Mean_grad/ProdProd gradients_2/pi/Mean_grad/Shape_1gradients_2/pi/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
j
 gradients_2/pi/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients_2/pi/Mean_grad/Prod_1Prod gradients_2/pi/Mean_grad/Shape_2 gradients_2/pi/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"gradients_2/pi/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
_output_shapes
: *
T0
�
gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
�
 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*#
_output_shapes
:���������*
T0
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/mul_2*
T0*
out_type0*
_output_shapes
:
�
gradients_2/pi/Sum_2_grad/SizeConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0
�
gradients_2/pi/Sum_2_grad/addAddpi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
�
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: 
�
!gradients_2/pi/Sum_2_grad/Shape_1Const*
valueB *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
�
%gradients_2/pi/Sum_2_grad/range/startConst*
value	B : *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
�
%gradients_2/pi/Sum_2_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:*

Tidx0
�
$gradients_2/pi/Sum_2_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*

index_type0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
T0
�
'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
N*
_output_shapes
:
�
#gradients_2/pi/Sum_2_grad/Maximum/yConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0
�
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:
�
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:
�
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:������������������
�
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*
T0*'
_output_shapes
:���������*

Tmultiples0
e
gradients_2/pi/mul_2_grad/ShapeShapepi/Exp*
out_type0*
_output_shapes
:*
T0
g
!gradients_2/pi/mul_2_grad/Shape_1Shapepi/sub*
T0*
out_type0*
_output_shapes
:
�
/gradients_2/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_2_grad/Shape!gradients_2/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
~
gradients_2/pi/mul_2_grad/MulMulgradients_2/pi/Sum_2_grad/Tilepi/sub*
T0*'
_output_shapes
:���������
�
gradients_2/pi/mul_2_grad/SumSumgradients_2/pi/mul_2_grad/Mul/gradients_2/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
!gradients_2/pi/mul_2_grad/ReshapeReshapegradients_2/pi/mul_2_grad/Sumgradients_2/pi/mul_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_2/pi/mul_2_grad/Mul_1Mulpi/Expgradients_2/pi/Sum_2_grad/Tile*
T0*'
_output_shapes
:���������
�
gradients_2/pi/mul_2_grad/Sum_1Sumgradients_2/pi/mul_2_grad/Mul_11gradients_2/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
#gradients_2/pi/mul_2_grad/Reshape_1Reshapegradients_2/pi/mul_2_grad/Sum_1!gradients_2/pi/mul_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
k
gradients_2/pi/sub_grad/ShapeShapepi/Placeholder*
T0*
out_type0*
_output_shapes
:
l
gradients_2/pi/sub_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
�
-gradients_2/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_grad/Shapegradients_2/pi/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_2/pi/sub_grad/SumSum#gradients_2/pi/mul_2_grad/Reshape_1-gradients_2/pi/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_2/pi/sub_grad/ReshapeReshapegradients_2/pi/sub_grad/Sumgradients_2/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_2/pi/sub_grad/Sum_1Sum#gradients_2/pi/mul_2_grad/Reshape_1/gradients_2/pi/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
d
gradients_2/pi/sub_grad/NegNeggradients_2/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
�
!gradients_2/pi/sub_grad/Reshape_1Reshapegradients_2/pi/sub_grad/Neggradients_2/pi/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
j
"gradients_2/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:���������*
T0

4gradients_2/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
"gradients_2/pi/LogSoftmax_grad/SumSum!gradients_2/pi/sub_grad/Reshape_14gradients_2/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:���������
�
"gradients_2/pi/LogSoftmax_grad/mulMul"gradients_2/pi/LogSoftmax_grad/Sum"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:���������
�
"gradients_2/pi/LogSoftmax_grad/subSub!gradients_2/pi/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/mul*'
_output_shapes
:���������*
T0
�
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_2/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
�
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(*
T0
�
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_2/pi/LogSoftmax_grad/sub*
transpose_b( *
T0*
_output_shapes

: *
transpose_a(
�
'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:��������� 
�
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
c
Reshape_20/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_20Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_20/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_21/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�

Reshape_21Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_21/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_22/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_22Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_22/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_23/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�

Reshape_23Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_23/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_3/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
concat_3ConcatV2
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_3/axis*
T0*
N*
_output_shapes	
:�*

Tidx0
X
Placeholder_5Placeholder*
shape:�*
dtype0*
_output_shapes	
:�
K
mul_1Mulconcat_3Placeholder_5*
T0*
_output_shapes	
:�
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
X
SumSummul_1Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
T
gradients_3/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_3/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
l
"gradients_3/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
e
gradients_3/Sum_grad/ConstConst*
valueB:�*
dtype0*
_output_shapes
:
�
gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*
_output_shapes	
:�*

Tmultiples0*
T0
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
_output_shapes	
:�*
T0
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
T0*
_output_shapes	
:�
`
gradients_3/concat_3_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
T0*
_output_shapes
: 
j
gradients_3/concat_3_grad/ShapeConst*
valueB:�*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_1Const*
_output_shapes
:*
valueB: *
dtype0
l
!gradients_3/concat_3_grad/Shape_2Const*
valueB:�*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_3Const*
valueB:*
dtype0*
_output_shapes
:
�
&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3*
N*,
_output_shapes
::::
�
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
_output_shapes	
:�*
Index0*
T0
�
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
_output_shapes
: *
Index0*
T0
�
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
Index0*
T0*
_output_shapes	
:�
�
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
Index0*
T0*
_output_shapes
:
r
!gradients_3/Reshape_20_grad/ShapeConst*
_output_shapes
:*
valueB"       *
dtype0
�
#gradients_3/Reshape_20_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_20_grad/Shape*
_output_shapes

: *
T0*
Tshape0
k
!gradients_3/Reshape_21_grad/ShapeConst*
valueB: *
dtype0*
_output_shapes
:
�
#gradients_3/Reshape_21_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_21_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
r
!gradients_3/Reshape_22_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
�
#gradients_3/Reshape_22_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_22_grad/Shape*
T0*
Tshape0*
_output_shapes

: 
k
!gradients_3/Reshape_23_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
#gradients_3/Reshape_23_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_23_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_20_grad/Reshape*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_20_grad/Reshape*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
out_type0*
_output_shapes
:
�
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
�
Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
�
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*
T0*

index_type0
�
Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
�
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
�
Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_21_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

: 
�
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*'
_output_shapes
:��������� 
�
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/sub#gradients_3/Reshape_22_grad/Reshape*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_22_grad/Reshape*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/sub*
T0*
out_type0*
_output_shapes
:
�
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
�
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
�
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
T0*

index_type0*
_output_shapes
:
�
Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
�
Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_23_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
_output_shapes

:*
T0
�
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*'
_output_shapes
:���������
�
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:��������� 
�
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*
T0*'
_output_shapes
:��������� 
�
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:��������� *
T0
�
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*
T0*'
_output_shapes
:��������� 
�
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*'
_output_shapes
:��������� *
T0
�
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad"gradients_2/pi/LogSoftmax_grad/sub*
transpose_b( *
T0*
_output_shapes

: *
transpose_a(
�
gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*
T0*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:���������
�
9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ShapeShape!gradients_2/pi/sub_grad/Reshape_1*
T0*
out_type0*
_output_shapes
:
�
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/mul*
T0*
out_type0*
_output_shapes
:
�
Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/SumSumgradients_3/AddN_1Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1Sumgradients_3/AddN_1Kgradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegNeg9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1*
T0*
_output_shapes
:
�
=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1Reshape7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Neg;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/Sum*
T0*
out_type0*
_output_shapes
:
�
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/Exp*
T0*
out_type0*
_output_shapes
:
�
Igradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:���������
�
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulIgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Mul"gradients_2/pi/LogSoftmax_grad/Sum=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1*
T0*'
_output_shapes
:���������
�
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Kgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*'
_output_shapes
:���������*
T0
j
"gradients_3/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:���������*
T0

4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
"gradients_3/pi/LogSoftmax_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:���������*
	keep_dims(*

Tidx0
�
"gradients_3/pi/LogSoftmax_grad/mulMul"gradients_3/pi/LogSoftmax_grad/Sum"gradients_3/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:���������
�
"gradients_3/pi/LogSoftmax_grad/subSub7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul"gradients_3/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:���������
�
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_3/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
�
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_3/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(*
T0
�
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_3/pi/LogSoftmax_grad/sub*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
gradients_3/AddN_2AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
N*'
_output_shapes
:��������� 
�
'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_2*'
_output_shapes
:��������� *
T0
�
gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*
N*
_output_shapes

: *
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1
�
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
c
Reshape_24/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_24Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_25/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_25Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_26/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
o

Reshape_26Reshapegradients_3/AddN_3Reshape_26/shape*
Tshape0*
_output_shapes	
:�*
T0
c
Reshape_27/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_27Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_4ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27concat_4/axis*
T0*
N*
_output_shapes	
:�*

Tidx0
L
mul_2/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
J
mul_2Mulmul_2/xPlaceholder_5*
T0*
_output_shapes	
:�
A
addAddconcat_4mul_2*
_output_shapes	
:�*
T0
c
Reshape_28/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
q

Reshape_28Reshapepi/dense/kernel/readReshape_28/shape*
Tshape0*
_output_shapes	
:�*
T0
c
Reshape_29/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
n

Reshape_29Reshapepi/dense/bias/readReshape_29/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_30/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
s

Reshape_30Reshapepi/dense_1/kernel/readReshape_30/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_31/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p

Reshape_31Reshapepi/dense_1/bias/readReshape_31/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_5ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31concat_5/axis*
_output_shapes	
:�*

Tidx0*
T0*
N
`
Const_5Const*%
valueB"�       �     *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
split_2SplitVPlaceholder_5Const_5split_2/split_dim*
T0*.
_output_shapes
:�: :�:*
	num_split*

Tlen0
a
Reshape_32/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_32Reshapesplit_2Reshape_32/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_33/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_33Reshape	split_2:1Reshape_33/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_34/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_34Reshape	split_2:2Reshape_34/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_35/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_35Reshape	split_2:3Reshape_35/shape*
_output_shapes
:*
T0*
Tshape0
�
Assign_4Assignpi/dense/kernel
Reshape_32*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
Assign_5Assignpi/dense/bias
Reshape_33*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
Assign_6Assignpi/dense_1/kernel
Reshape_34*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
Assign_7Assignpi/dense_1/bias
Reshape_35*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
@
group_deps_2NoOp	^Assign_4	^Assign_5	^Assign_6	^Assign_7
�
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign
c
Reshape_36/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
q

Reshape_36Reshapepi/dense/kernel/readReshape_36/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_37/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
n

Reshape_37Reshapepi/dense/bias/readReshape_37/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_38/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
s

Reshape_38Reshapepi/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_39/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
p

Reshape_39Reshapepi/dense_1/bias/readReshape_39/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_40/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p

Reshape_40Reshapev/dense/kernel/readReshape_40/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_41/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
m

Reshape_41Reshapev/dense/bias/readReshape_41/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_42/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
q

Reshape_42Reshapev/dense_1/kernel/readReshape_42/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_43/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
o

Reshape_43Reshapev/dense_1/bias/readReshape_43/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_44/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
l

Reshape_44Reshapebeta1_power/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_45/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
l

Reshape_45Reshapebeta2_power/readReshape_45/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_46/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_46Reshapev/dense/kernel/Adam/readReshape_46/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_47/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
w

Reshape_47Reshapev/dense/kernel/Adam_1/readReshape_47/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_48/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
r

Reshape_48Reshapev/dense/bias/Adam/readReshape_48/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_49/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
t

Reshape_49Reshapev/dense/bias/Adam_1/readReshape_49/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_50/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_50Reshapev/dense_1/kernel/Adam/readReshape_50/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_51/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x

Reshape_51Reshapev/dense_1/kernel/Adam_1/readReshape_51/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_52/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
t

Reshape_52Reshapev/dense_1/bias/Adam/readReshape_52/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_53/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_53Reshapev/dense_1/bias/Adam_1/readReshape_53/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_6/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
concat_6ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53concat_6/axis*
_output_shapes	
:�*

Tidx0*
T0*
N
h
PyFunc_2PyFuncconcat_6*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_8
�
Const_6Const*]
valueTBR"H�       �     �                    �   �                         *
dtype0*
_output_shapes
:
S
split_3/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
split_3SplitVPyFunc_2Const_6split_3/split_dim*
T0*\
_output_shapesJ
H::::::::::::::::::*
	num_split*

Tlen0
a
Reshape_54/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_54Reshapesplit_3Reshape_54/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_55/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_55Reshape	split_3:1Reshape_55/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_56/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_56Reshape	split_3:2Reshape_56/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_57/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_57Reshape	split_3:3Reshape_57/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_58/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_58Reshape	split_3:4Reshape_58/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_59/shapeConst*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_59Reshape	split_3:5Reshape_59/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_60/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_60Reshape	split_3:6Reshape_60/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_61/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_61Reshape	split_3:7Reshape_61/shape*
T0*
Tshape0*
_output_shapes
:
S
Reshape_62/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_62Reshape	split_3:8Reshape_62/shape*
T0*
Tshape0*
_output_shapes
: 
S
Reshape_63/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_63Reshape	split_3:9Reshape_63/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_64/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
j

Reshape_64Reshape
split_3:10Reshape_64/shape*
_output_shapes

: *
T0*
Tshape0
a
Reshape_65/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_65Reshape
split_3:11Reshape_65/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_66/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
f

Reshape_66Reshape
split_3:12Reshape_66/shape*
_output_shapes
: *
T0*
Tshape0
Z
Reshape_67/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_67Reshape
split_3:13Reshape_67/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_68/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_68Reshape
split_3:14Reshape_68/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_69/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
j

Reshape_69Reshape
split_3:15Reshape_69/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_70/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_70Reshape
split_3:16Reshape_70/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_71/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_71Reshape
split_3:17Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
�
Assign_8Assignpi/dense/kernel
Reshape_54*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
Assign_9Assignpi/dense/bias
Reshape_55*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
	Assign_10Assignpi/dense_1/kernel
Reshape_56*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
	Assign_11Assignpi/dense_1/bias
Reshape_57*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
�
	Assign_12Assignv/dense/kernel
Reshape_58*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
	Assign_13Assignv/dense/bias
Reshape_59*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
	Assign_14Assignv/dense_1/kernel
Reshape_60*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
	Assign_15Assignv/dense_1/bias
Reshape_61*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
	Assign_16Assignbeta1_power
Reshape_62*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
	Assign_17Assignbeta2_power
Reshape_63*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
	Assign_18Assignv/dense/kernel/Adam
Reshape_64*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
	Assign_19Assignv/dense/kernel/Adam_1
Reshape_65*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
	Assign_20Assignv/dense/bias/Adam
Reshape_66*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
	Assign_21Assignv/dense/bias/Adam_1
Reshape_67*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
	Assign_22Assignv/dense_1/kernel/Adam
Reshape_68*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
	Assign_23Assignv/dense_1/kernel/Adam_1
Reshape_69*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
	Assign_24Assignv/dense_1/bias/Adam
Reshape_70*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
	Assign_25Assignv/dense_1/bias/Adam_1
Reshape_71*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
group_deps_3NoOp
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25	^Assign_8	^Assign_9
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d820fe07c2b54f8e943d9dd81d233dfb/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
�
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_6Assignv/dense/biassave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_7Assignv/dense/bias/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_8Assignv/dense/bias/Adam_1save/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save/Assign_9Assignv/dense/kernelsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_10Assignv/dense/kernel/Adamsave/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_11Assignv/dense/kernel/Adam_1save/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save/Assign_12Assignv/dense_1/biassave/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save/Assign_13Assignv/dense_1/bias/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save/Assign_14Assignv/dense_1/bias/Adam_1save/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_15Assignv/dense_1/kernelsave/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_16Assignv/dense_1/kernel/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save/Assign_17Assignv/dense_1/kernel/Adam_1save/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_56fe1aa148a74bad99ceeeaf4e009e2b/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*
T0*

axis *
N
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
�
save_1/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_1/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_1/Assign_6Assignv/dense/biassave_1/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_1/Assign_7Assignv/dense/bias/Adamsave_1/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_1/Assign_8Assignv/dense/bias/Adam_1save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_9Assignv/dense/kernelsave_1/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_1/Assign_10Assignv/dense/kernel/Adamsave_1/RestoreV2:10*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_1/Assign_11Assignv/dense/kernel/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_12Assignv/dense_1/biassave_1/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_1/Assign_13Assignv/dense_1/bias/Adamsave_1/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_1/Assign_14Assignv/dense_1/bias/Adam_1save_1/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_1/Assign_15Assignv/dense_1/kernelsave_1/RestoreV2:15*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_1/Assign_16Assignv/dense_1/kernel/Adamsave_1/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_17Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_65f475be92b54ae7a712a977fc4cb68b/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_2/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_2/ShardedFilename
�
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
�
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
�
save_2/RestoreV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
!save_2/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_2Assignpi/dense/biassave_2/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_3Assignpi/dense/kernelsave_2/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_2/Assign_4Assignpi/dense_1/biassave_2/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_2/Assign_5Assignpi/dense_1/kernelsave_2/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_2/Assign_6Assignv/dense/biassave_2/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_7Assignv/dense/bias/Adamsave_2/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_8Assignv/dense/bias/Adam_1save_2/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_2/Assign_9Assignv/dense/kernelsave_2/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_2/Assign_10Assignv/dense/kernel/Adamsave_2/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_2/Assign_11Assignv/dense/kernel/Adam_1save_2/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_2/Assign_12Assignv/dense_1/biassave_2/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_2/Assign_13Assignv/dense_1/bias/Adamsave_2/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_2/Assign_14Assignv/dense_1/bias/Adam_1save_2/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_2/Assign_15Assignv/dense_1/kernelsave_2/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_2/Assign_16Assignv/dense_1/kernel/Adamsave_2/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_2/Assign_17Assignv/dense_1/kernel/Adam_1save_2/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_1ad23771835644329e54a37b97f9c7dc/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_3/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_3/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_3/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
�
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(
�
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
_output_shapes
: *
T0
�
save_3/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_3/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_1Assignbeta2_powersave_3/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_2Assignpi/dense/biassave_3/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_3Assignpi/dense/kernelsave_3/RestoreV2:3*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
�
save_3/Assign_4Assignpi/dense_1/biassave_3/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_3/Assign_5Assignpi/dense_1/kernelsave_3/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_3/Assign_6Assignv/dense/biassave_3/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_3/Assign_7Assignv/dense/bias/Adamsave_3/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_3/Assign_8Assignv/dense/bias/Adam_1save_3/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_3/Assign_9Assignv/dense/kernelsave_3/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_3/Assign_10Assignv/dense/kernel/Adamsave_3/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_3/Assign_11Assignv/dense/kernel/Adam_1save_3/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_3/Assign_12Assignv/dense_1/biassave_3/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_3/Assign_13Assignv/dense_1/bias/Adamsave_3/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_3/Assign_14Assignv/dense_1/bias/Adam_1save_3/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_3/Assign_15Assignv/dense_1/kernelsave_3/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_3/Assign_16Assignv/dense_1/kernel/Adamsave_3/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_3/Assign_17Assignv/dense_1/kernel/Adam_1save_3/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_4/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_e7350735ee744de1b4c2dfc4b7c41ea7/part
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_4/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_4/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
�
save_4/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_4/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_4/ShardedFilename
�
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(
�
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
�
save_4/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_4/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_4/Assign_1Assignbeta2_powersave_4/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_4/Assign_2Assignpi/dense/biassave_4/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_4/Assign_3Assignpi/dense/kernelsave_4/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_4/Assign_4Assignpi/dense_1/biassave_4/RestoreV2:4*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_4/Assign_5Assignpi/dense_1/kernelsave_4/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_4/Assign_6Assignv/dense/biassave_4/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_4/Assign_7Assignv/dense/bias/Adamsave_4/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_4/Assign_8Assignv/dense/bias/Adam_1save_4/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_4/Assign_9Assignv/dense/kernelsave_4/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_4/Assign_10Assignv/dense/kernel/Adamsave_4/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_4/Assign_11Assignv/dense/kernel/Adam_1save_4/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_4/Assign_12Assignv/dense_1/biassave_4/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_4/Assign_13Assignv/dense_1/bias/Adamsave_4/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_4/Assign_14Assignv/dense_1/bias/Adam_1save_4/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_4/Assign_15Assignv/dense_1/kernelsave_4/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_4/Assign_16Assignv/dense_1/kernel/Adamsave_4/RestoreV2:16*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_4/Assign_17Assignv/dense_1/kernel/Adam_1save_4/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_2^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
[
save_5/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_5/StringJoin/inputs_1Const*<
value3B1 B+_temp_25ad1ee83b5c42aa9a178943d6a31d2d/part*
dtype0*
_output_shapes
: 
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_5/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_5/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
�
save_5/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_5/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_5/ShardedFilename
�
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(
�
save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
T0*
_output_shapes
: 
�
save_5/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_5/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_5/AssignAssignbeta1_powersave_5/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_5/Assign_1Assignbeta2_powersave_5/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_2Assignpi/dense/biassave_5/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_3Assignpi/dense/kernelsave_5/RestoreV2:3*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
�
save_5/Assign_4Assignpi/dense_1/biassave_5/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_5/Assign_5Assignpi/dense_1/kernelsave_5/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_5/Assign_6Assignv/dense/biassave_5/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_7Assignv/dense/bias/Adamsave_5/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_5/Assign_8Assignv/dense/bias/Adam_1save_5/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_5/Assign_9Assignv/dense/kernelsave_5/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_5/Assign_10Assignv/dense/kernel/Adamsave_5/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_5/Assign_11Assignv/dense/kernel/Adam_1save_5/RestoreV2:11*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_5/Assign_12Assignv/dense_1/biassave_5/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_5/Assign_13Assignv/dense_1/bias/Adamsave_5/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_5/Assign_14Assignv/dense_1/bias/Adam_1save_5/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_5/Assign_15Assignv/dense_1/kernelsave_5/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_5/Assign_16Assignv/dense_1/kernel/Adamsave_5/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_5/Assign_17Assignv/dense_1/kernel/Adam_1save_5/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_2^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard
[
save_6/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_6/filenamePlaceholderWithDefaultsave_6/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_6/ConstPlaceholderWithDefaultsave_6/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_6/StringJoin/inputs_1Const*<
value3B1 B+_temp_9aaaa15c0bad4b59b877935124ed2ec2/part*
dtype0*
_output_shapes
: 
{
save_6/StringJoin
StringJoinsave_6/Constsave_6/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_6/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_6/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_6/ShardedFilenameShardedFilenamesave_6/StringJoinsave_6/ShardedFilename/shardsave_6/num_shards*
_output_shapes
: 
�
save_6/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_6/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_6/SaveV2SaveV2save_6/ShardedFilenamesave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_6/control_dependencyIdentitysave_6/ShardedFilename^save_6/SaveV2*
T0*)
_class
loc:@save_6/ShardedFilename*
_output_shapes
: 
�
-save_6/MergeV2Checkpoints/checkpoint_prefixesPacksave_6/ShardedFilename^save_6/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_6/MergeV2CheckpointsMergeV2Checkpoints-save_6/MergeV2Checkpoints/checkpoint_prefixessave_6/Const*
delete_old_dirs(
�
save_6/IdentityIdentitysave_6/Const^save_6/MergeV2Checkpoints^save_6/control_dependency*
_output_shapes
: *
T0
�
save_6/RestoreV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
!save_6/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_6/AssignAssignbeta1_powersave_6/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_1Assignbeta2_powersave_6/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_2Assignpi/dense/biassave_6/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_6/Assign_3Assignpi/dense/kernelsave_6/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_6/Assign_4Assignpi/dense_1/biassave_6/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_6/Assign_5Assignpi/dense_1/kernelsave_6/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_6/Assign_6Assignv/dense/biassave_6/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_7Assignv/dense/bias/Adamsave_6/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_6/Assign_8Assignv/dense/bias/Adam_1save_6/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_6/Assign_9Assignv/dense/kernelsave_6/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_6/Assign_10Assignv/dense/kernel/Adamsave_6/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_6/Assign_11Assignv/dense/kernel/Adam_1save_6/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_6/Assign_12Assignv/dense_1/biassave_6/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_6/Assign_13Assignv/dense_1/bias/Adamsave_6/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_6/Assign_14Assignv/dense_1/bias/Adam_1save_6/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_6/Assign_15Assignv/dense_1/kernelsave_6/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_6/Assign_16Assignv/dense_1/kernel/Adamsave_6/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_6/Assign_17Assignv/dense_1/kernel/Adam_1save_6/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_6/restore_shardNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_10^save_6/Assign_11^save_6/Assign_12^save_6/Assign_13^save_6/Assign_14^save_6/Assign_15^save_6/Assign_16^save_6/Assign_17^save_6/Assign_2^save_6/Assign_3^save_6/Assign_4^save_6/Assign_5^save_6/Assign_6^save_6/Assign_7^save_6/Assign_8^save_6/Assign_9
1
save_6/restore_allNoOp^save_6/restore_shard
[
save_7/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_7/filenamePlaceholderWithDefaultsave_7/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_7/ConstPlaceholderWithDefaultsave_7/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_7/StringJoin/inputs_1Const*<
value3B1 B+_temp_670ab1aa8cf54bbe8f760518f55f8078/part*
dtype0*
_output_shapes
: 
{
save_7/StringJoin
StringJoinsave_7/Constsave_7/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_7/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_7/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_7/ShardedFilenameShardedFilenamesave_7/StringJoinsave_7/ShardedFilename/shardsave_7/num_shards*
_output_shapes
: 
�
save_7/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_7/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_7/SaveV2SaveV2save_7/ShardedFilenamesave_7/SaveV2/tensor_namessave_7/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_7/control_dependencyIdentitysave_7/ShardedFilename^save_7/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_7/ShardedFilename
�
-save_7/MergeV2Checkpoints/checkpoint_prefixesPacksave_7/ShardedFilename^save_7/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_7/MergeV2CheckpointsMergeV2Checkpoints-save_7/MergeV2Checkpoints/checkpoint_prefixessave_7/Const*
delete_old_dirs(
�
save_7/IdentityIdentitysave_7/Const^save_7/MergeV2Checkpoints^save_7/control_dependency*
T0*
_output_shapes
: 
�
save_7/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_7/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_7/RestoreV2	RestoreV2save_7/Constsave_7/RestoreV2/tensor_names!save_7/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_7/AssignAssignbeta1_powersave_7/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_7/Assign_1Assignbeta2_powersave_7/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_7/Assign_2Assignpi/dense/biassave_7/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_7/Assign_3Assignpi/dense/kernelsave_7/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_7/Assign_4Assignpi/dense_1/biassave_7/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
�
save_7/Assign_5Assignpi/dense_1/kernelsave_7/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_7/Assign_6Assignv/dense/biassave_7/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_7/Assign_7Assignv/dense/bias/Adamsave_7/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_7/Assign_8Assignv/dense/bias/Adam_1save_7/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_7/Assign_9Assignv/dense/kernelsave_7/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_7/Assign_10Assignv/dense/kernel/Adamsave_7/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_7/Assign_11Assignv/dense/kernel/Adam_1save_7/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_7/Assign_12Assignv/dense_1/biassave_7/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_7/Assign_13Assignv/dense_1/bias/Adamsave_7/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_7/Assign_14Assignv/dense_1/bias/Adam_1save_7/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_7/Assign_15Assignv/dense_1/kernelsave_7/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_7/Assign_16Assignv/dense_1/kernel/Adamsave_7/RestoreV2:16*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_7/Assign_17Assignv/dense_1/kernel/Adam_1save_7/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_7/restore_shardNoOp^save_7/Assign^save_7/Assign_1^save_7/Assign_10^save_7/Assign_11^save_7/Assign_12^save_7/Assign_13^save_7/Assign_14^save_7/Assign_15^save_7/Assign_16^save_7/Assign_17^save_7/Assign_2^save_7/Assign_3^save_7/Assign_4^save_7/Assign_5^save_7/Assign_6^save_7/Assign_7^save_7/Assign_8^save_7/Assign_9
1
save_7/restore_allNoOp^save_7/restore_shard
[
save_8/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_8/filenamePlaceholderWithDefaultsave_8/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_8/ConstPlaceholderWithDefaultsave_8/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_8/StringJoin/inputs_1Const*<
value3B1 B+_temp_0a2ceaeead8a43908827a0f1127033cd/part*
dtype0*
_output_shapes
: 
{
save_8/StringJoin
StringJoinsave_8/Constsave_8/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_8/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_8/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_8/ShardedFilenameShardedFilenamesave_8/StringJoinsave_8/ShardedFilename/shardsave_8/num_shards*
_output_shapes
: 
�
save_8/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_8/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_8/SaveV2SaveV2save_8/ShardedFilenamesave_8/SaveV2/tensor_namessave_8/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_8/control_dependencyIdentitysave_8/ShardedFilename^save_8/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_8/ShardedFilename
�
-save_8/MergeV2Checkpoints/checkpoint_prefixesPacksave_8/ShardedFilename^save_8/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_8/MergeV2CheckpointsMergeV2Checkpoints-save_8/MergeV2Checkpoints/checkpoint_prefixessave_8/Const*
delete_old_dirs(
�
save_8/IdentityIdentitysave_8/Const^save_8/MergeV2Checkpoints^save_8/control_dependency*
T0*
_output_shapes
: 
�
save_8/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_8/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_8/RestoreV2	RestoreV2save_8/Constsave_8/RestoreV2/tensor_names!save_8/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_8/AssignAssignbeta1_powersave_8/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_8/Assign_1Assignbeta2_powersave_8/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_8/Assign_2Assignpi/dense/biassave_8/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_8/Assign_3Assignpi/dense/kernelsave_8/RestoreV2:3*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
�
save_8/Assign_4Assignpi/dense_1/biassave_8/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
�
save_8/Assign_5Assignpi/dense_1/kernelsave_8/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_8/Assign_6Assignv/dense/biassave_8/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_8/Assign_7Assignv/dense/bias/Adamsave_8/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_8/Assign_8Assignv/dense/bias/Adam_1save_8/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_8/Assign_9Assignv/dense/kernelsave_8/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_8/Assign_10Assignv/dense/kernel/Adamsave_8/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_8/Assign_11Assignv/dense/kernel/Adam_1save_8/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_8/Assign_12Assignv/dense_1/biassave_8/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_8/Assign_13Assignv/dense_1/bias/Adamsave_8/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_8/Assign_14Assignv/dense_1/bias/Adam_1save_8/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_8/Assign_15Assignv/dense_1/kernelsave_8/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_8/Assign_16Assignv/dense_1/kernel/Adamsave_8/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_8/Assign_17Assignv/dense_1/kernel/Adam_1save_8/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_8/restore_shardNoOp^save_8/Assign^save_8/Assign_1^save_8/Assign_10^save_8/Assign_11^save_8/Assign_12^save_8/Assign_13^save_8/Assign_14^save_8/Assign_15^save_8/Assign_16^save_8/Assign_17^save_8/Assign_2^save_8/Assign_3^save_8/Assign_4^save_8/Assign_5^save_8/Assign_6^save_8/Assign_7^save_8/Assign_8^save_8/Assign_9
1
save_8/restore_allNoOp^save_8/restore_shard
[
save_9/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_9/filenamePlaceholderWithDefaultsave_9/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_9/ConstPlaceholderWithDefaultsave_9/filename*
_output_shapes
: *
shape: *
dtype0
�
save_9/StringJoin/inputs_1Const*<
value3B1 B+_temp_c1dd8b0915974cfd91992fda36cbbb28/part*
dtype0*
_output_shapes
: 
{
save_9/StringJoin
StringJoinsave_9/Constsave_9/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_9/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_9/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_9/ShardedFilenameShardedFilenamesave_9/StringJoinsave_9/ShardedFilename/shardsave_9/num_shards*
_output_shapes
: 
�
save_9/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_9/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_9/SaveV2SaveV2save_9/ShardedFilenamesave_9/SaveV2/tensor_namessave_9/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_9/control_dependencyIdentitysave_9/ShardedFilename^save_9/SaveV2*
T0*)
_class
loc:@save_9/ShardedFilename*
_output_shapes
: 
�
-save_9/MergeV2Checkpoints/checkpoint_prefixesPacksave_9/ShardedFilename^save_9/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_9/MergeV2CheckpointsMergeV2Checkpoints-save_9/MergeV2Checkpoints/checkpoint_prefixessave_9/Const*
delete_old_dirs(
�
save_9/IdentityIdentitysave_9/Const^save_9/MergeV2Checkpoints^save_9/control_dependency*
T0*
_output_shapes
: 
�
save_9/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
!save_9/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_9/RestoreV2	RestoreV2save_9/Constsave_9/RestoreV2/tensor_names!save_9/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_9/AssignAssignbeta1_powersave_9/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_1Assignbeta2_powersave_9/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_2Assignpi/dense/biassave_9/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_3Assignpi/dense/kernelsave_9/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_9/Assign_4Assignpi/dense_1/biassave_9/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_9/Assign_5Assignpi/dense_1/kernelsave_9/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_9/Assign_6Assignv/dense/biassave_9/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_7Assignv/dense/bias/Adamsave_9/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_8Assignv/dense/bias/Adam_1save_9/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_9/Assign_9Assignv/dense/kernelsave_9/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_9/Assign_10Assignv/dense/kernel/Adamsave_9/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_9/Assign_11Assignv/dense/kernel/Adam_1save_9/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_9/Assign_12Assignv/dense_1/biassave_9/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_9/Assign_13Assignv/dense_1/bias/Adamsave_9/RestoreV2:13*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_9/Assign_14Assignv/dense_1/bias/Adam_1save_9/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_9/Assign_15Assignv/dense_1/kernelsave_9/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_9/Assign_16Assignv/dense_1/kernel/Adamsave_9/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_9/Assign_17Assignv/dense_1/kernel/Adam_1save_9/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_9/restore_shardNoOp^save_9/Assign^save_9/Assign_1^save_9/Assign_10^save_9/Assign_11^save_9/Assign_12^save_9/Assign_13^save_9/Assign_14^save_9/Assign_15^save_9/Assign_16^save_9/Assign_17^save_9/Assign_2^save_9/Assign_3^save_9/Assign_4^save_9/Assign_5^save_9/Assign_6^save_9/Assign_7^save_9/Assign_8^save_9/Assign_9
1
save_9/restore_allNoOp^save_9/restore_shard
\
save_10/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_10/filenamePlaceholderWithDefaultsave_10/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_10/ConstPlaceholderWithDefaultsave_10/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_10/StringJoin/inputs_1Const*<
value3B1 B+_temp_9e668422a841433790a737ef5f20701d/part*
dtype0*
_output_shapes
: 
~
save_10/StringJoin
StringJoinsave_10/Constsave_10/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_10/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_10/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_10/ShardedFilenameShardedFilenamesave_10/StringJoinsave_10/ShardedFilename/shardsave_10/num_shards*
_output_shapes
: 
�
save_10/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_10/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_10/SaveV2SaveV2save_10/ShardedFilenamesave_10/SaveV2/tensor_namessave_10/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_10/control_dependencyIdentitysave_10/ShardedFilename^save_10/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_10/ShardedFilename
�
.save_10/MergeV2Checkpoints/checkpoint_prefixesPacksave_10/ShardedFilename^save_10/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_10/MergeV2CheckpointsMergeV2Checkpoints.save_10/MergeV2Checkpoints/checkpoint_prefixessave_10/Const*
delete_old_dirs(
�
save_10/IdentityIdentitysave_10/Const^save_10/MergeV2Checkpoints^save_10/control_dependency*
_output_shapes
: *
T0
�
save_10/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_10/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_10/RestoreV2	RestoreV2save_10/Constsave_10/RestoreV2/tensor_names"save_10/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_10/AssignAssignbeta1_powersave_10/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_10/Assign_1Assignbeta2_powersave_10/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_10/Assign_2Assignpi/dense/biassave_10/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_10/Assign_3Assignpi/dense/kernelsave_10/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_4Assignpi/dense_1/biassave_10/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_10/Assign_5Assignpi/dense_1/kernelsave_10/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_6Assignv/dense/biassave_10/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_10/Assign_7Assignv/dense/bias/Adamsave_10/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_10/Assign_8Assignv/dense/bias/Adam_1save_10/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_10/Assign_9Assignv/dense/kernelsave_10/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_10Assignv/dense/kernel/Adamsave_10/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_11Assignv/dense/kernel/Adam_1save_10/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_12Assignv/dense_1/biassave_10/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_10/Assign_13Assignv/dense_1/bias/Adamsave_10/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_10/Assign_14Assignv/dense_1/bias/Adam_1save_10/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_10/Assign_15Assignv/dense_1/kernelsave_10/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_16Assignv/dense_1/kernel/Adamsave_10/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_10/Assign_17Assignv/dense_1/kernel/Adam_1save_10/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_10/restore_shardNoOp^save_10/Assign^save_10/Assign_1^save_10/Assign_10^save_10/Assign_11^save_10/Assign_12^save_10/Assign_13^save_10/Assign_14^save_10/Assign_15^save_10/Assign_16^save_10/Assign_17^save_10/Assign_2^save_10/Assign_3^save_10/Assign_4^save_10/Assign_5^save_10/Assign_6^save_10/Assign_7^save_10/Assign_8^save_10/Assign_9
3
save_10/restore_allNoOp^save_10/restore_shard
\
save_11/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_11/filenamePlaceholderWithDefaultsave_11/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_11/ConstPlaceholderWithDefaultsave_11/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_11/StringJoin/inputs_1Const*<
value3B1 B+_temp_8f4504b6788f4b8a8f185a6a2b1d9291/part*
dtype0*
_output_shapes
: 
~
save_11/StringJoin
StringJoinsave_11/Constsave_11/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_11/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_11/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_11/ShardedFilenameShardedFilenamesave_11/StringJoinsave_11/ShardedFilename/shardsave_11/num_shards*
_output_shapes
: 
�
save_11/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_11/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_11/SaveV2SaveV2save_11/ShardedFilenamesave_11/SaveV2/tensor_namessave_11/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_11/control_dependencyIdentitysave_11/ShardedFilename^save_11/SaveV2**
_class 
loc:@save_11/ShardedFilename*
_output_shapes
: *
T0
�
.save_11/MergeV2Checkpoints/checkpoint_prefixesPacksave_11/ShardedFilename^save_11/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_11/MergeV2CheckpointsMergeV2Checkpoints.save_11/MergeV2Checkpoints/checkpoint_prefixessave_11/Const*
delete_old_dirs(
�
save_11/IdentityIdentitysave_11/Const^save_11/MergeV2Checkpoints^save_11/control_dependency*
T0*
_output_shapes
: 
�
save_11/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_11/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_11/RestoreV2	RestoreV2save_11/Constsave_11/RestoreV2/tensor_names"save_11/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_11/AssignAssignbeta1_powersave_11/RestoreV2*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_11/Assign_1Assignbeta2_powersave_11/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_11/Assign_2Assignpi/dense/biassave_11/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_11/Assign_3Assignpi/dense/kernelsave_11/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_11/Assign_4Assignpi/dense_1/biassave_11/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_11/Assign_5Assignpi/dense_1/kernelsave_11/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_11/Assign_6Assignv/dense/biassave_11/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_11/Assign_7Assignv/dense/bias/Adamsave_11/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_11/Assign_8Assignv/dense/bias/Adam_1save_11/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_11/Assign_9Assignv/dense/kernelsave_11/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_11/Assign_10Assignv/dense/kernel/Adamsave_11/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_11/Assign_11Assignv/dense/kernel/Adam_1save_11/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_11/Assign_12Assignv/dense_1/biassave_11/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_11/Assign_13Assignv/dense_1/bias/Adamsave_11/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_11/Assign_14Assignv/dense_1/bias/Adam_1save_11/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_11/Assign_15Assignv/dense_1/kernelsave_11/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_11/Assign_16Assignv/dense_1/kernel/Adamsave_11/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_11/Assign_17Assignv/dense_1/kernel/Adam_1save_11/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_11/restore_shardNoOp^save_11/Assign^save_11/Assign_1^save_11/Assign_10^save_11/Assign_11^save_11/Assign_12^save_11/Assign_13^save_11/Assign_14^save_11/Assign_15^save_11/Assign_16^save_11/Assign_17^save_11/Assign_2^save_11/Assign_3^save_11/Assign_4^save_11/Assign_5^save_11/Assign_6^save_11/Assign_7^save_11/Assign_8^save_11/Assign_9
3
save_11/restore_allNoOp^save_11/restore_shard
\
save_12/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_12/filenamePlaceholderWithDefaultsave_12/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_12/ConstPlaceholderWithDefaultsave_12/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_12/StringJoin/inputs_1Const*<
value3B1 B+_temp_c53019048fd740c2ad803bb7cdd3246f/part*
dtype0*
_output_shapes
: 
~
save_12/StringJoin
StringJoinsave_12/Constsave_12/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_12/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_12/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_12/ShardedFilenameShardedFilenamesave_12/StringJoinsave_12/ShardedFilename/shardsave_12/num_shards*
_output_shapes
: 
�
save_12/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_12/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_12/SaveV2SaveV2save_12/ShardedFilenamesave_12/SaveV2/tensor_namessave_12/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_12/control_dependencyIdentitysave_12/ShardedFilename^save_12/SaveV2*
T0**
_class 
loc:@save_12/ShardedFilename*
_output_shapes
: 
�
.save_12/MergeV2Checkpoints/checkpoint_prefixesPacksave_12/ShardedFilename^save_12/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_12/MergeV2CheckpointsMergeV2Checkpoints.save_12/MergeV2Checkpoints/checkpoint_prefixessave_12/Const*
delete_old_dirs(
�
save_12/IdentityIdentitysave_12/Const^save_12/MergeV2Checkpoints^save_12/control_dependency*
T0*
_output_shapes
: 
�
save_12/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_12/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_12/RestoreV2	RestoreV2save_12/Constsave_12/RestoreV2/tensor_names"save_12/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_12/AssignAssignbeta1_powersave_12/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_12/Assign_1Assignbeta2_powersave_12/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_12/Assign_2Assignpi/dense/biassave_12/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_12/Assign_3Assignpi/dense/kernelsave_12/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_12/Assign_4Assignpi/dense_1/biassave_12/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_12/Assign_5Assignpi/dense_1/kernelsave_12/RestoreV2:5*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
�
save_12/Assign_6Assignv/dense/biassave_12/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_12/Assign_7Assignv/dense/bias/Adamsave_12/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_12/Assign_8Assignv/dense/bias/Adam_1save_12/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_12/Assign_9Assignv/dense/kernelsave_12/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_12/Assign_10Assignv/dense/kernel/Adamsave_12/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_12/Assign_11Assignv/dense/kernel/Adam_1save_12/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_12/Assign_12Assignv/dense_1/biassave_12/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_12/Assign_13Assignv/dense_1/bias/Adamsave_12/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_12/Assign_14Assignv/dense_1/bias/Adam_1save_12/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_12/Assign_15Assignv/dense_1/kernelsave_12/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_12/Assign_16Assignv/dense_1/kernel/Adamsave_12/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_12/Assign_17Assignv/dense_1/kernel/Adam_1save_12/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_12/restore_shardNoOp^save_12/Assign^save_12/Assign_1^save_12/Assign_10^save_12/Assign_11^save_12/Assign_12^save_12/Assign_13^save_12/Assign_14^save_12/Assign_15^save_12/Assign_16^save_12/Assign_17^save_12/Assign_2^save_12/Assign_3^save_12/Assign_4^save_12/Assign_5^save_12/Assign_6^save_12/Assign_7^save_12/Assign_8^save_12/Assign_9
3
save_12/restore_allNoOp^save_12/restore_shard
\
save_13/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_13/filenamePlaceholderWithDefaultsave_13/filename/input*
_output_shapes
: *
shape: *
dtype0
k
save_13/ConstPlaceholderWithDefaultsave_13/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_13/StringJoin/inputs_1Const*<
value3B1 B+_temp_819e2f630b4f4bd18af15d6efc2415b2/part*
dtype0*
_output_shapes
: 
~
save_13/StringJoin
StringJoinsave_13/Constsave_13/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_13/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_13/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_13/ShardedFilenameShardedFilenamesave_13/StringJoinsave_13/ShardedFilename/shardsave_13/num_shards*
_output_shapes
: 
�
save_13/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_13/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_13/SaveV2SaveV2save_13/ShardedFilenamesave_13/SaveV2/tensor_namessave_13/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_13/control_dependencyIdentitysave_13/ShardedFilename^save_13/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_13/ShardedFilename
�
.save_13/MergeV2Checkpoints/checkpoint_prefixesPacksave_13/ShardedFilename^save_13/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_13/MergeV2CheckpointsMergeV2Checkpoints.save_13/MergeV2Checkpoints/checkpoint_prefixessave_13/Const*
delete_old_dirs(
�
save_13/IdentityIdentitysave_13/Const^save_13/MergeV2Checkpoints^save_13/control_dependency*
T0*
_output_shapes
: 
�
save_13/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_13/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_13/RestoreV2	RestoreV2save_13/Constsave_13/RestoreV2/tensor_names"save_13/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_13/AssignAssignbeta1_powersave_13/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_13/Assign_1Assignbeta2_powersave_13/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_13/Assign_2Assignpi/dense/biassave_13/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_13/Assign_3Assignpi/dense/kernelsave_13/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_13/Assign_4Assignpi/dense_1/biassave_13/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
�
save_13/Assign_5Assignpi/dense_1/kernelsave_13/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_13/Assign_6Assignv/dense/biassave_13/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_13/Assign_7Assignv/dense/bias/Adamsave_13/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_13/Assign_8Assignv/dense/bias/Adam_1save_13/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_13/Assign_9Assignv/dense/kernelsave_13/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_13/Assign_10Assignv/dense/kernel/Adamsave_13/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_13/Assign_11Assignv/dense/kernel/Adam_1save_13/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_13/Assign_12Assignv/dense_1/biassave_13/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_13/Assign_13Assignv/dense_1/bias/Adamsave_13/RestoreV2:13*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_13/Assign_14Assignv/dense_1/bias/Adam_1save_13/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_13/Assign_15Assignv/dense_1/kernelsave_13/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_13/Assign_16Assignv/dense_1/kernel/Adamsave_13/RestoreV2:16*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_13/Assign_17Assignv/dense_1/kernel/Adam_1save_13/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_13/restore_shardNoOp^save_13/Assign^save_13/Assign_1^save_13/Assign_10^save_13/Assign_11^save_13/Assign_12^save_13/Assign_13^save_13/Assign_14^save_13/Assign_15^save_13/Assign_16^save_13/Assign_17^save_13/Assign_2^save_13/Assign_3^save_13/Assign_4^save_13/Assign_5^save_13/Assign_6^save_13/Assign_7^save_13/Assign_8^save_13/Assign_9
3
save_13/restore_allNoOp^save_13/restore_shard
\
save_14/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_14/filenamePlaceholderWithDefaultsave_14/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_14/ConstPlaceholderWithDefaultsave_14/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_14/StringJoin/inputs_1Const*<
value3B1 B+_temp_72199b9d12c045828db0fec9036ae9b8/part*
dtype0*
_output_shapes
: 
~
save_14/StringJoin
StringJoinsave_14/Constsave_14/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_14/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_14/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_14/ShardedFilenameShardedFilenamesave_14/StringJoinsave_14/ShardedFilename/shardsave_14/num_shards*
_output_shapes
: 
�
save_14/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_14/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_14/SaveV2SaveV2save_14/ShardedFilenamesave_14/SaveV2/tensor_namessave_14/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_14/control_dependencyIdentitysave_14/ShardedFilename^save_14/SaveV2*
T0**
_class 
loc:@save_14/ShardedFilename*
_output_shapes
: 
�
.save_14/MergeV2Checkpoints/checkpoint_prefixesPacksave_14/ShardedFilename^save_14/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_14/MergeV2CheckpointsMergeV2Checkpoints.save_14/MergeV2Checkpoints/checkpoint_prefixessave_14/Const*
delete_old_dirs(
�
save_14/IdentityIdentitysave_14/Const^save_14/MergeV2Checkpoints^save_14/control_dependency*
_output_shapes
: *
T0
�
save_14/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_14/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_14/RestoreV2	RestoreV2save_14/Constsave_14/RestoreV2/tensor_names"save_14/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_14/AssignAssignbeta1_powersave_14/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_14/Assign_1Assignbeta2_powersave_14/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_14/Assign_2Assignpi/dense/biassave_14/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_14/Assign_3Assignpi/dense/kernelsave_14/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_14/Assign_4Assignpi/dense_1/biassave_14/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_14/Assign_5Assignpi/dense_1/kernelsave_14/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_14/Assign_6Assignv/dense/biassave_14/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_14/Assign_7Assignv/dense/bias/Adamsave_14/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_14/Assign_8Assignv/dense/bias/Adam_1save_14/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_14/Assign_9Assignv/dense/kernelsave_14/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_14/Assign_10Assignv/dense/kernel/Adamsave_14/RestoreV2:10*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_14/Assign_11Assignv/dense/kernel/Adam_1save_14/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_14/Assign_12Assignv/dense_1/biassave_14/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_14/Assign_13Assignv/dense_1/bias/Adamsave_14/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_14/Assign_14Assignv/dense_1/bias/Adam_1save_14/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_14/Assign_15Assignv/dense_1/kernelsave_14/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_14/Assign_16Assignv/dense_1/kernel/Adamsave_14/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_14/Assign_17Assignv/dense_1/kernel/Adam_1save_14/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_14/restore_shardNoOp^save_14/Assign^save_14/Assign_1^save_14/Assign_10^save_14/Assign_11^save_14/Assign_12^save_14/Assign_13^save_14/Assign_14^save_14/Assign_15^save_14/Assign_16^save_14/Assign_17^save_14/Assign_2^save_14/Assign_3^save_14/Assign_4^save_14/Assign_5^save_14/Assign_6^save_14/Assign_7^save_14/Assign_8^save_14/Assign_9
3
save_14/restore_allNoOp^save_14/restore_shard
\
save_15/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
t
save_15/filenamePlaceholderWithDefaultsave_15/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_15/ConstPlaceholderWithDefaultsave_15/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_15/StringJoin/inputs_1Const*<
value3B1 B+_temp_108ae2644c624ae8b0632ccce01b66ba/part*
dtype0*
_output_shapes
: 
~
save_15/StringJoin
StringJoinsave_15/Constsave_15/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_15/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_15/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_15/ShardedFilenameShardedFilenamesave_15/StringJoinsave_15/ShardedFilename/shardsave_15/num_shards*
_output_shapes
: 
�
save_15/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_15/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_15/SaveV2SaveV2save_15/ShardedFilenamesave_15/SaveV2/tensor_namessave_15/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_15/control_dependencyIdentitysave_15/ShardedFilename^save_15/SaveV2*
T0**
_class 
loc:@save_15/ShardedFilename*
_output_shapes
: 
�
.save_15/MergeV2Checkpoints/checkpoint_prefixesPacksave_15/ShardedFilename^save_15/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_15/MergeV2CheckpointsMergeV2Checkpoints.save_15/MergeV2Checkpoints/checkpoint_prefixessave_15/Const*
delete_old_dirs(
�
save_15/IdentityIdentitysave_15/Const^save_15/MergeV2Checkpoints^save_15/control_dependency*
_output_shapes
: *
T0
�
save_15/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
"save_15/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_15/RestoreV2	RestoreV2save_15/Constsave_15/RestoreV2/tensor_names"save_15/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_15/AssignAssignbeta1_powersave_15/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_1Assignbeta2_powersave_15/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_2Assignpi/dense/biassave_15/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_3Assignpi/dense/kernelsave_15/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_15/Assign_4Assignpi/dense_1/biassave_15/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_15/Assign_5Assignpi/dense_1/kernelsave_15/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_15/Assign_6Assignv/dense/biassave_15/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_15/Assign_7Assignv/dense/bias/Adamsave_15/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_15/Assign_8Assignv/dense/bias/Adam_1save_15/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_15/Assign_9Assignv/dense/kernelsave_15/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_15/Assign_10Assignv/dense/kernel/Adamsave_15/RestoreV2:10*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_15/Assign_11Assignv/dense/kernel/Adam_1save_15/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_15/Assign_12Assignv/dense_1/biassave_15/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_15/Assign_13Assignv/dense_1/bias/Adamsave_15/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_15/Assign_14Assignv/dense_1/bias/Adam_1save_15/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_15/Assign_15Assignv/dense_1/kernelsave_15/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_15/Assign_16Assignv/dense_1/kernel/Adamsave_15/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_15/Assign_17Assignv/dense_1/kernel/Adam_1save_15/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_15/restore_shardNoOp^save_15/Assign^save_15/Assign_1^save_15/Assign_10^save_15/Assign_11^save_15/Assign_12^save_15/Assign_13^save_15/Assign_14^save_15/Assign_15^save_15/Assign_16^save_15/Assign_17^save_15/Assign_2^save_15/Assign_3^save_15/Assign_4^save_15/Assign_5^save_15/Assign_6^save_15/Assign_7^save_15/Assign_8^save_15/Assign_9
3
save_15/restore_allNoOp^save_15/restore_shard
\
save_16/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_16/filenamePlaceholderWithDefaultsave_16/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_16/ConstPlaceholderWithDefaultsave_16/filename*
_output_shapes
: *
shape: *
dtype0
�
save_16/StringJoin/inputs_1Const*<
value3B1 B+_temp_d7ca2c1a091d442289433908728f3747/part*
dtype0*
_output_shapes
: 
~
save_16/StringJoin
StringJoinsave_16/Constsave_16/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_16/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_16/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_16/ShardedFilenameShardedFilenamesave_16/StringJoinsave_16/ShardedFilename/shardsave_16/num_shards*
_output_shapes
: 
�
save_16/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_16/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_16/SaveV2SaveV2save_16/ShardedFilenamesave_16/SaveV2/tensor_namessave_16/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_16/control_dependencyIdentitysave_16/ShardedFilename^save_16/SaveV2*
T0**
_class 
loc:@save_16/ShardedFilename*
_output_shapes
: 
�
.save_16/MergeV2Checkpoints/checkpoint_prefixesPacksave_16/ShardedFilename^save_16/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_16/MergeV2CheckpointsMergeV2Checkpoints.save_16/MergeV2Checkpoints/checkpoint_prefixessave_16/Const*
delete_old_dirs(
�
save_16/IdentityIdentitysave_16/Const^save_16/MergeV2Checkpoints^save_16/control_dependency*
T0*
_output_shapes
: 
�
save_16/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_16/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_16/RestoreV2	RestoreV2save_16/Constsave_16/RestoreV2/tensor_names"save_16/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_16/AssignAssignbeta1_powersave_16/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_16/Assign_1Assignbeta2_powersave_16/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_16/Assign_2Assignpi/dense/biassave_16/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_16/Assign_3Assignpi/dense/kernelsave_16/RestoreV2:3*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel
�
save_16/Assign_4Assignpi/dense_1/biassave_16/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_16/Assign_5Assignpi/dense_1/kernelsave_16/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_16/Assign_6Assignv/dense/biassave_16/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_16/Assign_7Assignv/dense/bias/Adamsave_16/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_16/Assign_8Assignv/dense/bias/Adam_1save_16/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_16/Assign_9Assignv/dense/kernelsave_16/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_16/Assign_10Assignv/dense/kernel/Adamsave_16/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_16/Assign_11Assignv/dense/kernel/Adam_1save_16/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_16/Assign_12Assignv/dense_1/biassave_16/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_16/Assign_13Assignv/dense_1/bias/Adamsave_16/RestoreV2:13*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_16/Assign_14Assignv/dense_1/bias/Adam_1save_16/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_16/Assign_15Assignv/dense_1/kernelsave_16/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_16/Assign_16Assignv/dense_1/kernel/Adamsave_16/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_16/Assign_17Assignv/dense_1/kernel/Adam_1save_16/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_16/restore_shardNoOp^save_16/Assign^save_16/Assign_1^save_16/Assign_10^save_16/Assign_11^save_16/Assign_12^save_16/Assign_13^save_16/Assign_14^save_16/Assign_15^save_16/Assign_16^save_16/Assign_17^save_16/Assign_2^save_16/Assign_3^save_16/Assign_4^save_16/Assign_5^save_16/Assign_6^save_16/Assign_7^save_16/Assign_8^save_16/Assign_9
3
save_16/restore_allNoOp^save_16/restore_shard
\
save_17/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_17/filenamePlaceholderWithDefaultsave_17/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_17/ConstPlaceholderWithDefaultsave_17/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_17/StringJoin/inputs_1Const*<
value3B1 B+_temp_f0de30d388a64a9aaf7656accd2fd3fe/part*
dtype0*
_output_shapes
: 
~
save_17/StringJoin
StringJoinsave_17/Constsave_17/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_17/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_17/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_17/ShardedFilenameShardedFilenamesave_17/StringJoinsave_17/ShardedFilename/shardsave_17/num_shards*
_output_shapes
: 
�
save_17/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_17/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_17/SaveV2SaveV2save_17/ShardedFilenamesave_17/SaveV2/tensor_namessave_17/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_17/control_dependencyIdentitysave_17/ShardedFilename^save_17/SaveV2**
_class 
loc:@save_17/ShardedFilename*
_output_shapes
: *
T0
�
.save_17/MergeV2Checkpoints/checkpoint_prefixesPacksave_17/ShardedFilename^save_17/control_dependency*
_output_shapes
:*
T0*

axis *
N
�
save_17/MergeV2CheckpointsMergeV2Checkpoints.save_17/MergeV2Checkpoints/checkpoint_prefixessave_17/Const*
delete_old_dirs(
�
save_17/IdentityIdentitysave_17/Const^save_17/MergeV2Checkpoints^save_17/control_dependency*
_output_shapes
: *
T0
�
save_17/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_17/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_17/RestoreV2	RestoreV2save_17/Constsave_17/RestoreV2/tensor_names"save_17/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_17/AssignAssignbeta1_powersave_17/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_1Assignbeta2_powersave_17/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_2Assignpi/dense/biassave_17/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_3Assignpi/dense/kernelsave_17/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_17/Assign_4Assignpi/dense_1/biassave_17/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_17/Assign_5Assignpi/dense_1/kernelsave_17/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_17/Assign_6Assignv/dense/biassave_17/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_17/Assign_7Assignv/dense/bias/Adamsave_17/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_8Assignv/dense/bias/Adam_1save_17/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_17/Assign_9Assignv/dense/kernelsave_17/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_17/Assign_10Assignv/dense/kernel/Adamsave_17/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_17/Assign_11Assignv/dense/kernel/Adam_1save_17/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_17/Assign_12Assignv/dense_1/biassave_17/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_17/Assign_13Assignv/dense_1/bias/Adamsave_17/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_17/Assign_14Assignv/dense_1/bias/Adam_1save_17/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_17/Assign_15Assignv/dense_1/kernelsave_17/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_17/Assign_16Assignv/dense_1/kernel/Adamsave_17/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_17/Assign_17Assignv/dense_1/kernel/Adam_1save_17/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_17/restore_shardNoOp^save_17/Assign^save_17/Assign_1^save_17/Assign_10^save_17/Assign_11^save_17/Assign_12^save_17/Assign_13^save_17/Assign_14^save_17/Assign_15^save_17/Assign_16^save_17/Assign_17^save_17/Assign_2^save_17/Assign_3^save_17/Assign_4^save_17/Assign_5^save_17/Assign_6^save_17/Assign_7^save_17/Assign_8^save_17/Assign_9
3
save_17/restore_allNoOp^save_17/restore_shard
\
save_18/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_18/filenamePlaceholderWithDefaultsave_18/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_18/ConstPlaceholderWithDefaultsave_18/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_18/StringJoin/inputs_1Const*<
value3B1 B+_temp_f880c49325264035a04ca2967a6d2432/part*
dtype0*
_output_shapes
: 
~
save_18/StringJoin
StringJoinsave_18/Constsave_18/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_18/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_18/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_18/ShardedFilenameShardedFilenamesave_18/StringJoinsave_18/ShardedFilename/shardsave_18/num_shards*
_output_shapes
: 
�
save_18/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_18/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_18/SaveV2SaveV2save_18/ShardedFilenamesave_18/SaveV2/tensor_namessave_18/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_18/control_dependencyIdentitysave_18/ShardedFilename^save_18/SaveV2*
T0**
_class 
loc:@save_18/ShardedFilename*
_output_shapes
: 
�
.save_18/MergeV2Checkpoints/checkpoint_prefixesPacksave_18/ShardedFilename^save_18/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_18/MergeV2CheckpointsMergeV2Checkpoints.save_18/MergeV2Checkpoints/checkpoint_prefixessave_18/Const*
delete_old_dirs(
�
save_18/IdentityIdentitysave_18/Const^save_18/MergeV2Checkpoints^save_18/control_dependency*
T0*
_output_shapes
: 
�
save_18/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_18/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_18/RestoreV2	RestoreV2save_18/Constsave_18/RestoreV2/tensor_names"save_18/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_18/AssignAssignbeta1_powersave_18/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_18/Assign_1Assignbeta2_powersave_18/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_18/Assign_2Assignpi/dense/biassave_18/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_18/Assign_3Assignpi/dense/kernelsave_18/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_18/Assign_4Assignpi/dense_1/biassave_18/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_18/Assign_5Assignpi/dense_1/kernelsave_18/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_18/Assign_6Assignv/dense/biassave_18/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_18/Assign_7Assignv/dense/bias/Adamsave_18/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_18/Assign_8Assignv/dense/bias/Adam_1save_18/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_18/Assign_9Assignv/dense/kernelsave_18/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_18/Assign_10Assignv/dense/kernel/Adamsave_18/RestoreV2:10*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_18/Assign_11Assignv/dense/kernel/Adam_1save_18/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_18/Assign_12Assignv/dense_1/biassave_18/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_18/Assign_13Assignv/dense_1/bias/Adamsave_18/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_18/Assign_14Assignv/dense_1/bias/Adam_1save_18/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_18/Assign_15Assignv/dense_1/kernelsave_18/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_18/Assign_16Assignv/dense_1/kernel/Adamsave_18/RestoreV2:16*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_18/Assign_17Assignv/dense_1/kernel/Adam_1save_18/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_18/restore_shardNoOp^save_18/Assign^save_18/Assign_1^save_18/Assign_10^save_18/Assign_11^save_18/Assign_12^save_18/Assign_13^save_18/Assign_14^save_18/Assign_15^save_18/Assign_16^save_18/Assign_17^save_18/Assign_2^save_18/Assign_3^save_18/Assign_4^save_18/Assign_5^save_18/Assign_6^save_18/Assign_7^save_18/Assign_8^save_18/Assign_9
3
save_18/restore_allNoOp^save_18/restore_shard
\
save_19/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_19/filenamePlaceholderWithDefaultsave_19/filename/input*
_output_shapes
: *
shape: *
dtype0
k
save_19/ConstPlaceholderWithDefaultsave_19/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_19/StringJoin/inputs_1Const*<
value3B1 B+_temp_1571696c052f41d48370d4321e4c4a68/part*
dtype0*
_output_shapes
: 
~
save_19/StringJoin
StringJoinsave_19/Constsave_19/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_19/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_19/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_19/ShardedFilenameShardedFilenamesave_19/StringJoinsave_19/ShardedFilename/shardsave_19/num_shards*
_output_shapes
: 
�
save_19/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_19/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_19/SaveV2SaveV2save_19/ShardedFilenamesave_19/SaveV2/tensor_namessave_19/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_19/control_dependencyIdentitysave_19/ShardedFilename^save_19/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_19/ShardedFilename
�
.save_19/MergeV2Checkpoints/checkpoint_prefixesPacksave_19/ShardedFilename^save_19/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_19/MergeV2CheckpointsMergeV2Checkpoints.save_19/MergeV2Checkpoints/checkpoint_prefixessave_19/Const*
delete_old_dirs(
�
save_19/IdentityIdentitysave_19/Const^save_19/MergeV2Checkpoints^save_19/control_dependency*
_output_shapes
: *
T0
�
save_19/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_19/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_19/RestoreV2	RestoreV2save_19/Constsave_19/RestoreV2/tensor_names"save_19/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_19/AssignAssignbeta1_powersave_19/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_19/Assign_1Assignbeta2_powersave_19/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_19/Assign_2Assignpi/dense/biassave_19/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_19/Assign_3Assignpi/dense/kernelsave_19/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_19/Assign_4Assignpi/dense_1/biassave_19/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_19/Assign_5Assignpi/dense_1/kernelsave_19/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_19/Assign_6Assignv/dense/biassave_19/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_19/Assign_7Assignv/dense/bias/Adamsave_19/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_19/Assign_8Assignv/dense/bias/Adam_1save_19/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_19/Assign_9Assignv/dense/kernelsave_19/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_19/Assign_10Assignv/dense/kernel/Adamsave_19/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_19/Assign_11Assignv/dense/kernel/Adam_1save_19/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_19/Assign_12Assignv/dense_1/biassave_19/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_19/Assign_13Assignv/dense_1/bias/Adamsave_19/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_19/Assign_14Assignv/dense_1/bias/Adam_1save_19/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_19/Assign_15Assignv/dense_1/kernelsave_19/RestoreV2:15*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_19/Assign_16Assignv/dense_1/kernel/Adamsave_19/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_19/Assign_17Assignv/dense_1/kernel/Adam_1save_19/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_19/restore_shardNoOp^save_19/Assign^save_19/Assign_1^save_19/Assign_10^save_19/Assign_11^save_19/Assign_12^save_19/Assign_13^save_19/Assign_14^save_19/Assign_15^save_19/Assign_16^save_19/Assign_17^save_19/Assign_2^save_19/Assign_3^save_19/Assign_4^save_19/Assign_5^save_19/Assign_6^save_19/Assign_7^save_19/Assign_8^save_19/Assign_9
3
save_19/restore_allNoOp^save_19/restore_shard
\
save_20/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_20/filenamePlaceholderWithDefaultsave_20/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_20/ConstPlaceholderWithDefaultsave_20/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_20/StringJoin/inputs_1Const*<
value3B1 B+_temp_dc565f88255945ff8b0e0b8f0e1ee313/part*
dtype0*
_output_shapes
: 
~
save_20/StringJoin
StringJoinsave_20/Constsave_20/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_20/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_20/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_20/ShardedFilenameShardedFilenamesave_20/StringJoinsave_20/ShardedFilename/shardsave_20/num_shards*
_output_shapes
: 
�
save_20/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_20/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_20/SaveV2SaveV2save_20/ShardedFilenamesave_20/SaveV2/tensor_namessave_20/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_20/control_dependencyIdentitysave_20/ShardedFilename^save_20/SaveV2*
T0**
_class 
loc:@save_20/ShardedFilename*
_output_shapes
: 
�
.save_20/MergeV2Checkpoints/checkpoint_prefixesPacksave_20/ShardedFilename^save_20/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_20/MergeV2CheckpointsMergeV2Checkpoints.save_20/MergeV2Checkpoints/checkpoint_prefixessave_20/Const*
delete_old_dirs(
�
save_20/IdentityIdentitysave_20/Const^save_20/MergeV2Checkpoints^save_20/control_dependency*
T0*
_output_shapes
: 
�
save_20/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_20/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_20/RestoreV2	RestoreV2save_20/Constsave_20/RestoreV2/tensor_names"save_20/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_20/AssignAssignbeta1_powersave_20/RestoreV2*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_20/Assign_1Assignbeta2_powersave_20/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_2Assignpi/dense/biassave_20/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_3Assignpi/dense/kernelsave_20/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_4Assignpi/dense_1/biassave_20/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_20/Assign_5Assignpi/dense_1/kernelsave_20/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_6Assignv/dense/biassave_20/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_20/Assign_7Assignv/dense/bias/Adamsave_20/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_20/Assign_8Assignv/dense/bias/Adam_1save_20/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_20/Assign_9Assignv/dense/kernelsave_20/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_10Assignv/dense/kernel/Adamsave_20/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_11Assignv/dense/kernel/Adam_1save_20/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_12Assignv/dense_1/biassave_20/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_20/Assign_13Assignv/dense_1/bias/Adamsave_20/RestoreV2:13*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_20/Assign_14Assignv/dense_1/bias/Adam_1save_20/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_20/Assign_15Assignv/dense_1/kernelsave_20/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_16Assignv/dense_1/kernel/Adamsave_20/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_20/Assign_17Assignv/dense_1/kernel/Adam_1save_20/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_20/restore_shardNoOp^save_20/Assign^save_20/Assign_1^save_20/Assign_10^save_20/Assign_11^save_20/Assign_12^save_20/Assign_13^save_20/Assign_14^save_20/Assign_15^save_20/Assign_16^save_20/Assign_17^save_20/Assign_2^save_20/Assign_3^save_20/Assign_4^save_20/Assign_5^save_20/Assign_6^save_20/Assign_7^save_20/Assign_8^save_20/Assign_9
3
save_20/restore_allNoOp^save_20/restore_shard
\
save_21/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_21/filenamePlaceholderWithDefaultsave_21/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_21/ConstPlaceholderWithDefaultsave_21/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_21/StringJoin/inputs_1Const*<
value3B1 B+_temp_69d37a8762ad43f9ae99c44c09530a2d/part*
dtype0*
_output_shapes
: 
~
save_21/StringJoin
StringJoinsave_21/Constsave_21/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_21/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_21/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_21/ShardedFilenameShardedFilenamesave_21/StringJoinsave_21/ShardedFilename/shardsave_21/num_shards*
_output_shapes
: 
�
save_21/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_21/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_21/SaveV2SaveV2save_21/ShardedFilenamesave_21/SaveV2/tensor_namessave_21/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_21/control_dependencyIdentitysave_21/ShardedFilename^save_21/SaveV2*
T0**
_class 
loc:@save_21/ShardedFilename*
_output_shapes
: 
�
.save_21/MergeV2Checkpoints/checkpoint_prefixesPacksave_21/ShardedFilename^save_21/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_21/MergeV2CheckpointsMergeV2Checkpoints.save_21/MergeV2Checkpoints/checkpoint_prefixessave_21/Const*
delete_old_dirs(
�
save_21/IdentityIdentitysave_21/Const^save_21/MergeV2Checkpoints^save_21/control_dependency*
_output_shapes
: *
T0
�
save_21/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_21/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_21/RestoreV2	RestoreV2save_21/Constsave_21/RestoreV2/tensor_names"save_21/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_21/AssignAssignbeta1_powersave_21/RestoreV2*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_21/Assign_1Assignbeta2_powersave_21/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_21/Assign_2Assignpi/dense/biassave_21/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_21/Assign_3Assignpi/dense/kernelsave_21/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_21/Assign_4Assignpi/dense_1/biassave_21/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_21/Assign_5Assignpi/dense_1/kernelsave_21/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_21/Assign_6Assignv/dense/biassave_21/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_21/Assign_7Assignv/dense/bias/Adamsave_21/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_21/Assign_8Assignv/dense/bias/Adam_1save_21/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_21/Assign_9Assignv/dense/kernelsave_21/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_21/Assign_10Assignv/dense/kernel/Adamsave_21/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_21/Assign_11Assignv/dense/kernel/Adam_1save_21/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_21/Assign_12Assignv/dense_1/biassave_21/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_21/Assign_13Assignv/dense_1/bias/Adamsave_21/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_21/Assign_14Assignv/dense_1/bias/Adam_1save_21/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_21/Assign_15Assignv/dense_1/kernelsave_21/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_21/Assign_16Assignv/dense_1/kernel/Adamsave_21/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_21/Assign_17Assignv/dense_1/kernel/Adam_1save_21/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_21/restore_shardNoOp^save_21/Assign^save_21/Assign_1^save_21/Assign_10^save_21/Assign_11^save_21/Assign_12^save_21/Assign_13^save_21/Assign_14^save_21/Assign_15^save_21/Assign_16^save_21/Assign_17^save_21/Assign_2^save_21/Assign_3^save_21/Assign_4^save_21/Assign_5^save_21/Assign_6^save_21/Assign_7^save_21/Assign_8^save_21/Assign_9
3
save_21/restore_allNoOp^save_21/restore_shard
\
save_22/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
t
save_22/filenamePlaceholderWithDefaultsave_22/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_22/ConstPlaceholderWithDefaultsave_22/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_22/StringJoin/inputs_1Const*<
value3B1 B+_temp_067fe1f1ffd8429397a4b0e76e82f8da/part*
dtype0*
_output_shapes
: 
~
save_22/StringJoin
StringJoinsave_22/Constsave_22/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_22/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_22/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_22/ShardedFilenameShardedFilenamesave_22/StringJoinsave_22/ShardedFilename/shardsave_22/num_shards*
_output_shapes
: 
�
save_22/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_22/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_22/SaveV2SaveV2save_22/ShardedFilenamesave_22/SaveV2/tensor_namessave_22/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_22/control_dependencyIdentitysave_22/ShardedFilename^save_22/SaveV2*
T0**
_class 
loc:@save_22/ShardedFilename*
_output_shapes
: 
�
.save_22/MergeV2Checkpoints/checkpoint_prefixesPacksave_22/ShardedFilename^save_22/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_22/MergeV2CheckpointsMergeV2Checkpoints.save_22/MergeV2Checkpoints/checkpoint_prefixessave_22/Const*
delete_old_dirs(
�
save_22/IdentityIdentitysave_22/Const^save_22/MergeV2Checkpoints^save_22/control_dependency*
T0*
_output_shapes
: 
�
save_22/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_22/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_22/RestoreV2	RestoreV2save_22/Constsave_22/RestoreV2/tensor_names"save_22/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_22/AssignAssignbeta1_powersave_22/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_1Assignbeta2_powersave_22/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_2Assignpi/dense/biassave_22/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_3Assignpi/dense/kernelsave_22/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_22/Assign_4Assignpi/dense_1/biassave_22/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_22/Assign_5Assignpi/dense_1/kernelsave_22/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_22/Assign_6Assignv/dense/biassave_22/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_7Assignv/dense/bias/Adamsave_22/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_22/Assign_8Assignv/dense/bias/Adam_1save_22/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_22/Assign_9Assignv/dense/kernelsave_22/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_22/Assign_10Assignv/dense/kernel/Adamsave_22/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_22/Assign_11Assignv/dense/kernel/Adam_1save_22/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_22/Assign_12Assignv/dense_1/biassave_22/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_22/Assign_13Assignv/dense_1/bias/Adamsave_22/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_22/Assign_14Assignv/dense_1/bias/Adam_1save_22/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_22/Assign_15Assignv/dense_1/kernelsave_22/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_22/Assign_16Assignv/dense_1/kernel/Adamsave_22/RestoreV2:16*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_22/Assign_17Assignv/dense_1/kernel/Adam_1save_22/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_22/restore_shardNoOp^save_22/Assign^save_22/Assign_1^save_22/Assign_10^save_22/Assign_11^save_22/Assign_12^save_22/Assign_13^save_22/Assign_14^save_22/Assign_15^save_22/Assign_16^save_22/Assign_17^save_22/Assign_2^save_22/Assign_3^save_22/Assign_4^save_22/Assign_5^save_22/Assign_6^save_22/Assign_7^save_22/Assign_8^save_22/Assign_9
3
save_22/restore_allNoOp^save_22/restore_shard
\
save_23/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_23/filenamePlaceholderWithDefaultsave_23/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_23/ConstPlaceholderWithDefaultsave_23/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_23/StringJoin/inputs_1Const*<
value3B1 B+_temp_3dcfa09580fe48138bee445650ef05b0/part*
dtype0*
_output_shapes
: 
~
save_23/StringJoin
StringJoinsave_23/Constsave_23/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_23/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_23/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_23/ShardedFilenameShardedFilenamesave_23/StringJoinsave_23/ShardedFilename/shardsave_23/num_shards*
_output_shapes
: 
�
save_23/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_23/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_23/SaveV2SaveV2save_23/ShardedFilenamesave_23/SaveV2/tensor_namessave_23/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_23/control_dependencyIdentitysave_23/ShardedFilename^save_23/SaveV2*
T0**
_class 
loc:@save_23/ShardedFilename*
_output_shapes
: 
�
.save_23/MergeV2Checkpoints/checkpoint_prefixesPacksave_23/ShardedFilename^save_23/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_23/MergeV2CheckpointsMergeV2Checkpoints.save_23/MergeV2Checkpoints/checkpoint_prefixessave_23/Const*
delete_old_dirs(
�
save_23/IdentityIdentitysave_23/Const^save_23/MergeV2Checkpoints^save_23/control_dependency*
T0*
_output_shapes
: 
�
save_23/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_23/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_23/RestoreV2	RestoreV2save_23/Constsave_23/RestoreV2/tensor_names"save_23/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_23/AssignAssignbeta1_powersave_23/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_23/Assign_1Assignbeta2_powersave_23/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_23/Assign_2Assignpi/dense/biassave_23/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_23/Assign_3Assignpi/dense/kernelsave_23/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_23/Assign_4Assignpi/dense_1/biassave_23/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_23/Assign_5Assignpi/dense_1/kernelsave_23/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_23/Assign_6Assignv/dense/biassave_23/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_23/Assign_7Assignv/dense/bias/Adamsave_23/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_23/Assign_8Assignv/dense/bias/Adam_1save_23/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_23/Assign_9Assignv/dense/kernelsave_23/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_23/Assign_10Assignv/dense/kernel/Adamsave_23/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_23/Assign_11Assignv/dense/kernel/Adam_1save_23/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_23/Assign_12Assignv/dense_1/biassave_23/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_23/Assign_13Assignv/dense_1/bias/Adamsave_23/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_23/Assign_14Assignv/dense_1/bias/Adam_1save_23/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_23/Assign_15Assignv/dense_1/kernelsave_23/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_23/Assign_16Assignv/dense_1/kernel/Adamsave_23/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_23/Assign_17Assignv/dense_1/kernel/Adam_1save_23/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_23/restore_shardNoOp^save_23/Assign^save_23/Assign_1^save_23/Assign_10^save_23/Assign_11^save_23/Assign_12^save_23/Assign_13^save_23/Assign_14^save_23/Assign_15^save_23/Assign_16^save_23/Assign_17^save_23/Assign_2^save_23/Assign_3^save_23/Assign_4^save_23/Assign_5^save_23/Assign_6^save_23/Assign_7^save_23/Assign_8^save_23/Assign_9
3
save_23/restore_allNoOp^save_23/restore_shard
\
save_24/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_24/filenamePlaceholderWithDefaultsave_24/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_24/ConstPlaceholderWithDefaultsave_24/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_24/StringJoin/inputs_1Const*<
value3B1 B+_temp_c5ccf20d221e474e9b48db9ce0edc8fc/part*
dtype0*
_output_shapes
: 
~
save_24/StringJoin
StringJoinsave_24/Constsave_24/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_24/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_24/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_24/ShardedFilenameShardedFilenamesave_24/StringJoinsave_24/ShardedFilename/shardsave_24/num_shards*
_output_shapes
: 
�
save_24/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_24/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_24/SaveV2SaveV2save_24/ShardedFilenamesave_24/SaveV2/tensor_namessave_24/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_24/control_dependencyIdentitysave_24/ShardedFilename^save_24/SaveV2*
T0**
_class 
loc:@save_24/ShardedFilename*
_output_shapes
: 
�
.save_24/MergeV2Checkpoints/checkpoint_prefixesPacksave_24/ShardedFilename^save_24/control_dependency*
N*
_output_shapes
:*
T0*

axis 
�
save_24/MergeV2CheckpointsMergeV2Checkpoints.save_24/MergeV2Checkpoints/checkpoint_prefixessave_24/Const*
delete_old_dirs(
�
save_24/IdentityIdentitysave_24/Const^save_24/MergeV2Checkpoints^save_24/control_dependency*
_output_shapes
: *
T0
�
save_24/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_24/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_24/RestoreV2	RestoreV2save_24/Constsave_24/RestoreV2/tensor_names"save_24/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_24/AssignAssignbeta1_powersave_24/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_24/Assign_1Assignbeta2_powersave_24/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_24/Assign_2Assignpi/dense/biassave_24/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_24/Assign_3Assignpi/dense/kernelsave_24/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_24/Assign_4Assignpi/dense_1/biassave_24/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
�
save_24/Assign_5Assignpi/dense_1/kernelsave_24/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_24/Assign_6Assignv/dense/biassave_24/RestoreV2:6*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_24/Assign_7Assignv/dense/bias/Adamsave_24/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_24/Assign_8Assignv/dense/bias/Adam_1save_24/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_24/Assign_9Assignv/dense/kernelsave_24/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_24/Assign_10Assignv/dense/kernel/Adamsave_24/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_24/Assign_11Assignv/dense/kernel/Adam_1save_24/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_24/Assign_12Assignv/dense_1/biassave_24/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_24/Assign_13Assignv/dense_1/bias/Adamsave_24/RestoreV2:13*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_24/Assign_14Assignv/dense_1/bias/Adam_1save_24/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_24/Assign_15Assignv/dense_1/kernelsave_24/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_24/Assign_16Assignv/dense_1/kernel/Adamsave_24/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_24/Assign_17Assignv/dense_1/kernel/Adam_1save_24/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_24/restore_shardNoOp^save_24/Assign^save_24/Assign_1^save_24/Assign_10^save_24/Assign_11^save_24/Assign_12^save_24/Assign_13^save_24/Assign_14^save_24/Assign_15^save_24/Assign_16^save_24/Assign_17^save_24/Assign_2^save_24/Assign_3^save_24/Assign_4^save_24/Assign_5^save_24/Assign_6^save_24/Assign_7^save_24/Assign_8^save_24/Assign_9
3
save_24/restore_allNoOp^save_24/restore_shard
\
save_25/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_25/filenamePlaceholderWithDefaultsave_25/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_25/ConstPlaceholderWithDefaultsave_25/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_25/StringJoin/inputs_1Const*<
value3B1 B+_temp_a6b6a5a5383b4d58a44f66b8a36dcea7/part*
dtype0*
_output_shapes
: 
~
save_25/StringJoin
StringJoinsave_25/Constsave_25/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_25/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_25/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_25/ShardedFilenameShardedFilenamesave_25/StringJoinsave_25/ShardedFilename/shardsave_25/num_shards*
_output_shapes
: 
�
save_25/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_25/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_25/SaveV2SaveV2save_25/ShardedFilenamesave_25/SaveV2/tensor_namessave_25/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_25/control_dependencyIdentitysave_25/ShardedFilename^save_25/SaveV2**
_class 
loc:@save_25/ShardedFilename*
_output_shapes
: *
T0
�
.save_25/MergeV2Checkpoints/checkpoint_prefixesPacksave_25/ShardedFilename^save_25/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_25/MergeV2CheckpointsMergeV2Checkpoints.save_25/MergeV2Checkpoints/checkpoint_prefixessave_25/Const*
delete_old_dirs(
�
save_25/IdentityIdentitysave_25/Const^save_25/MergeV2Checkpoints^save_25/control_dependency*
T0*
_output_shapes
: 
�
save_25/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
"save_25/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_25/RestoreV2	RestoreV2save_25/Constsave_25/RestoreV2/tensor_names"save_25/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_25/AssignAssignbeta1_powersave_25/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_25/Assign_1Assignbeta2_powersave_25/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_25/Assign_2Assignpi/dense/biassave_25/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_25/Assign_3Assignpi/dense/kernelsave_25/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_25/Assign_4Assignpi/dense_1/biassave_25/RestoreV2:4*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_25/Assign_5Assignpi/dense_1/kernelsave_25/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_25/Assign_6Assignv/dense/biassave_25/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_25/Assign_7Assignv/dense/bias/Adamsave_25/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_25/Assign_8Assignv/dense/bias/Adam_1save_25/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_25/Assign_9Assignv/dense/kernelsave_25/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_25/Assign_10Assignv/dense/kernel/Adamsave_25/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_25/Assign_11Assignv/dense/kernel/Adam_1save_25/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_25/Assign_12Assignv/dense_1/biassave_25/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_25/Assign_13Assignv/dense_1/bias/Adamsave_25/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_25/Assign_14Assignv/dense_1/bias/Adam_1save_25/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_25/Assign_15Assignv/dense_1/kernelsave_25/RestoreV2:15*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_25/Assign_16Assignv/dense_1/kernel/Adamsave_25/RestoreV2:16*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_25/Assign_17Assignv/dense_1/kernel/Adam_1save_25/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_25/restore_shardNoOp^save_25/Assign^save_25/Assign_1^save_25/Assign_10^save_25/Assign_11^save_25/Assign_12^save_25/Assign_13^save_25/Assign_14^save_25/Assign_15^save_25/Assign_16^save_25/Assign_17^save_25/Assign_2^save_25/Assign_3^save_25/Assign_4^save_25/Assign_5^save_25/Assign_6^save_25/Assign_7^save_25/Assign_8^save_25/Assign_9
3
save_25/restore_allNoOp^save_25/restore_shard
\
save_26/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_26/filenamePlaceholderWithDefaultsave_26/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_26/ConstPlaceholderWithDefaultsave_26/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_26/StringJoin/inputs_1Const*<
value3B1 B+_temp_e388d9fc90584fbf816b387ef2eac281/part*
dtype0*
_output_shapes
: 
~
save_26/StringJoin
StringJoinsave_26/Constsave_26/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_26/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_26/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_26/ShardedFilenameShardedFilenamesave_26/StringJoinsave_26/ShardedFilename/shardsave_26/num_shards*
_output_shapes
: 
�
save_26/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_26/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_26/SaveV2SaveV2save_26/ShardedFilenamesave_26/SaveV2/tensor_namessave_26/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_26/control_dependencyIdentitysave_26/ShardedFilename^save_26/SaveV2*
T0**
_class 
loc:@save_26/ShardedFilename*
_output_shapes
: 
�
.save_26/MergeV2Checkpoints/checkpoint_prefixesPacksave_26/ShardedFilename^save_26/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_26/MergeV2CheckpointsMergeV2Checkpoints.save_26/MergeV2Checkpoints/checkpoint_prefixessave_26/Const*
delete_old_dirs(
�
save_26/IdentityIdentitysave_26/Const^save_26/MergeV2Checkpoints^save_26/control_dependency*
T0*
_output_shapes
: 
�
save_26/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_26/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_26/RestoreV2	RestoreV2save_26/Constsave_26/RestoreV2/tensor_names"save_26/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_26/AssignAssignbeta1_powersave_26/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_26/Assign_1Assignbeta2_powersave_26/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_26/Assign_2Assignpi/dense/biassave_26/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_26/Assign_3Assignpi/dense/kernelsave_26/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_26/Assign_4Assignpi/dense_1/biassave_26/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_26/Assign_5Assignpi/dense_1/kernelsave_26/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_26/Assign_6Assignv/dense/biassave_26/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_26/Assign_7Assignv/dense/bias/Adamsave_26/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_26/Assign_8Assignv/dense/bias/Adam_1save_26/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_26/Assign_9Assignv/dense/kernelsave_26/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_26/Assign_10Assignv/dense/kernel/Adamsave_26/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_26/Assign_11Assignv/dense/kernel/Adam_1save_26/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_26/Assign_12Assignv/dense_1/biassave_26/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_26/Assign_13Assignv/dense_1/bias/Adamsave_26/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_26/Assign_14Assignv/dense_1/bias/Adam_1save_26/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_26/Assign_15Assignv/dense_1/kernelsave_26/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_26/Assign_16Assignv/dense_1/kernel/Adamsave_26/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_26/Assign_17Assignv/dense_1/kernel/Adam_1save_26/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_26/restore_shardNoOp^save_26/Assign^save_26/Assign_1^save_26/Assign_10^save_26/Assign_11^save_26/Assign_12^save_26/Assign_13^save_26/Assign_14^save_26/Assign_15^save_26/Assign_16^save_26/Assign_17^save_26/Assign_2^save_26/Assign_3^save_26/Assign_4^save_26/Assign_5^save_26/Assign_6^save_26/Assign_7^save_26/Assign_8^save_26/Assign_9
3
save_26/restore_allNoOp^save_26/restore_shard
\
save_27/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_27/filenamePlaceholderWithDefaultsave_27/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_27/ConstPlaceholderWithDefaultsave_27/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_27/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_41c6c2698c7542f397fe5b486eb09be1/part
~
save_27/StringJoin
StringJoinsave_27/Constsave_27/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_27/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_27/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_27/ShardedFilenameShardedFilenamesave_27/StringJoinsave_27/ShardedFilename/shardsave_27/num_shards*
_output_shapes
: 
�
save_27/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_27/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_27/SaveV2SaveV2save_27/ShardedFilenamesave_27/SaveV2/tensor_namessave_27/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_27/control_dependencyIdentitysave_27/ShardedFilename^save_27/SaveV2*
T0**
_class 
loc:@save_27/ShardedFilename*
_output_shapes
: 
�
.save_27/MergeV2Checkpoints/checkpoint_prefixesPacksave_27/ShardedFilename^save_27/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_27/MergeV2CheckpointsMergeV2Checkpoints.save_27/MergeV2Checkpoints/checkpoint_prefixessave_27/Const*
delete_old_dirs(
�
save_27/IdentityIdentitysave_27/Const^save_27/MergeV2Checkpoints^save_27/control_dependency*
_output_shapes
: *
T0
�
save_27/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_27/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_27/RestoreV2	RestoreV2save_27/Constsave_27/RestoreV2/tensor_names"save_27/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_27/AssignAssignbeta1_powersave_27/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_27/Assign_1Assignbeta2_powersave_27/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_27/Assign_2Assignpi/dense/biassave_27/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_27/Assign_3Assignpi/dense/kernelsave_27/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_27/Assign_4Assignpi/dense_1/biassave_27/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_27/Assign_5Assignpi/dense_1/kernelsave_27/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_27/Assign_6Assignv/dense/biassave_27/RestoreV2:6*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_27/Assign_7Assignv/dense/bias/Adamsave_27/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_27/Assign_8Assignv/dense/bias/Adam_1save_27/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_27/Assign_9Assignv/dense/kernelsave_27/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_27/Assign_10Assignv/dense/kernel/Adamsave_27/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_27/Assign_11Assignv/dense/kernel/Adam_1save_27/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_27/Assign_12Assignv/dense_1/biassave_27/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_27/Assign_13Assignv/dense_1/bias/Adamsave_27/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_27/Assign_14Assignv/dense_1/bias/Adam_1save_27/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_27/Assign_15Assignv/dense_1/kernelsave_27/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_27/Assign_16Assignv/dense_1/kernel/Adamsave_27/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_27/Assign_17Assignv/dense_1/kernel/Adam_1save_27/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_27/restore_shardNoOp^save_27/Assign^save_27/Assign_1^save_27/Assign_10^save_27/Assign_11^save_27/Assign_12^save_27/Assign_13^save_27/Assign_14^save_27/Assign_15^save_27/Assign_16^save_27/Assign_17^save_27/Assign_2^save_27/Assign_3^save_27/Assign_4^save_27/Assign_5^save_27/Assign_6^save_27/Assign_7^save_27/Assign_8^save_27/Assign_9
3
save_27/restore_allNoOp^save_27/restore_shard
\
save_28/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_28/filenamePlaceholderWithDefaultsave_28/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_28/ConstPlaceholderWithDefaultsave_28/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_28/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_66f22db665184e8cb383d4c83e5202a1/part
~
save_28/StringJoin
StringJoinsave_28/Constsave_28/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_28/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_28/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_28/ShardedFilenameShardedFilenamesave_28/StringJoinsave_28/ShardedFilename/shardsave_28/num_shards*
_output_shapes
: 
�
save_28/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_28/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_28/SaveV2SaveV2save_28/ShardedFilenamesave_28/SaveV2/tensor_namessave_28/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_28/control_dependencyIdentitysave_28/ShardedFilename^save_28/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_28/ShardedFilename
�
.save_28/MergeV2Checkpoints/checkpoint_prefixesPacksave_28/ShardedFilename^save_28/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_28/MergeV2CheckpointsMergeV2Checkpoints.save_28/MergeV2Checkpoints/checkpoint_prefixessave_28/Const*
delete_old_dirs(
�
save_28/IdentityIdentitysave_28/Const^save_28/MergeV2Checkpoints^save_28/control_dependency*
_output_shapes
: *
T0
�
save_28/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
"save_28/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_28/RestoreV2	RestoreV2save_28/Constsave_28/RestoreV2/tensor_names"save_28/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_28/AssignAssignbeta1_powersave_28/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_28/Assign_1Assignbeta2_powersave_28/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_28/Assign_2Assignpi/dense/biassave_28/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_28/Assign_3Assignpi/dense/kernelsave_28/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/Assign_4Assignpi/dense_1/biassave_28/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
�
save_28/Assign_5Assignpi/dense_1/kernelsave_28/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/Assign_6Assignv/dense/biassave_28/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_28/Assign_7Assignv/dense/bias/Adamsave_28/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_28/Assign_8Assignv/dense/bias/Adam_1save_28/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_28/Assign_9Assignv/dense/kernelsave_28/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_28/Assign_10Assignv/dense/kernel/Adamsave_28/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/Assign_11Assignv/dense/kernel/Adam_1save_28/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_28/Assign_12Assignv/dense_1/biassave_28/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_28/Assign_13Assignv/dense_1/bias/Adamsave_28/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_28/Assign_14Assignv/dense_1/bias/Adam_1save_28/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_28/Assign_15Assignv/dense_1/kernelsave_28/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/Assign_16Assignv/dense_1/kernel/Adamsave_28/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/Assign_17Assignv/dense_1/kernel/Adam_1save_28/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_28/restore_shardNoOp^save_28/Assign^save_28/Assign_1^save_28/Assign_10^save_28/Assign_11^save_28/Assign_12^save_28/Assign_13^save_28/Assign_14^save_28/Assign_15^save_28/Assign_16^save_28/Assign_17^save_28/Assign_2^save_28/Assign_3^save_28/Assign_4^save_28/Assign_5^save_28/Assign_6^save_28/Assign_7^save_28/Assign_8^save_28/Assign_9
3
save_28/restore_allNoOp^save_28/restore_shard
\
save_29/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_29/filenamePlaceholderWithDefaultsave_29/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_29/ConstPlaceholderWithDefaultsave_29/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_29/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_e3359932baee43afae1f73919738147e/part*
dtype0
~
save_29/StringJoin
StringJoinsave_29/Constsave_29/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_29/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_29/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_29/ShardedFilenameShardedFilenamesave_29/StringJoinsave_29/ShardedFilename/shardsave_29/num_shards*
_output_shapes
: 
�
save_29/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_29/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_29/SaveV2SaveV2save_29/ShardedFilenamesave_29/SaveV2/tensor_namessave_29/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_29/control_dependencyIdentitysave_29/ShardedFilename^save_29/SaveV2*
T0**
_class 
loc:@save_29/ShardedFilename*
_output_shapes
: 
�
.save_29/MergeV2Checkpoints/checkpoint_prefixesPacksave_29/ShardedFilename^save_29/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_29/MergeV2CheckpointsMergeV2Checkpoints.save_29/MergeV2Checkpoints/checkpoint_prefixessave_29/Const*
delete_old_dirs(
�
save_29/IdentityIdentitysave_29/Const^save_29/MergeV2Checkpoints^save_29/control_dependency*
T0*
_output_shapes
: 
�
save_29/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_29/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_29/RestoreV2	RestoreV2save_29/Constsave_29/RestoreV2/tensor_names"save_29/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_29/AssignAssignbeta1_powersave_29/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_1Assignbeta2_powersave_29/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_29/Assign_2Assignpi/dense/biassave_29/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_29/Assign_3Assignpi/dense/kernelsave_29/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_29/Assign_4Assignpi/dense_1/biassave_29/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_29/Assign_5Assignpi/dense_1/kernelsave_29/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_29/Assign_6Assignv/dense/biassave_29/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_7Assignv/dense/bias/Adamsave_29/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_8Assignv/dense/bias/Adam_1save_29/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_29/Assign_9Assignv/dense/kernelsave_29/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_29/Assign_10Assignv/dense/kernel/Adamsave_29/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_29/Assign_11Assignv/dense/kernel/Adam_1save_29/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_29/Assign_12Assignv/dense_1/biassave_29/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_29/Assign_13Assignv/dense_1/bias/Adamsave_29/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_29/Assign_14Assignv/dense_1/bias/Adam_1save_29/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_29/Assign_15Assignv/dense_1/kernelsave_29/RestoreV2:15*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_29/Assign_16Assignv/dense_1/kernel/Adamsave_29/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_29/Assign_17Assignv/dense_1/kernel/Adam_1save_29/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_29/restore_shardNoOp^save_29/Assign^save_29/Assign_1^save_29/Assign_10^save_29/Assign_11^save_29/Assign_12^save_29/Assign_13^save_29/Assign_14^save_29/Assign_15^save_29/Assign_16^save_29/Assign_17^save_29/Assign_2^save_29/Assign_3^save_29/Assign_4^save_29/Assign_5^save_29/Assign_6^save_29/Assign_7^save_29/Assign_8^save_29/Assign_9
3
save_29/restore_allNoOp^save_29/restore_shard
\
save_30/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_30/filenamePlaceholderWithDefaultsave_30/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_30/ConstPlaceholderWithDefaultsave_30/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_30/StringJoin/inputs_1Const*<
value3B1 B+_temp_141be97bbe9b4c8995cdf952ed662a14/part*
dtype0*
_output_shapes
: 
~
save_30/StringJoin
StringJoinsave_30/Constsave_30/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_30/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_30/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_30/ShardedFilenameShardedFilenamesave_30/StringJoinsave_30/ShardedFilename/shardsave_30/num_shards*
_output_shapes
: 
�
save_30/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_30/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_30/SaveV2SaveV2save_30/ShardedFilenamesave_30/SaveV2/tensor_namessave_30/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_30/control_dependencyIdentitysave_30/ShardedFilename^save_30/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_30/ShardedFilename
�
.save_30/MergeV2Checkpoints/checkpoint_prefixesPacksave_30/ShardedFilename^save_30/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_30/MergeV2CheckpointsMergeV2Checkpoints.save_30/MergeV2Checkpoints/checkpoint_prefixessave_30/Const*
delete_old_dirs(
�
save_30/IdentityIdentitysave_30/Const^save_30/MergeV2Checkpoints^save_30/control_dependency*
T0*
_output_shapes
: 
�
save_30/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_30/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_30/RestoreV2	RestoreV2save_30/Constsave_30/RestoreV2/tensor_names"save_30/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_30/AssignAssignbeta1_powersave_30/RestoreV2*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_30/Assign_1Assignbeta2_powersave_30/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_30/Assign_2Assignpi/dense/biassave_30/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_30/Assign_3Assignpi/dense/kernelsave_30/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_30/Assign_4Assignpi/dense_1/biassave_30/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_30/Assign_5Assignpi/dense_1/kernelsave_30/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/Assign_6Assignv/dense/biassave_30/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_30/Assign_7Assignv/dense/bias/Adamsave_30/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_30/Assign_8Assignv/dense/bias/Adam_1save_30/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_30/Assign_9Assignv/dense/kernelsave_30/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/Assign_10Assignv/dense/kernel/Adamsave_30/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_30/Assign_11Assignv/dense/kernel/Adam_1save_30/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/Assign_12Assignv/dense_1/biassave_30/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_30/Assign_13Assignv/dense_1/bias/Adamsave_30/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_30/Assign_14Assignv/dense_1/bias/Adam_1save_30/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_30/Assign_15Assignv/dense_1/kernelsave_30/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/Assign_16Assignv/dense_1/kernel/Adamsave_30/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/Assign_17Assignv/dense_1/kernel/Adam_1save_30/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_30/restore_shardNoOp^save_30/Assign^save_30/Assign_1^save_30/Assign_10^save_30/Assign_11^save_30/Assign_12^save_30/Assign_13^save_30/Assign_14^save_30/Assign_15^save_30/Assign_16^save_30/Assign_17^save_30/Assign_2^save_30/Assign_3^save_30/Assign_4^save_30/Assign_5^save_30/Assign_6^save_30/Assign_7^save_30/Assign_8^save_30/Assign_9
3
save_30/restore_allNoOp^save_30/restore_shard
\
save_31/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_31/filenamePlaceholderWithDefaultsave_31/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_31/ConstPlaceholderWithDefaultsave_31/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_31/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_de9155b319a6428d83af9a3b826d102d/part
~
save_31/StringJoin
StringJoinsave_31/Constsave_31/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_31/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_31/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
�
save_31/ShardedFilenameShardedFilenamesave_31/StringJoinsave_31/ShardedFilename/shardsave_31/num_shards*
_output_shapes
: 
�
save_31/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_31/SaveV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_31/SaveV2SaveV2save_31/ShardedFilenamesave_31/SaveV2/tensor_namessave_31/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_31/control_dependencyIdentitysave_31/ShardedFilename^save_31/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_31/ShardedFilename
�
.save_31/MergeV2Checkpoints/checkpoint_prefixesPacksave_31/ShardedFilename^save_31/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_31/MergeV2CheckpointsMergeV2Checkpoints.save_31/MergeV2Checkpoints/checkpoint_prefixessave_31/Const*
delete_old_dirs(
�
save_31/IdentityIdentitysave_31/Const^save_31/MergeV2Checkpoints^save_31/control_dependency*
T0*
_output_shapes
: 
�
save_31/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_31/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_31/RestoreV2	RestoreV2save_31/Constsave_31/RestoreV2/tensor_names"save_31/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_31/AssignAssignbeta1_powersave_31/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_31/Assign_1Assignbeta2_powersave_31/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_31/Assign_2Assignpi/dense/biassave_31/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_31/Assign_3Assignpi/dense/kernelsave_31/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_31/Assign_4Assignpi/dense_1/biassave_31/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
�
save_31/Assign_5Assignpi/dense_1/kernelsave_31/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_31/Assign_6Assignv/dense/biassave_31/RestoreV2:6*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_31/Assign_7Assignv/dense/bias/Adamsave_31/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_31/Assign_8Assignv/dense/bias/Adam_1save_31/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_31/Assign_9Assignv/dense/kernelsave_31/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_31/Assign_10Assignv/dense/kernel/Adamsave_31/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_31/Assign_11Assignv/dense/kernel/Adam_1save_31/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_31/Assign_12Assignv/dense_1/biassave_31/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_31/Assign_13Assignv/dense_1/bias/Adamsave_31/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_31/Assign_14Assignv/dense_1/bias/Adam_1save_31/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_31/Assign_15Assignv/dense_1/kernelsave_31/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_31/Assign_16Assignv/dense_1/kernel/Adamsave_31/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_31/Assign_17Assignv/dense_1/kernel/Adam_1save_31/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_31/restore_shardNoOp^save_31/Assign^save_31/Assign_1^save_31/Assign_10^save_31/Assign_11^save_31/Assign_12^save_31/Assign_13^save_31/Assign_14^save_31/Assign_15^save_31/Assign_16^save_31/Assign_17^save_31/Assign_2^save_31/Assign_3^save_31/Assign_4^save_31/Assign_5^save_31/Assign_6^save_31/Assign_7^save_31/Assign_8^save_31/Assign_9
3
save_31/restore_allNoOp^save_31/restore_shard
\
save_32/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_32/filenamePlaceholderWithDefaultsave_32/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_32/ConstPlaceholderWithDefaultsave_32/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_32/StringJoin/inputs_1Const*<
value3B1 B+_temp_b0ebc572bc7b4b4587c0223814774704/part*
dtype0*
_output_shapes
: 
~
save_32/StringJoin
StringJoinsave_32/Constsave_32/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_32/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_32/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_32/ShardedFilenameShardedFilenamesave_32/StringJoinsave_32/ShardedFilename/shardsave_32/num_shards*
_output_shapes
: 
�
save_32/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_32/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_32/SaveV2SaveV2save_32/ShardedFilenamesave_32/SaveV2/tensor_namessave_32/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_32/control_dependencyIdentitysave_32/ShardedFilename^save_32/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_32/ShardedFilename
�
.save_32/MergeV2Checkpoints/checkpoint_prefixesPacksave_32/ShardedFilename^save_32/control_dependency*
_output_shapes
:*
T0*

axis *
N
�
save_32/MergeV2CheckpointsMergeV2Checkpoints.save_32/MergeV2Checkpoints/checkpoint_prefixessave_32/Const*
delete_old_dirs(
�
save_32/IdentityIdentitysave_32/Const^save_32/MergeV2Checkpoints^save_32/control_dependency*
T0*
_output_shapes
: 
�
save_32/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
"save_32/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_32/RestoreV2	RestoreV2save_32/Constsave_32/RestoreV2/tensor_names"save_32/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_32/AssignAssignbeta1_powersave_32/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_32/Assign_1Assignbeta2_powersave_32/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_32/Assign_2Assignpi/dense/biassave_32/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_32/Assign_3Assignpi/dense/kernelsave_32/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_32/Assign_4Assignpi/dense_1/biassave_32/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_32/Assign_5Assignpi/dense_1/kernelsave_32/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_32/Assign_6Assignv/dense/biassave_32/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_32/Assign_7Assignv/dense/bias/Adamsave_32/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_32/Assign_8Assignv/dense/bias/Adam_1save_32/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_32/Assign_9Assignv/dense/kernelsave_32/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_32/Assign_10Assignv/dense/kernel/Adamsave_32/RestoreV2:10*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_32/Assign_11Assignv/dense/kernel/Adam_1save_32/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_32/Assign_12Assignv/dense_1/biassave_32/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_32/Assign_13Assignv/dense_1/bias/Adamsave_32/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_32/Assign_14Assignv/dense_1/bias/Adam_1save_32/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_32/Assign_15Assignv/dense_1/kernelsave_32/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_32/Assign_16Assignv/dense_1/kernel/Adamsave_32/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_32/Assign_17Assignv/dense_1/kernel/Adam_1save_32/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_32/restore_shardNoOp^save_32/Assign^save_32/Assign_1^save_32/Assign_10^save_32/Assign_11^save_32/Assign_12^save_32/Assign_13^save_32/Assign_14^save_32/Assign_15^save_32/Assign_16^save_32/Assign_17^save_32/Assign_2^save_32/Assign_3^save_32/Assign_4^save_32/Assign_5^save_32/Assign_6^save_32/Assign_7^save_32/Assign_8^save_32/Assign_9
3
save_32/restore_allNoOp^save_32/restore_shard
\
save_33/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_33/filenamePlaceholderWithDefaultsave_33/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_33/ConstPlaceholderWithDefaultsave_33/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_33/StringJoin/inputs_1Const*<
value3B1 B+_temp_e77472bce5c349499105adaa86d80ae2/part*
dtype0*
_output_shapes
: 
~
save_33/StringJoin
StringJoinsave_33/Constsave_33/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_33/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_33/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_33/ShardedFilenameShardedFilenamesave_33/StringJoinsave_33/ShardedFilename/shardsave_33/num_shards*
_output_shapes
: 
�
save_33/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_33/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_33/SaveV2SaveV2save_33/ShardedFilenamesave_33/SaveV2/tensor_namessave_33/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_33/control_dependencyIdentitysave_33/ShardedFilename^save_33/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_33/ShardedFilename
�
.save_33/MergeV2Checkpoints/checkpoint_prefixesPacksave_33/ShardedFilename^save_33/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_33/MergeV2CheckpointsMergeV2Checkpoints.save_33/MergeV2Checkpoints/checkpoint_prefixessave_33/Const*
delete_old_dirs(
�
save_33/IdentityIdentitysave_33/Const^save_33/MergeV2Checkpoints^save_33/control_dependency*
T0*
_output_shapes
: 
�
save_33/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
"save_33/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_33/RestoreV2	RestoreV2save_33/Constsave_33/RestoreV2/tensor_names"save_33/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_33/AssignAssignbeta1_powersave_33/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_1Assignbeta2_powersave_33/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_2Assignpi/dense/biassave_33/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_3Assignpi/dense/kernelsave_33/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_33/Assign_4Assignpi/dense_1/biassave_33/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_33/Assign_5Assignpi/dense_1/kernelsave_33/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_33/Assign_6Assignv/dense/biassave_33/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_7Assignv/dense/bias/Adamsave_33/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_33/Assign_8Assignv/dense/bias/Adam_1save_33/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_33/Assign_9Assignv/dense/kernelsave_33/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_33/Assign_10Assignv/dense/kernel/Adamsave_33/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_33/Assign_11Assignv/dense/kernel/Adam_1save_33/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_33/Assign_12Assignv/dense_1/biassave_33/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_33/Assign_13Assignv/dense_1/bias/Adamsave_33/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_33/Assign_14Assignv/dense_1/bias/Adam_1save_33/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_33/Assign_15Assignv/dense_1/kernelsave_33/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_33/Assign_16Assignv/dense_1/kernel/Adamsave_33/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_33/Assign_17Assignv/dense_1/kernel/Adam_1save_33/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_33/restore_shardNoOp^save_33/Assign^save_33/Assign_1^save_33/Assign_10^save_33/Assign_11^save_33/Assign_12^save_33/Assign_13^save_33/Assign_14^save_33/Assign_15^save_33/Assign_16^save_33/Assign_17^save_33/Assign_2^save_33/Assign_3^save_33/Assign_4^save_33/Assign_5^save_33/Assign_6^save_33/Assign_7^save_33/Assign_8^save_33/Assign_9
3
save_33/restore_allNoOp^save_33/restore_shard
\
save_34/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_34/filenamePlaceholderWithDefaultsave_34/filename/input*
_output_shapes
: *
shape: *
dtype0
k
save_34/ConstPlaceholderWithDefaultsave_34/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_34/StringJoin/inputs_1Const*<
value3B1 B+_temp_d5981b3a382c4ba0a0659963c894a0ec/part*
dtype0*
_output_shapes
: 
~
save_34/StringJoin
StringJoinsave_34/Constsave_34/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_34/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_34/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_34/ShardedFilenameShardedFilenamesave_34/StringJoinsave_34/ShardedFilename/shardsave_34/num_shards*
_output_shapes
: 
�
save_34/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_34/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_34/SaveV2SaveV2save_34/ShardedFilenamesave_34/SaveV2/tensor_namessave_34/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_34/control_dependencyIdentitysave_34/ShardedFilename^save_34/SaveV2*
T0**
_class 
loc:@save_34/ShardedFilename*
_output_shapes
: 
�
.save_34/MergeV2Checkpoints/checkpoint_prefixesPacksave_34/ShardedFilename^save_34/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_34/MergeV2CheckpointsMergeV2Checkpoints.save_34/MergeV2Checkpoints/checkpoint_prefixessave_34/Const*
delete_old_dirs(
�
save_34/IdentityIdentitysave_34/Const^save_34/MergeV2Checkpoints^save_34/control_dependency*
_output_shapes
: *
T0
�
save_34/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_34/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_34/RestoreV2	RestoreV2save_34/Constsave_34/RestoreV2/tensor_names"save_34/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_34/AssignAssignbeta1_powersave_34/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_34/Assign_1Assignbeta2_powersave_34/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_34/Assign_2Assignpi/dense/biassave_34/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_34/Assign_3Assignpi/dense/kernelsave_34/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_34/Assign_4Assignpi/dense_1/biassave_34/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_34/Assign_5Assignpi/dense_1/kernelsave_34/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_34/Assign_6Assignv/dense/biassave_34/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_34/Assign_7Assignv/dense/bias/Adamsave_34/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_34/Assign_8Assignv/dense/bias/Adam_1save_34/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_34/Assign_9Assignv/dense/kernelsave_34/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_34/Assign_10Assignv/dense/kernel/Adamsave_34/RestoreV2:10*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_34/Assign_11Assignv/dense/kernel/Adam_1save_34/RestoreV2:11*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_34/Assign_12Assignv/dense_1/biassave_34/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_34/Assign_13Assignv/dense_1/bias/Adamsave_34/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_34/Assign_14Assignv/dense_1/bias/Adam_1save_34/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_34/Assign_15Assignv/dense_1/kernelsave_34/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_34/Assign_16Assignv/dense_1/kernel/Adamsave_34/RestoreV2:16*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_34/Assign_17Assignv/dense_1/kernel/Adam_1save_34/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_34/restore_shardNoOp^save_34/Assign^save_34/Assign_1^save_34/Assign_10^save_34/Assign_11^save_34/Assign_12^save_34/Assign_13^save_34/Assign_14^save_34/Assign_15^save_34/Assign_16^save_34/Assign_17^save_34/Assign_2^save_34/Assign_3^save_34/Assign_4^save_34/Assign_5^save_34/Assign_6^save_34/Assign_7^save_34/Assign_8^save_34/Assign_9
3
save_34/restore_allNoOp^save_34/restore_shard
\
save_35/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
t
save_35/filenamePlaceholderWithDefaultsave_35/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_35/ConstPlaceholderWithDefaultsave_35/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_35/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_220b553c30564a99b7048ffc6c71cc90/part
~
save_35/StringJoin
StringJoinsave_35/Constsave_35/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_35/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_35/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_35/ShardedFilenameShardedFilenamesave_35/StringJoinsave_35/ShardedFilename/shardsave_35/num_shards*
_output_shapes
: 
�
save_35/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_35/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_35/SaveV2SaveV2save_35/ShardedFilenamesave_35/SaveV2/tensor_namessave_35/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_35/control_dependencyIdentitysave_35/ShardedFilename^save_35/SaveV2*
T0**
_class 
loc:@save_35/ShardedFilename*
_output_shapes
: 
�
.save_35/MergeV2Checkpoints/checkpoint_prefixesPacksave_35/ShardedFilename^save_35/control_dependency*
N*
_output_shapes
:*
T0*

axis 
�
save_35/MergeV2CheckpointsMergeV2Checkpoints.save_35/MergeV2Checkpoints/checkpoint_prefixessave_35/Const*
delete_old_dirs(
�
save_35/IdentityIdentitysave_35/Const^save_35/MergeV2Checkpoints^save_35/control_dependency*
T0*
_output_shapes
: 
�
save_35/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_35/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_35/RestoreV2	RestoreV2save_35/Constsave_35/RestoreV2/tensor_names"save_35/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_35/AssignAssignbeta1_powersave_35/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_35/Assign_1Assignbeta2_powersave_35/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_35/Assign_2Assignpi/dense/biassave_35/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_35/Assign_3Assignpi/dense/kernelsave_35/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_35/Assign_4Assignpi/dense_1/biassave_35/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
�
save_35/Assign_5Assignpi/dense_1/kernelsave_35/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_35/Assign_6Assignv/dense/biassave_35/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_35/Assign_7Assignv/dense/bias/Adamsave_35/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_35/Assign_8Assignv/dense/bias/Adam_1save_35/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_35/Assign_9Assignv/dense/kernelsave_35/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_35/Assign_10Assignv/dense/kernel/Adamsave_35/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_35/Assign_11Assignv/dense/kernel/Adam_1save_35/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_35/Assign_12Assignv/dense_1/biassave_35/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_35/Assign_13Assignv/dense_1/bias/Adamsave_35/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_35/Assign_14Assignv/dense_1/bias/Adam_1save_35/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_35/Assign_15Assignv/dense_1/kernelsave_35/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_35/Assign_16Assignv/dense_1/kernel/Adamsave_35/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_35/Assign_17Assignv/dense_1/kernel/Adam_1save_35/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_35/restore_shardNoOp^save_35/Assign^save_35/Assign_1^save_35/Assign_10^save_35/Assign_11^save_35/Assign_12^save_35/Assign_13^save_35/Assign_14^save_35/Assign_15^save_35/Assign_16^save_35/Assign_17^save_35/Assign_2^save_35/Assign_3^save_35/Assign_4^save_35/Assign_5^save_35/Assign_6^save_35/Assign_7^save_35/Assign_8^save_35/Assign_9
3
save_35/restore_allNoOp^save_35/restore_shard
\
save_36/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
t
save_36/filenamePlaceholderWithDefaultsave_36/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_36/ConstPlaceholderWithDefaultsave_36/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_36/StringJoin/inputs_1Const*<
value3B1 B+_temp_f34f102d4d764fff9c756b498f78c266/part*
dtype0*
_output_shapes
: 
~
save_36/StringJoin
StringJoinsave_36/Constsave_36/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_36/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_36/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_36/ShardedFilenameShardedFilenamesave_36/StringJoinsave_36/ShardedFilename/shardsave_36/num_shards*
_output_shapes
: 
�
save_36/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_36/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_36/SaveV2SaveV2save_36/ShardedFilenamesave_36/SaveV2/tensor_namessave_36/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_36/control_dependencyIdentitysave_36/ShardedFilename^save_36/SaveV2*
T0**
_class 
loc:@save_36/ShardedFilename*
_output_shapes
: 
�
.save_36/MergeV2Checkpoints/checkpoint_prefixesPacksave_36/ShardedFilename^save_36/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_36/MergeV2CheckpointsMergeV2Checkpoints.save_36/MergeV2Checkpoints/checkpoint_prefixessave_36/Const*
delete_old_dirs(
�
save_36/IdentityIdentitysave_36/Const^save_36/MergeV2Checkpoints^save_36/control_dependency*
_output_shapes
: *
T0
�
save_36/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_36/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_36/RestoreV2	RestoreV2save_36/Constsave_36/RestoreV2/tensor_names"save_36/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_36/AssignAssignbeta1_powersave_36/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_36/Assign_1Assignbeta2_powersave_36/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_36/Assign_2Assignpi/dense/biassave_36/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_36/Assign_3Assignpi/dense/kernelsave_36/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_36/Assign_4Assignpi/dense_1/biassave_36/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_36/Assign_5Assignpi/dense_1/kernelsave_36/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_36/Assign_6Assignv/dense/biassave_36/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_36/Assign_7Assignv/dense/bias/Adamsave_36/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_36/Assign_8Assignv/dense/bias/Adam_1save_36/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_36/Assign_9Assignv/dense/kernelsave_36/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_36/Assign_10Assignv/dense/kernel/Adamsave_36/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_36/Assign_11Assignv/dense/kernel/Adam_1save_36/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_36/Assign_12Assignv/dense_1/biassave_36/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_36/Assign_13Assignv/dense_1/bias/Adamsave_36/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_36/Assign_14Assignv/dense_1/bias/Adam_1save_36/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_36/Assign_15Assignv/dense_1/kernelsave_36/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_36/Assign_16Assignv/dense_1/kernel/Adamsave_36/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_36/Assign_17Assignv/dense_1/kernel/Adam_1save_36/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_36/restore_shardNoOp^save_36/Assign^save_36/Assign_1^save_36/Assign_10^save_36/Assign_11^save_36/Assign_12^save_36/Assign_13^save_36/Assign_14^save_36/Assign_15^save_36/Assign_16^save_36/Assign_17^save_36/Assign_2^save_36/Assign_3^save_36/Assign_4^save_36/Assign_5^save_36/Assign_6^save_36/Assign_7^save_36/Assign_8^save_36/Assign_9
3
save_36/restore_allNoOp^save_36/restore_shard
\
save_37/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_37/filenamePlaceholderWithDefaultsave_37/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_37/ConstPlaceholderWithDefaultsave_37/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_37/StringJoin/inputs_1Const*<
value3B1 B+_temp_dbacc0a12b794482b28cc1bd2527d0d1/part*
dtype0*
_output_shapes
: 
~
save_37/StringJoin
StringJoinsave_37/Constsave_37/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_37/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_37/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_37/ShardedFilenameShardedFilenamesave_37/StringJoinsave_37/ShardedFilename/shardsave_37/num_shards*
_output_shapes
: 
�
save_37/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_37/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_37/SaveV2SaveV2save_37/ShardedFilenamesave_37/SaveV2/tensor_namessave_37/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_37/control_dependencyIdentitysave_37/ShardedFilename^save_37/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_37/ShardedFilename
�
.save_37/MergeV2Checkpoints/checkpoint_prefixesPacksave_37/ShardedFilename^save_37/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_37/MergeV2CheckpointsMergeV2Checkpoints.save_37/MergeV2Checkpoints/checkpoint_prefixessave_37/Const*
delete_old_dirs(
�
save_37/IdentityIdentitysave_37/Const^save_37/MergeV2Checkpoints^save_37/control_dependency*
T0*
_output_shapes
: 
�
save_37/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_37/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_37/RestoreV2	RestoreV2save_37/Constsave_37/RestoreV2/tensor_names"save_37/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_37/AssignAssignbeta1_powersave_37/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_37/Assign_1Assignbeta2_powersave_37/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_37/Assign_2Assignpi/dense/biassave_37/RestoreV2:2*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_37/Assign_3Assignpi/dense/kernelsave_37/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_37/Assign_4Assignpi/dense_1/biassave_37/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_37/Assign_5Assignpi/dense_1/kernelsave_37/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_37/Assign_6Assignv/dense/biassave_37/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_37/Assign_7Assignv/dense/bias/Adamsave_37/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_37/Assign_8Assignv/dense/bias/Adam_1save_37/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_37/Assign_9Assignv/dense/kernelsave_37/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_37/Assign_10Assignv/dense/kernel/Adamsave_37/RestoreV2:10*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_37/Assign_11Assignv/dense/kernel/Adam_1save_37/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_37/Assign_12Assignv/dense_1/biassave_37/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_37/Assign_13Assignv/dense_1/bias/Adamsave_37/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_37/Assign_14Assignv/dense_1/bias/Adam_1save_37/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_37/Assign_15Assignv/dense_1/kernelsave_37/RestoreV2:15*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_37/Assign_16Assignv/dense_1/kernel/Adamsave_37/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_37/Assign_17Assignv/dense_1/kernel/Adam_1save_37/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_37/restore_shardNoOp^save_37/Assign^save_37/Assign_1^save_37/Assign_10^save_37/Assign_11^save_37/Assign_12^save_37/Assign_13^save_37/Assign_14^save_37/Assign_15^save_37/Assign_16^save_37/Assign_17^save_37/Assign_2^save_37/Assign_3^save_37/Assign_4^save_37/Assign_5^save_37/Assign_6^save_37/Assign_7^save_37/Assign_8^save_37/Assign_9
3
save_37/restore_allNoOp^save_37/restore_shard
\
save_38/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_38/filenamePlaceholderWithDefaultsave_38/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_38/ConstPlaceholderWithDefaultsave_38/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_38/StringJoin/inputs_1Const*<
value3B1 B+_temp_c972e30b639f4f41a94d3c03ca70cfd8/part*
dtype0*
_output_shapes
: 
~
save_38/StringJoin
StringJoinsave_38/Constsave_38/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_38/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_38/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_38/ShardedFilenameShardedFilenamesave_38/StringJoinsave_38/ShardedFilename/shardsave_38/num_shards*
_output_shapes
: 
�
save_38/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_38/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_38/SaveV2SaveV2save_38/ShardedFilenamesave_38/SaveV2/tensor_namessave_38/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_38/control_dependencyIdentitysave_38/ShardedFilename^save_38/SaveV2*
T0**
_class 
loc:@save_38/ShardedFilename*
_output_shapes
: 
�
.save_38/MergeV2Checkpoints/checkpoint_prefixesPacksave_38/ShardedFilename^save_38/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_38/MergeV2CheckpointsMergeV2Checkpoints.save_38/MergeV2Checkpoints/checkpoint_prefixessave_38/Const*
delete_old_dirs(
�
save_38/IdentityIdentitysave_38/Const^save_38/MergeV2Checkpoints^save_38/control_dependency*
T0*
_output_shapes
: 
�
save_38/RestoreV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
"save_38/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_38/RestoreV2	RestoreV2save_38/Constsave_38/RestoreV2/tensor_names"save_38/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_38/AssignAssignbeta1_powersave_38/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_38/Assign_1Assignbeta2_powersave_38/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_38/Assign_2Assignpi/dense/biassave_38/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_38/Assign_3Assignpi/dense/kernelsave_38/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_38/Assign_4Assignpi/dense_1/biassave_38/RestoreV2:4*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
�
save_38/Assign_5Assignpi/dense_1/kernelsave_38/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_38/Assign_6Assignv/dense/biassave_38/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_38/Assign_7Assignv/dense/bias/Adamsave_38/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_38/Assign_8Assignv/dense/bias/Adam_1save_38/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_38/Assign_9Assignv/dense/kernelsave_38/RestoreV2:9*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_38/Assign_10Assignv/dense/kernel/Adamsave_38/RestoreV2:10*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_38/Assign_11Assignv/dense/kernel/Adam_1save_38/RestoreV2:11*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_38/Assign_12Assignv/dense_1/biassave_38/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_38/Assign_13Assignv/dense_1/bias/Adamsave_38/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_38/Assign_14Assignv/dense_1/bias/Adam_1save_38/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_38/Assign_15Assignv/dense_1/kernelsave_38/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_38/Assign_16Assignv/dense_1/kernel/Adamsave_38/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_38/Assign_17Assignv/dense_1/kernel/Adam_1save_38/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_38/restore_shardNoOp^save_38/Assign^save_38/Assign_1^save_38/Assign_10^save_38/Assign_11^save_38/Assign_12^save_38/Assign_13^save_38/Assign_14^save_38/Assign_15^save_38/Assign_16^save_38/Assign_17^save_38/Assign_2^save_38/Assign_3^save_38/Assign_4^save_38/Assign_5^save_38/Assign_6^save_38/Assign_7^save_38/Assign_8^save_38/Assign_9
3
save_38/restore_allNoOp^save_38/restore_shard
\
save_39/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_39/filenamePlaceholderWithDefaultsave_39/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_39/ConstPlaceholderWithDefaultsave_39/filename*
_output_shapes
: *
shape: *
dtype0
�
save_39/StringJoin/inputs_1Const*<
value3B1 B+_temp_56e6606bb22f44d2a311e1472ed61765/part*
dtype0*
_output_shapes
: 
~
save_39/StringJoin
StringJoinsave_39/Constsave_39/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_39/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_39/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_39/ShardedFilenameShardedFilenamesave_39/StringJoinsave_39/ShardedFilename/shardsave_39/num_shards*
_output_shapes
: 
�
save_39/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_39/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_39/SaveV2SaveV2save_39/ShardedFilenamesave_39/SaveV2/tensor_namessave_39/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_39/control_dependencyIdentitysave_39/ShardedFilename^save_39/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_39/ShardedFilename
�
.save_39/MergeV2Checkpoints/checkpoint_prefixesPacksave_39/ShardedFilename^save_39/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_39/MergeV2CheckpointsMergeV2Checkpoints.save_39/MergeV2Checkpoints/checkpoint_prefixessave_39/Const*
delete_old_dirs(
�
save_39/IdentityIdentitysave_39/Const^save_39/MergeV2Checkpoints^save_39/control_dependency*
T0*
_output_shapes
: 
�
save_39/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_39/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_39/RestoreV2	RestoreV2save_39/Constsave_39/RestoreV2/tensor_names"save_39/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_39/AssignAssignbeta1_powersave_39/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_39/Assign_1Assignbeta2_powersave_39/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_39/Assign_2Assignpi/dense/biassave_39/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_39/Assign_3Assignpi/dense/kernelsave_39/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_39/Assign_4Assignpi/dense_1/biassave_39/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_39/Assign_5Assignpi/dense_1/kernelsave_39/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_39/Assign_6Assignv/dense/biassave_39/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_39/Assign_7Assignv/dense/bias/Adamsave_39/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_39/Assign_8Assignv/dense/bias/Adam_1save_39/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_39/Assign_9Assignv/dense/kernelsave_39/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_39/Assign_10Assignv/dense/kernel/Adamsave_39/RestoreV2:10*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_39/Assign_11Assignv/dense/kernel/Adam_1save_39/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_39/Assign_12Assignv/dense_1/biassave_39/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_39/Assign_13Assignv/dense_1/bias/Adamsave_39/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_39/Assign_14Assignv/dense_1/bias/Adam_1save_39/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_39/Assign_15Assignv/dense_1/kernelsave_39/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_39/Assign_16Assignv/dense_1/kernel/Adamsave_39/RestoreV2:16*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_39/Assign_17Assignv/dense_1/kernel/Adam_1save_39/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_39/restore_shardNoOp^save_39/Assign^save_39/Assign_1^save_39/Assign_10^save_39/Assign_11^save_39/Assign_12^save_39/Assign_13^save_39/Assign_14^save_39/Assign_15^save_39/Assign_16^save_39/Assign_17^save_39/Assign_2^save_39/Assign_3^save_39/Assign_4^save_39/Assign_5^save_39/Assign_6^save_39/Assign_7^save_39/Assign_8^save_39/Assign_9
3
save_39/restore_allNoOp^save_39/restore_shard
\
save_40/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_40/filenamePlaceholderWithDefaultsave_40/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_40/ConstPlaceholderWithDefaultsave_40/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_40/StringJoin/inputs_1Const*<
value3B1 B+_temp_c80553346a384edc866cf25b5817f81a/part*
dtype0*
_output_shapes
: 
~
save_40/StringJoin
StringJoinsave_40/Constsave_40/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_40/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
_
save_40/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_40/ShardedFilenameShardedFilenamesave_40/StringJoinsave_40/ShardedFilename/shardsave_40/num_shards*
_output_shapes
: 
�
save_40/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_40/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_40/SaveV2SaveV2save_40/ShardedFilenamesave_40/SaveV2/tensor_namessave_40/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_40/control_dependencyIdentitysave_40/ShardedFilename^save_40/SaveV2*
T0**
_class 
loc:@save_40/ShardedFilename*
_output_shapes
: 
�
.save_40/MergeV2Checkpoints/checkpoint_prefixesPacksave_40/ShardedFilename^save_40/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_40/MergeV2CheckpointsMergeV2Checkpoints.save_40/MergeV2Checkpoints/checkpoint_prefixessave_40/Const*
delete_old_dirs(
�
save_40/IdentityIdentitysave_40/Const^save_40/MergeV2Checkpoints^save_40/control_dependency*
_output_shapes
: *
T0
�
save_40/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_40/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_40/RestoreV2	RestoreV2save_40/Constsave_40/RestoreV2/tensor_names"save_40/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_40/AssignAssignbeta1_powersave_40/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_40/Assign_1Assignbeta2_powersave_40/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_40/Assign_2Assignpi/dense/biassave_40/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_40/Assign_3Assignpi/dense/kernelsave_40/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_40/Assign_4Assignpi/dense_1/biassave_40/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_40/Assign_5Assignpi/dense_1/kernelsave_40/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_40/Assign_6Assignv/dense/biassave_40/RestoreV2:6*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_40/Assign_7Assignv/dense/bias/Adamsave_40/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_40/Assign_8Assignv/dense/bias/Adam_1save_40/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_40/Assign_9Assignv/dense/kernelsave_40/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_40/Assign_10Assignv/dense/kernel/Adamsave_40/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_40/Assign_11Assignv/dense/kernel/Adam_1save_40/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_40/Assign_12Assignv/dense_1/biassave_40/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_40/Assign_13Assignv/dense_1/bias/Adamsave_40/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_40/Assign_14Assignv/dense_1/bias/Adam_1save_40/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_40/Assign_15Assignv/dense_1/kernelsave_40/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_40/Assign_16Assignv/dense_1/kernel/Adamsave_40/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_40/Assign_17Assignv/dense_1/kernel/Adam_1save_40/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_40/restore_shardNoOp^save_40/Assign^save_40/Assign_1^save_40/Assign_10^save_40/Assign_11^save_40/Assign_12^save_40/Assign_13^save_40/Assign_14^save_40/Assign_15^save_40/Assign_16^save_40/Assign_17^save_40/Assign_2^save_40/Assign_3^save_40/Assign_4^save_40/Assign_5^save_40/Assign_6^save_40/Assign_7^save_40/Assign_8^save_40/Assign_9
3
save_40/restore_allNoOp^save_40/restore_shard
\
save_41/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_41/filenamePlaceholderWithDefaultsave_41/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_41/ConstPlaceholderWithDefaultsave_41/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_41/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_76b91fcfadb9468284ab047b80eb9c4f/part*
dtype0
~
save_41/StringJoin
StringJoinsave_41/Constsave_41/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_41/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_41/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
�
save_41/ShardedFilenameShardedFilenamesave_41/StringJoinsave_41/ShardedFilename/shardsave_41/num_shards*
_output_shapes
: 
�
save_41/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_41/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
�
save_41/SaveV2SaveV2save_41/ShardedFilenamesave_41/SaveV2/tensor_namessave_41/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_41/control_dependencyIdentitysave_41/ShardedFilename^save_41/SaveV2**
_class 
loc:@save_41/ShardedFilename*
_output_shapes
: *
T0
�
.save_41/MergeV2Checkpoints/checkpoint_prefixesPacksave_41/ShardedFilename^save_41/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_41/MergeV2CheckpointsMergeV2Checkpoints.save_41/MergeV2Checkpoints/checkpoint_prefixessave_41/Const*
delete_old_dirs(
�
save_41/IdentityIdentitysave_41/Const^save_41/MergeV2Checkpoints^save_41/control_dependency*
T0*
_output_shapes
: 
�
save_41/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_41/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_41/RestoreV2	RestoreV2save_41/Constsave_41/RestoreV2/tensor_names"save_41/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_41/AssignAssignbeta1_powersave_41/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_41/Assign_1Assignbeta2_powersave_41/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_41/Assign_2Assignpi/dense/biassave_41/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_41/Assign_3Assignpi/dense/kernelsave_41/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_41/Assign_4Assignpi/dense_1/biassave_41/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_41/Assign_5Assignpi/dense_1/kernelsave_41/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_41/Assign_6Assignv/dense/biassave_41/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_41/Assign_7Assignv/dense/bias/Adamsave_41/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_41/Assign_8Assignv/dense/bias/Adam_1save_41/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_41/Assign_9Assignv/dense/kernelsave_41/RestoreV2:9*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_41/Assign_10Assignv/dense/kernel/Adamsave_41/RestoreV2:10*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_41/Assign_11Assignv/dense/kernel/Adam_1save_41/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_41/Assign_12Assignv/dense_1/biassave_41/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_41/Assign_13Assignv/dense_1/bias/Adamsave_41/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
�
save_41/Assign_14Assignv/dense_1/bias/Adam_1save_41/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_41/Assign_15Assignv/dense_1/kernelsave_41/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_41/Assign_16Assignv/dense_1/kernel/Adamsave_41/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_41/Assign_17Assignv/dense_1/kernel/Adam_1save_41/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_41/restore_shardNoOp^save_41/Assign^save_41/Assign_1^save_41/Assign_10^save_41/Assign_11^save_41/Assign_12^save_41/Assign_13^save_41/Assign_14^save_41/Assign_15^save_41/Assign_16^save_41/Assign_17^save_41/Assign_2^save_41/Assign_3^save_41/Assign_4^save_41/Assign_5^save_41/Assign_6^save_41/Assign_7^save_41/Assign_8^save_41/Assign_9
3
save_41/restore_allNoOp^save_41/restore_shard
\
save_42/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_42/filenamePlaceholderWithDefaultsave_42/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_42/ConstPlaceholderWithDefaultsave_42/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_42/StringJoin/inputs_1Const*<
value3B1 B+_temp_10c0c7cd0dcb4cd9a147433c3764c399/part*
dtype0*
_output_shapes
: 
~
save_42/StringJoin
StringJoinsave_42/Constsave_42/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_42/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_42/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_42/ShardedFilenameShardedFilenamesave_42/StringJoinsave_42/ShardedFilename/shardsave_42/num_shards*
_output_shapes
: 
�
save_42/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_42/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_42/SaveV2SaveV2save_42/ShardedFilenamesave_42/SaveV2/tensor_namessave_42/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_42/control_dependencyIdentitysave_42/ShardedFilename^save_42/SaveV2*
T0**
_class 
loc:@save_42/ShardedFilename*
_output_shapes
: 
�
.save_42/MergeV2Checkpoints/checkpoint_prefixesPacksave_42/ShardedFilename^save_42/control_dependency*

axis *
N*
_output_shapes
:*
T0
�
save_42/MergeV2CheckpointsMergeV2Checkpoints.save_42/MergeV2Checkpoints/checkpoint_prefixessave_42/Const*
delete_old_dirs(
�
save_42/IdentityIdentitysave_42/Const^save_42/MergeV2Checkpoints^save_42/control_dependency*
_output_shapes
: *
T0
�
save_42/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_42/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_42/RestoreV2	RestoreV2save_42/Constsave_42/RestoreV2/tensor_names"save_42/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_42/AssignAssignbeta1_powersave_42/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_42/Assign_1Assignbeta2_powersave_42/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_42/Assign_2Assignpi/dense/biassave_42/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_42/Assign_3Assignpi/dense/kernelsave_42/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_42/Assign_4Assignpi/dense_1/biassave_42/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_42/Assign_5Assignpi/dense_1/kernelsave_42/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_42/Assign_6Assignv/dense/biassave_42/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_42/Assign_7Assignv/dense/bias/Adamsave_42/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_42/Assign_8Assignv/dense/bias/Adam_1save_42/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_42/Assign_9Assignv/dense/kernelsave_42/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_42/Assign_10Assignv/dense/kernel/Adamsave_42/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_42/Assign_11Assignv/dense/kernel/Adam_1save_42/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_42/Assign_12Assignv/dense_1/biassave_42/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_42/Assign_13Assignv/dense_1/bias/Adamsave_42/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_42/Assign_14Assignv/dense_1/bias/Adam_1save_42/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_42/Assign_15Assignv/dense_1/kernelsave_42/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_42/Assign_16Assignv/dense_1/kernel/Adamsave_42/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_42/Assign_17Assignv/dense_1/kernel/Adam_1save_42/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_42/restore_shardNoOp^save_42/Assign^save_42/Assign_1^save_42/Assign_10^save_42/Assign_11^save_42/Assign_12^save_42/Assign_13^save_42/Assign_14^save_42/Assign_15^save_42/Assign_16^save_42/Assign_17^save_42/Assign_2^save_42/Assign_3^save_42/Assign_4^save_42/Assign_5^save_42/Assign_6^save_42/Assign_7^save_42/Assign_8^save_42/Assign_9
3
save_42/restore_allNoOp^save_42/restore_shard
\
save_43/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_43/filenamePlaceholderWithDefaultsave_43/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_43/ConstPlaceholderWithDefaultsave_43/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_43/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_ad5a7f4120314794b53b307aab003681/part
~
save_43/StringJoin
StringJoinsave_43/Constsave_43/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_43/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_43/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_43/ShardedFilenameShardedFilenamesave_43/StringJoinsave_43/ShardedFilename/shardsave_43/num_shards*
_output_shapes
: 
�
save_43/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1
�
save_43/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_43/SaveV2SaveV2save_43/ShardedFilenamesave_43/SaveV2/tensor_namessave_43/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_43/control_dependencyIdentitysave_43/ShardedFilename^save_43/SaveV2*
T0**
_class 
loc:@save_43/ShardedFilename*
_output_shapes
: 
�
.save_43/MergeV2Checkpoints/checkpoint_prefixesPacksave_43/ShardedFilename^save_43/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_43/MergeV2CheckpointsMergeV2Checkpoints.save_43/MergeV2Checkpoints/checkpoint_prefixessave_43/Const*
delete_old_dirs(
�
save_43/IdentityIdentitysave_43/Const^save_43/MergeV2Checkpoints^save_43/control_dependency*
T0*
_output_shapes
: 
�
save_43/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_43/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_43/RestoreV2	RestoreV2save_43/Constsave_43/RestoreV2/tensor_names"save_43/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_43/AssignAssignbeta1_powersave_43/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_43/Assign_1Assignbeta2_powersave_43/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_43/Assign_2Assignpi/dense/biassave_43/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_43/Assign_3Assignpi/dense/kernelsave_43/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_43/Assign_4Assignpi/dense_1/biassave_43/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_43/Assign_5Assignpi/dense_1/kernelsave_43/RestoreV2:5*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
�
save_43/Assign_6Assignv/dense/biassave_43/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_43/Assign_7Assignv/dense/bias/Adamsave_43/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_43/Assign_8Assignv/dense/bias/Adam_1save_43/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_43/Assign_9Assignv/dense/kernelsave_43/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_43/Assign_10Assignv/dense/kernel/Adamsave_43/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_43/Assign_11Assignv/dense/kernel/Adam_1save_43/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_43/Assign_12Assignv/dense_1/biassave_43/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_43/Assign_13Assignv/dense_1/bias/Adamsave_43/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_43/Assign_14Assignv/dense_1/bias/Adam_1save_43/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_43/Assign_15Assignv/dense_1/kernelsave_43/RestoreV2:15*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_43/Assign_16Assignv/dense_1/kernel/Adamsave_43/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_43/Assign_17Assignv/dense_1/kernel/Adam_1save_43/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_43/restore_shardNoOp^save_43/Assign^save_43/Assign_1^save_43/Assign_10^save_43/Assign_11^save_43/Assign_12^save_43/Assign_13^save_43/Assign_14^save_43/Assign_15^save_43/Assign_16^save_43/Assign_17^save_43/Assign_2^save_43/Assign_3^save_43/Assign_4^save_43/Assign_5^save_43/Assign_6^save_43/Assign_7^save_43/Assign_8^save_43/Assign_9
3
save_43/restore_allNoOp^save_43/restore_shard
\
save_44/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_44/filenamePlaceholderWithDefaultsave_44/filename/input*
shape: *
dtype0*
_output_shapes
: 
k
save_44/ConstPlaceholderWithDefaultsave_44/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_44/StringJoin/inputs_1Const*<
value3B1 B+_temp_49d9ef639205402b86a219b61f430f0a/part*
dtype0*
_output_shapes
: 
~
save_44/StringJoin
StringJoinsave_44/Constsave_44/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_44/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_44/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_44/ShardedFilenameShardedFilenamesave_44/StringJoinsave_44/ShardedFilename/shardsave_44/num_shards*
_output_shapes
: 
�
save_44/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_44/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_44/SaveV2SaveV2save_44/ShardedFilenamesave_44/SaveV2/tensor_namessave_44/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_44/control_dependencyIdentitysave_44/ShardedFilename^save_44/SaveV2**
_class 
loc:@save_44/ShardedFilename*
_output_shapes
: *
T0
�
.save_44/MergeV2Checkpoints/checkpoint_prefixesPacksave_44/ShardedFilename^save_44/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_44/MergeV2CheckpointsMergeV2Checkpoints.save_44/MergeV2Checkpoints/checkpoint_prefixessave_44/Const*
delete_old_dirs(
�
save_44/IdentityIdentitysave_44/Const^save_44/MergeV2Checkpoints^save_44/control_dependency*
_output_shapes
: *
T0
�
save_44/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_44/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_44/RestoreV2	RestoreV2save_44/Constsave_44/RestoreV2/tensor_names"save_44/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
�
save_44/AssignAssignbeta1_powersave_44/RestoreV2*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_44/Assign_1Assignbeta2_powersave_44/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_44/Assign_2Assignpi/dense/biassave_44/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_44/Assign_3Assignpi/dense/kernelsave_44/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_4Assignpi/dense_1/biassave_44/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_44/Assign_5Assignpi/dense_1/kernelsave_44/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_6Assignv/dense/biassave_44/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_44/Assign_7Assignv/dense/bias/Adamsave_44/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_44/Assign_8Assignv/dense/bias/Adam_1save_44/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_44/Assign_9Assignv/dense/kernelsave_44/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
�
save_44/Assign_10Assignv/dense/kernel/Adamsave_44/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_11Assignv/dense/kernel/Adam_1save_44/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_12Assignv/dense_1/biassave_44/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_44/Assign_13Assignv/dense_1/bias/Adamsave_44/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_44/Assign_14Assignv/dense_1/bias/Adam_1save_44/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_44/Assign_15Assignv/dense_1/kernelsave_44/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_16Assignv/dense_1/kernel/Adamsave_44/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_44/Assign_17Assignv/dense_1/kernel/Adam_1save_44/RestoreV2:17*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_44/restore_shardNoOp^save_44/Assign^save_44/Assign_1^save_44/Assign_10^save_44/Assign_11^save_44/Assign_12^save_44/Assign_13^save_44/Assign_14^save_44/Assign_15^save_44/Assign_16^save_44/Assign_17^save_44/Assign_2^save_44/Assign_3^save_44/Assign_4^save_44/Assign_5^save_44/Assign_6^save_44/Assign_7^save_44/Assign_8^save_44/Assign_9
3
save_44/restore_allNoOp^save_44/restore_shard
\
save_45/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_45/filenamePlaceholderWithDefaultsave_45/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_45/ConstPlaceholderWithDefaultsave_45/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_45/StringJoin/inputs_1Const*<
value3B1 B+_temp_45661a87a0ff41c191c5910817e72c9b/part*
dtype0*
_output_shapes
: 
~
save_45/StringJoin
StringJoinsave_45/Constsave_45/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_45/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_45/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_45/ShardedFilenameShardedFilenamesave_45/StringJoinsave_45/ShardedFilename/shardsave_45/num_shards*
_output_shapes
: 
�
save_45/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_45/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_45/SaveV2SaveV2save_45/ShardedFilenamesave_45/SaveV2/tensor_namessave_45/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_45/control_dependencyIdentitysave_45/ShardedFilename^save_45/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_45/ShardedFilename
�
.save_45/MergeV2Checkpoints/checkpoint_prefixesPacksave_45/ShardedFilename^save_45/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_45/MergeV2CheckpointsMergeV2Checkpoints.save_45/MergeV2Checkpoints/checkpoint_prefixessave_45/Const*
delete_old_dirs(
�
save_45/IdentityIdentitysave_45/Const^save_45/MergeV2Checkpoints^save_45/control_dependency*
_output_shapes
: *
T0
�
save_45/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_45/RestoreV2/shape_and_slicesConst*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
�
save_45/RestoreV2	RestoreV2save_45/Constsave_45/RestoreV2/tensor_names"save_45/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_45/AssignAssignbeta1_powersave_45/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_45/Assign_1Assignbeta2_powersave_45/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_45/Assign_2Assignpi/dense/biassave_45/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_45/Assign_3Assignpi/dense/kernelsave_45/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_45/Assign_4Assignpi/dense_1/biassave_45/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
�
save_45/Assign_5Assignpi/dense_1/kernelsave_45/RestoreV2:5*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel
�
save_45/Assign_6Assignv/dense/biassave_45/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_45/Assign_7Assignv/dense/bias/Adamsave_45/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_45/Assign_8Assignv/dense/bias/Adam_1save_45/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_45/Assign_9Assignv/dense/kernelsave_45/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_45/Assign_10Assignv/dense/kernel/Adamsave_45/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_45/Assign_11Assignv/dense/kernel/Adam_1save_45/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_45/Assign_12Assignv/dense_1/biassave_45/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_45/Assign_13Assignv/dense_1/bias/Adamsave_45/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_45/Assign_14Assignv/dense_1/bias/Adam_1save_45/RestoreV2:14*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_45/Assign_15Assignv/dense_1/kernelsave_45/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_45/Assign_16Assignv/dense_1/kernel/Adamsave_45/RestoreV2:16*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_45/Assign_17Assignv/dense_1/kernel/Adam_1save_45/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_45/restore_shardNoOp^save_45/Assign^save_45/Assign_1^save_45/Assign_10^save_45/Assign_11^save_45/Assign_12^save_45/Assign_13^save_45/Assign_14^save_45/Assign_15^save_45/Assign_16^save_45/Assign_17^save_45/Assign_2^save_45/Assign_3^save_45/Assign_4^save_45/Assign_5^save_45/Assign_6^save_45/Assign_7^save_45/Assign_8^save_45/Assign_9
3
save_45/restore_allNoOp^save_45/restore_shard
\
save_46/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_46/filenamePlaceholderWithDefaultsave_46/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_46/ConstPlaceholderWithDefaultsave_46/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_46/StringJoin/inputs_1Const*<
value3B1 B+_temp_c61f7c27ad60482bb14de613fe3612d0/part*
dtype0*
_output_shapes
: 
~
save_46/StringJoin
StringJoinsave_46/Constsave_46/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_46/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_46/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_46/ShardedFilenameShardedFilenamesave_46/StringJoinsave_46/ShardedFilename/shardsave_46/num_shards*
_output_shapes
: 
�
save_46/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_46/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_46/SaveV2SaveV2save_46/ShardedFilenamesave_46/SaveV2/tensor_namessave_46/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_46/control_dependencyIdentitysave_46/ShardedFilename^save_46/SaveV2*
T0**
_class 
loc:@save_46/ShardedFilename*
_output_shapes
: 
�
.save_46/MergeV2Checkpoints/checkpoint_prefixesPacksave_46/ShardedFilename^save_46/control_dependency*
_output_shapes
:*
T0*

axis *
N
�
save_46/MergeV2CheckpointsMergeV2Checkpoints.save_46/MergeV2Checkpoints/checkpoint_prefixessave_46/Const*
delete_old_dirs(
�
save_46/IdentityIdentitysave_46/Const^save_46/MergeV2Checkpoints^save_46/control_dependency*
_output_shapes
: *
T0
�
save_46/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_46/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_46/RestoreV2	RestoreV2save_46/Constsave_46/RestoreV2/tensor_names"save_46/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_46/AssignAssignbeta1_powersave_46/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_46/Assign_1Assignbeta2_powersave_46/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_46/Assign_2Assignpi/dense/biassave_46/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
save_46/Assign_3Assignpi/dense/kernelsave_46/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_46/Assign_4Assignpi/dense_1/biassave_46/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_46/Assign_5Assignpi/dense_1/kernelsave_46/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_46/Assign_6Assignv/dense/biassave_46/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_46/Assign_7Assignv/dense/bias/Adamsave_46/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_46/Assign_8Assignv/dense/bias/Adam_1save_46/RestoreV2:8*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_46/Assign_9Assignv/dense/kernelsave_46/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_46/Assign_10Assignv/dense/kernel/Adamsave_46/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_46/Assign_11Assignv/dense/kernel/Adam_1save_46/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_46/Assign_12Assignv/dense_1/biassave_46/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_46/Assign_13Assignv/dense_1/bias/Adamsave_46/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_46/Assign_14Assignv/dense_1/bias/Adam_1save_46/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_46/Assign_15Assignv/dense_1/kernelsave_46/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_46/Assign_16Assignv/dense_1/kernel/Adamsave_46/RestoreV2:16*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel
�
save_46/Assign_17Assignv/dense_1/kernel/Adam_1save_46/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_46/restore_shardNoOp^save_46/Assign^save_46/Assign_1^save_46/Assign_10^save_46/Assign_11^save_46/Assign_12^save_46/Assign_13^save_46/Assign_14^save_46/Assign_15^save_46/Assign_16^save_46/Assign_17^save_46/Assign_2^save_46/Assign_3^save_46/Assign_4^save_46/Assign_5^save_46/Assign_6^save_46/Assign_7^save_46/Assign_8^save_46/Assign_9
3
save_46/restore_allNoOp^save_46/restore_shard
\
save_47/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_47/filenamePlaceholderWithDefaultsave_47/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_47/ConstPlaceholderWithDefaultsave_47/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_47/StringJoin/inputs_1Const*<
value3B1 B+_temp_d190f82696514c04ad5ea85accb3d54c/part*
dtype0*
_output_shapes
: 
~
save_47/StringJoin
StringJoinsave_47/Constsave_47/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_47/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_47/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
�
save_47/ShardedFilenameShardedFilenamesave_47/StringJoinsave_47/ShardedFilename/shardsave_47/num_shards*
_output_shapes
: 
�
save_47/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_47/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_47/SaveV2SaveV2save_47/ShardedFilenamesave_47/SaveV2/tensor_namessave_47/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_47/control_dependencyIdentitysave_47/ShardedFilename^save_47/SaveV2*
T0**
_class 
loc:@save_47/ShardedFilename*
_output_shapes
: 
�
.save_47/MergeV2Checkpoints/checkpoint_prefixesPacksave_47/ShardedFilename^save_47/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_47/MergeV2CheckpointsMergeV2Checkpoints.save_47/MergeV2Checkpoints/checkpoint_prefixessave_47/Const*
delete_old_dirs(
�
save_47/IdentityIdentitysave_47/Const^save_47/MergeV2Checkpoints^save_47/control_dependency*
T0*
_output_shapes
: 
�
save_47/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_47/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_47/RestoreV2	RestoreV2save_47/Constsave_47/RestoreV2/tensor_names"save_47/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_47/AssignAssignbeta1_powersave_47/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_47/Assign_1Assignbeta2_powersave_47/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_47/Assign_2Assignpi/dense/biassave_47/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_47/Assign_3Assignpi/dense/kernelsave_47/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_4Assignpi/dense_1/biassave_47/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_47/Assign_5Assignpi/dense_1/kernelsave_47/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_6Assignv/dense/biassave_47/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_47/Assign_7Assignv/dense/bias/Adamsave_47/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_47/Assign_8Assignv/dense/bias/Adam_1save_47/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_47/Assign_9Assignv/dense/kernelsave_47/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_47/Assign_10Assignv/dense/kernel/Adamsave_47/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_11Assignv/dense/kernel/Adam_1save_47/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_12Assignv/dense_1/biassave_47/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_47/Assign_13Assignv/dense_1/bias/Adamsave_47/RestoreV2:13*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_47/Assign_14Assignv/dense_1/bias/Adam_1save_47/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_47/Assign_15Assignv/dense_1/kernelsave_47/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_16Assignv/dense_1/kernel/Adamsave_47/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/Assign_17Assignv/dense_1/kernel/Adam_1save_47/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_47/restore_shardNoOp^save_47/Assign^save_47/Assign_1^save_47/Assign_10^save_47/Assign_11^save_47/Assign_12^save_47/Assign_13^save_47/Assign_14^save_47/Assign_15^save_47/Assign_16^save_47/Assign_17^save_47/Assign_2^save_47/Assign_3^save_47/Assign_4^save_47/Assign_5^save_47/Assign_6^save_47/Assign_7^save_47/Assign_8^save_47/Assign_9
3
save_47/restore_allNoOp^save_47/restore_shard
\
save_48/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_48/filenamePlaceholderWithDefaultsave_48/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_48/ConstPlaceholderWithDefaultsave_48/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_48/StringJoin/inputs_1Const*<
value3B1 B+_temp_ea8ef054959149848153d32f04be6480/part*
dtype0*
_output_shapes
: 
~
save_48/StringJoin
StringJoinsave_48/Constsave_48/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_48/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
_
save_48/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_48/ShardedFilenameShardedFilenamesave_48/StringJoinsave_48/ShardedFilename/shardsave_48/num_shards*
_output_shapes
: 
�
save_48/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_48/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_48/SaveV2SaveV2save_48/ShardedFilenamesave_48/SaveV2/tensor_namessave_48/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_48/control_dependencyIdentitysave_48/ShardedFilename^save_48/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_48/ShardedFilename
�
.save_48/MergeV2Checkpoints/checkpoint_prefixesPacksave_48/ShardedFilename^save_48/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_48/MergeV2CheckpointsMergeV2Checkpoints.save_48/MergeV2Checkpoints/checkpoint_prefixessave_48/Const*
delete_old_dirs(
�
save_48/IdentityIdentitysave_48/Const^save_48/MergeV2Checkpoints^save_48/control_dependency*
T0*
_output_shapes
: 
�
save_48/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_48/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_48/RestoreV2	RestoreV2save_48/Constsave_48/RestoreV2/tensor_names"save_48/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_48/AssignAssignbeta1_powersave_48/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_48/Assign_1Assignbeta2_powersave_48/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_48/Assign_2Assignpi/dense/biassave_48/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_48/Assign_3Assignpi/dense/kernelsave_48/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_48/Assign_4Assignpi/dense_1/biassave_48/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_48/Assign_5Assignpi/dense_1/kernelsave_48/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_48/Assign_6Assignv/dense/biassave_48/RestoreV2:6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias
�
save_48/Assign_7Assignv/dense/bias/Adamsave_48/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_48/Assign_8Assignv/dense/bias/Adam_1save_48/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_48/Assign_9Assignv/dense/kernelsave_48/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_48/Assign_10Assignv/dense/kernel/Adamsave_48/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_48/Assign_11Assignv/dense/kernel/Adam_1save_48/RestoreV2:11*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_48/Assign_12Assignv/dense_1/biassave_48/RestoreV2:12*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_48/Assign_13Assignv/dense_1/bias/Adamsave_48/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_48/Assign_14Assignv/dense_1/bias/Adam_1save_48/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_48/Assign_15Assignv/dense_1/kernelsave_48/RestoreV2:15*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_48/Assign_16Assignv/dense_1/kernel/Adamsave_48/RestoreV2:16*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_48/Assign_17Assignv/dense_1/kernel/Adam_1save_48/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_48/restore_shardNoOp^save_48/Assign^save_48/Assign_1^save_48/Assign_10^save_48/Assign_11^save_48/Assign_12^save_48/Assign_13^save_48/Assign_14^save_48/Assign_15^save_48/Assign_16^save_48/Assign_17^save_48/Assign_2^save_48/Assign_3^save_48/Assign_4^save_48/Assign_5^save_48/Assign_6^save_48/Assign_7^save_48/Assign_8^save_48/Assign_9
3
save_48/restore_allNoOp^save_48/restore_shard
\
save_49/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
t
save_49/filenamePlaceholderWithDefaultsave_49/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_49/ConstPlaceholderWithDefaultsave_49/filename*
shape: *
dtype0*
_output_shapes
: 
�
save_49/StringJoin/inputs_1Const*<
value3B1 B+_temp_7b92faf7ee5a4a09859bbce48e1f473a/part*
dtype0*
_output_shapes
: 
~
save_49/StringJoin
StringJoinsave_49/Constsave_49/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
T
save_49/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_49/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_49/ShardedFilenameShardedFilenamesave_49/StringJoinsave_49/ShardedFilename/shardsave_49/num_shards*
_output_shapes
: 
�
save_49/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
save_49/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_49/SaveV2SaveV2save_49/ShardedFilenamesave_49/SaveV2/tensor_namessave_49/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_49/control_dependencyIdentitysave_49/ShardedFilename^save_49/SaveV2*
_output_shapes
: *
T0**
_class 
loc:@save_49/ShardedFilename
�
.save_49/MergeV2Checkpoints/checkpoint_prefixesPacksave_49/ShardedFilename^save_49/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_49/MergeV2CheckpointsMergeV2Checkpoints.save_49/MergeV2Checkpoints/checkpoint_prefixessave_49/Const*
delete_old_dirs(
�
save_49/IdentityIdentitysave_49/Const^save_49/MergeV2Checkpoints^save_49/control_dependency*
T0*
_output_shapes
: 
�
save_49/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
"save_49/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_49/RestoreV2	RestoreV2save_49/Constsave_49/RestoreV2/tensor_names"save_49/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_49/AssignAssignbeta1_powersave_49/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_49/Assign_1Assignbeta2_powersave_49/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_49/Assign_2Assignpi/dense/biassave_49/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias
�
save_49/Assign_3Assignpi/dense/kernelsave_49/RestoreV2:3*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
save_49/Assign_4Assignpi/dense_1/biassave_49/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_49/Assign_5Assignpi/dense_1/kernelsave_49/RestoreV2:5*
_output_shapes

: *
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
�
save_49/Assign_6Assignv/dense/biassave_49/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_49/Assign_7Assignv/dense/bias/Adamsave_49/RestoreV2:7*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_49/Assign_8Assignv/dense/bias/Adam_1save_49/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_49/Assign_9Assignv/dense/kernelsave_49/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_49/Assign_10Assignv/dense/kernel/Adamsave_49/RestoreV2:10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel
�
save_49/Assign_11Assignv/dense/kernel/Adam_1save_49/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_49/Assign_12Assignv/dense_1/biassave_49/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_49/Assign_13Assignv/dense_1/bias/Adamsave_49/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_49/Assign_14Assignv/dense_1/bias/Adam_1save_49/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
�
save_49/Assign_15Assignv/dense_1/kernelsave_49/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_49/Assign_16Assignv/dense_1/kernel/Adamsave_49/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_49/Assign_17Assignv/dense_1/kernel/Adam_1save_49/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_49/restore_shardNoOp^save_49/Assign^save_49/Assign_1^save_49/Assign_10^save_49/Assign_11^save_49/Assign_12^save_49/Assign_13^save_49/Assign_14^save_49/Assign_15^save_49/Assign_16^save_49/Assign_17^save_49/Assign_2^save_49/Assign_3^save_49/Assign_4^save_49/Assign_5^save_49/Assign_6^save_49/Assign_7^save_49/Assign_8^save_49/Assign_9
3
save_49/restore_allNoOp^save_49/restore_shard
\
save_50/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
t
save_50/filenamePlaceholderWithDefaultsave_50/filename/input*
dtype0*
_output_shapes
: *
shape: 
k
save_50/ConstPlaceholderWithDefaultsave_50/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_50/StringJoin/inputs_1Const*<
value3B1 B+_temp_1bf4c5dc913c48f4ab5b896a87ad40af/part*
dtype0*
_output_shapes
: 
~
save_50/StringJoin
StringJoinsave_50/Constsave_50/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
T
save_50/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
_
save_50/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_50/ShardedFilenameShardedFilenamesave_50/StringJoinsave_50/ShardedFilename/shardsave_50/num_shards*
_output_shapes
: 
�
save_50/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save_50/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_50/SaveV2SaveV2save_50/ShardedFilenamesave_50/SaveV2/tensor_namessave_50/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2
�
save_50/control_dependencyIdentitysave_50/ShardedFilename^save_50/SaveV2*
T0**
_class 
loc:@save_50/ShardedFilename*
_output_shapes
: 
�
.save_50/MergeV2Checkpoints/checkpoint_prefixesPacksave_50/ShardedFilename^save_50/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_50/MergeV2CheckpointsMergeV2Checkpoints.save_50/MergeV2Checkpoints/checkpoint_prefixessave_50/Const*
delete_old_dirs(
�
save_50/IdentityIdentitysave_50/Const^save_50/MergeV2Checkpoints^save_50/control_dependency*
_output_shapes
: *
T0
�
save_50/RestoreV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0
�
"save_50/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_50/RestoreV2	RestoreV2save_50/Constsave_50/RestoreV2/tensor_names"save_50/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
�
save_50/AssignAssignbeta1_powersave_50/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_50/Assign_1Assignbeta2_powersave_50/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_50/Assign_2Assignpi/dense/biassave_50/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_50/Assign_3Assignpi/dense/kernelsave_50/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_50/Assign_4Assignpi/dense_1/biassave_50/RestoreV2:4*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_50/Assign_5Assignpi/dense_1/kernelsave_50/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_50/Assign_6Assignv/dense/biassave_50/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_50/Assign_7Assignv/dense/bias/Adamsave_50/RestoreV2:7*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
�
save_50/Assign_8Assignv/dense/bias/Adam_1save_50/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
�
save_50/Assign_9Assignv/dense/kernelsave_50/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
�
save_50/Assign_10Assignv/dense/kernel/Adamsave_50/RestoreV2:10*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save_50/Assign_11Assignv/dense/kernel/Adam_1save_50/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
save_50/Assign_12Assignv/dense_1/biassave_50/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_50/Assign_13Assignv/dense_1/bias/Adamsave_50/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
�
save_50/Assign_14Assignv/dense_1/bias/Adam_1save_50/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_50/Assign_15Assignv/dense_1/kernelsave_50/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_50/Assign_16Assignv/dense_1/kernel/Adamsave_50/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
�
save_50/Assign_17Assignv/dense_1/kernel/Adam_1save_50/RestoreV2:17*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
�
save_50/restore_shardNoOp^save_50/Assign^save_50/Assign_1^save_50/Assign_10^save_50/Assign_11^save_50/Assign_12^save_50/Assign_13^save_50/Assign_14^save_50/Assign_15^save_50/Assign_16^save_50/Assign_17^save_50/Assign_2^save_50/Assign_3^save_50/Assign_4^save_50/Assign_5^save_50/Assign_6^save_50/Assign_7^save_50/Assign_8^save_50/Assign_9
3
save_50/restore_allNoOp^save_50/restore_shard "&E
save_50/Const:0save_50/Identity:0save_50/restore_all (5 @F8"�
trainable_variables��
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08"
train_op

Adam"�
	variables��
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0
�
v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0
�
v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0
�
v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0
�
v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0*�
serving_default�
)
x$
Placeholder:0���������
'
a"
Placeholder_1:0���������%
pi
pi/Squeeze:0	���������#
logp
pi/Sum:0���������#
v
v/Squeeze:0���������tensorflow/serving/predict