??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-0-gc256c071bb28??
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_3/lstm_cell_3/kernel
?
-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*4
shared_name%#lstm_3/lstm_cell_3/recurrent_kernel
?
7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_3/recurrent_kernel*
_output_shapes
:	@?*
dtype0
?
lstm_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_3/lstm_cell_3/bias
?
+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_3/lstm_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/m
?
4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
?
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_3/lstm_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_3/lstm_cell_3/bias/m
?
2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_3/lstm_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/v
?
4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
?
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_3/lstm_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_3/lstm_cell_3/bias/v
?
2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE
#
0
1
2
3
4
#
0
1
2
3
4
 
?
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
 
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
 

0
1
2

0
1
2
 
?

'states
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_3/lstm_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_3/lstm_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_3/lstm_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

20
 
 
 

0
1
2

0
1
2
 
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 

	0
 
 
 
 
 
 
 
 
4
	8total
	9count
:	variables
;	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_3_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_3_inputlstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biasdense_3/kerneldense_3/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_766150
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_767348
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biastotalcountAdam/dense_3/kernel/mAdam/dense_3/bias/m Adam/lstm_3/lstm_cell_3/kernel/m*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mAdam/lstm_3/lstm_cell_3/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v Adam/lstm_3/lstm_cell_3/kernel/v*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vAdam/lstm_3/lstm_cell_3/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_767424??
??
?

lstm_3_while_body_766404*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	?N
;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?I
:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	?L
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	@?G
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
lstm_3/while/lstm_cell_3/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
!lstm_3/while/lstm_cell_3/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/MatMul:product:0+lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd lstm_3/while/lstm_cell_3/add:z:07lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:0)lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split?
 lstm_3/while/lstm_cell_3/SigmoidSigmoid'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@?
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mulMul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/ReluRelu'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mul_1Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0+lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/add_1AddV2 lstm_3/while/lstm_cell_3/mul:z:0"lstm_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@?
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@}
lstm_3/while/lstm_cell_3/Relu_1Relu"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mul_2Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0-lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???T
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations^lstm_3/while/NoOp*
T0*
_output_shapes
: n
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_2:z:0^lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_1:z:0^lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
lstm_3/while/NoOpNoOp0^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2b
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?7
?
while_body_765941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?"
?
while_body_765379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_3_765403_0:	?-
while_lstm_cell_3_765405_0:	@?)
while_lstm_cell_3_765407_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_3_765403:	?+
while_lstm_cell_3_765405:	@?'
while_lstm_cell_3_765407:	???)while/lstm_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_765403_0while_lstm_cell_3_765405_0while_lstm_cell_3_765407_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765365?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@?
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????@x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_3_765403while_lstm_cell_3_765403_0"6
while_lstm_cell_3_765405while_lstm_cell_3_765405_0"6
while_lstm_cell_3_765407while_lstm_cell_3_765407_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_767161

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?7
?
while_body_765729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765511

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?7
?
while_body_766605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
lstm_3_while_cond_766403*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_766403___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_766403___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_766403___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_766403___redundant_placeholder3
lstm_3_while_identity
~
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: Y
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?Z
?
"__inference__traced_restore_767424
file_prefix1
assignvariableop_dense_3_kernel:@-
assignvariableop_1_dense_3_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: ?
,assignvariableop_7_lstm_3_lstm_cell_3_kernel:	?I
6assignvariableop_8_lstm_3_lstm_cell_3_recurrent_kernel:	@?9
*assignvariableop_9_lstm_3_lstm_cell_3_bias:	?#
assignvariableop_10_total: #
assignvariableop_11_count: ;
)assignvariableop_12_adam_dense_3_kernel_m:@5
'assignvariableop_13_adam_dense_3_bias_m:G
4assignvariableop_14_adam_lstm_3_lstm_cell_3_kernel_m:	?Q
>assignvariableop_15_adam_lstm_3_lstm_cell_3_recurrent_kernel_m:	@?A
2assignvariableop_16_adam_lstm_3_lstm_cell_3_bias_m:	?;
)assignvariableop_17_adam_dense_3_kernel_v:@5
'assignvariableop_18_adam_dense_3_bias_v:G
4assignvariableop_19_adam_lstm_3_lstm_cell_3_kernel_v:	?Q
>assignvariableop_20_adam_lstm_3_lstm_cell_3_recurrent_kernel_v:	@?A
2assignvariableop_21_adam_lstm_3_lstm_cell_3_bias_v:	?
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_3_lstm_cell_3_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_3_lstm_cell_3_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_3_lstm_cell_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_dense_3_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_3_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_lstm_3_lstm_cell_3_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp>assignvariableop_15_adam_lstm_3_lstm_cell_3_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_lstm_3_lstm_cell_3_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_3_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_3_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_lstm_3_lstm_cell_3_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_lstm_3_lstm_cell_3_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_lstm_3_lstm_cell_3_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
,__inference_lstm_cell_3_layer_call_fn_767178

inputs
states_0
states_1
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765365o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
$__inference_signature_wrapper_766150
lstm_3_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:@
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_765290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?
?
-__inference_sequential_3_layer_call_fn_766165

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:@
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_765838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_3_layer_call_fn_766527

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_765813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_766906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766906___redundant_placeholder04
0while_while_cond_766906___redundant_placeholder14
0while_while_cond_766906___redundant_placeholder24
0while_while_cond_766906___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_dense_3_layer_call_fn_767151

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_765831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_765940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765940___redundant_placeholder04
0while_while_cond_765940___redundant_placeholder14
0while_while_cond_765940___redundant_placeholder24
0while_while_cond_765940___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766689
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_766605*
condR
while_cond_766604*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766991

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_766907*
condR
while_cond_766906*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765365

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?
?
'__inference_lstm_3_layer_call_fn_766538

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_766025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?s
?
!__inference__wrapped_model_765290
lstm_3_inputQ
>sequential_3_lstm_3_lstm_cell_3_matmul_readvariableop_resource:	?S
@sequential_3_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	@?N
?sequential_3_lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?E
3sequential_3_dense_3_matmul_readvariableop_resource:@B
4sequential_3_dense_3_biasadd_readvariableop_resource:
identity??+sequential_3/dense_3/BiasAdd/ReadVariableOp?*sequential_3/dense_3/MatMul/ReadVariableOp?6sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?5sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOp?7sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?sequential_3/lstm_3/whileU
sequential_3/lstm_3/ShapeShapelstm_3_input*
T0*
_output_shapes
:q
'sequential_3/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_3/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_3/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!sequential_3/lstm_3/strided_sliceStridedSlice"sequential_3/lstm_3/Shape:output:00sequential_3/lstm_3/strided_slice/stack:output:02sequential_3/lstm_3/strided_slice/stack_1:output:02sequential_3/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential_3/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@?
sequential_3/lstm_3/zeros/mulMul*sequential_3/lstm_3/strided_slice:output:0(sequential_3/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: c
 sequential_3/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
sequential_3/lstm_3/zeros/LessLess!sequential_3/lstm_3/zeros/mul:z:0)sequential_3/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: d
"sequential_3/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
 sequential_3/lstm_3/zeros/packedPack*sequential_3/lstm_3/strided_slice:output:0+sequential_3/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_3/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_3/lstm_3/zerosFill)sequential_3/lstm_3/zeros/packed:output:0(sequential_3/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@c
!sequential_3/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@?
sequential_3/lstm_3/zeros_1/mulMul*sequential_3/lstm_3/strided_slice:output:0*sequential_3/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: e
"sequential_3/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
 sequential_3/lstm_3/zeros_1/LessLess#sequential_3/lstm_3/zeros_1/mul:z:0+sequential_3/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: f
$sequential_3/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
"sequential_3/lstm_3/zeros_1/packedPack*sequential_3/lstm_3/strided_slice:output:0-sequential_3/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_3/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_3/lstm_3/zeros_1Fill+sequential_3/lstm_3/zeros_1/packed:output:0*sequential_3/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@w
"sequential_3/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_3/lstm_3/transpose	Transposelstm_3_input+sequential_3/lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????l
sequential_3/lstm_3/Shape_1Shape!sequential_3/lstm_3/transpose:y:0*
T0*
_output_shapes
:s
)sequential_3/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_3/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_3/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_3/lstm_3/strided_slice_1StridedSlice$sequential_3/lstm_3/Shape_1:output:02sequential_3/lstm_3/strided_slice_1/stack:output:04sequential_3/lstm_3/strided_slice_1/stack_1:output:04sequential_3/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_3/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!sequential_3/lstm_3/TensorArrayV2TensorListReserve8sequential_3/lstm_3/TensorArrayV2/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_3/transpose:y:0Rsequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???s
)sequential_3/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_3/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_3/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_3/lstm_3/strided_slice_2StridedSlice!sequential_3/lstm_3/transpose:y:02sequential_3/lstm_3/strided_slice_2/stack:output:04sequential_3/lstm_3/strided_slice_2/stack_1:output:04sequential_3/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
5sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp>sequential_3_lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
&sequential_3/lstm_3/lstm_cell_3/MatMulMatMul,sequential_3/lstm_3/strided_slice_2:output:0=sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp@sequential_3_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
(sequential_3/lstm_3/lstm_cell_3/MatMul_1MatMul"sequential_3/lstm_3/zeros:output:0?sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#sequential_3/lstm_3/lstm_cell_3/addAddV20sequential_3/lstm_3/lstm_cell_3/MatMul:product:02sequential_3/lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
6sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_3_lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'sequential_3/lstm_3/lstm_cell_3/BiasAddBiasAdd'sequential_3/lstm_3/lstm_cell_3/add:z:0>sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
/sequential_3/lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_3/lstm_3/lstm_cell_3/splitSplit8sequential_3/lstm_3/lstm_cell_3/split/split_dim:output:00sequential_3/lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split?
'sequential_3/lstm_3/lstm_cell_3/SigmoidSigmoid.sequential_3/lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@?
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_1Sigmoid.sequential_3/lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
#sequential_3/lstm_3/lstm_cell_3/mulMul-sequential_3/lstm_3/lstm_cell_3/Sigmoid_1:y:0$sequential_3/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:?????????@?
$sequential_3/lstm_3/lstm_cell_3/ReluRelu.sequential_3/lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
%sequential_3/lstm_3/lstm_cell_3/mul_1Mul+sequential_3/lstm_3/lstm_cell_3/Sigmoid:y:02sequential_3/lstm_3/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
%sequential_3/lstm_3/lstm_cell_3/add_1AddV2'sequential_3/lstm_3/lstm_cell_3/mul:z:0)sequential_3/lstm_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@?
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_2Sigmoid.sequential_3/lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@?
&sequential_3/lstm_3/lstm_cell_3/Relu_1Relu)sequential_3/lstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
%sequential_3/lstm_3/lstm_cell_3/mul_2Mul-sequential_3/lstm_3/lstm_cell_3/Sigmoid_2:y:04sequential_3/lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
1sequential_3/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
#sequential_3/lstm_3/TensorArrayV2_1TensorListReserve:sequential_3/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Z
sequential_3/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_3/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????h
&sequential_3/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_3/lstm_3/whileWhile/sequential_3/lstm_3/while/loop_counter:output:05sequential_3/lstm_3/while/maximum_iterations:output:0!sequential_3/lstm_3/time:output:0,sequential_3/lstm_3/TensorArrayV2_1:handle:0"sequential_3/lstm_3/zeros:output:0$sequential_3/lstm_3/zeros_1:output:0,sequential_3/lstm_3/strided_slice_1:output:0Ksequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_3_lstm_3_lstm_cell_3_matmul_readvariableop_resource@sequential_3_lstm_3_lstm_cell_3_matmul_1_readvariableop_resource?sequential_3_lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_3_lstm_3_while_body_765200*1
cond)R'
%sequential_3_lstm_3_while_cond_765199*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_3/while:output:3Msequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0|
)sequential_3/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????u
+sequential_3/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_3/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential_3/lstm_3/strided_slice_3StridedSlice?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_3/strided_slice_3/stack:output:04sequential_3/lstm_3/strided_slice_3/stack_1:output:04sequential_3/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_masky
$sequential_3/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential_3/lstm_3/transpose_1	Transpose?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@o
sequential_3/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_3/dense_3/MatMulMatMul,sequential_3/lstm_3/strided_slice_3:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_3/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp7^sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp6^sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOp8^sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^sequential_3/lstm_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2p
6sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp6sequential_3/lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2n
5sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOp5sequential_3/lstm_3/lstm_cell_3/MatMul/ReadVariableOp2r
7sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp7sequential_3/lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp26
sequential_3/lstm_3/whilesequential_3/lstm_3/while:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?=
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_765448

inputs%
lstm_cell_3_765366:	?%
lstm_cell_3_765368:	@?!
lstm_cell_3_765370:	?
identity??#lstm_cell_3/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_765366lstm_cell_3_765368lstm_cell_3_765370*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765365n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_765366lstm_cell_3_765368lstm_cell_3_765370*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_765379*
condR
while_cond_765378*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@t
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?"
?
while_body_765578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_3_765602_0:	?-
while_lstm_cell_3_765604_0:	@?)
while_lstm_cell_3_765606_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_3_765602:	?+
while_lstm_cell_3_765604:	@?'
while_lstm_cell_3_765606:	???)while/lstm_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_765602_0while_lstm_cell_3_765604_0while_lstm_cell_3_765606_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765511?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????@?
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????@x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_3_765602while_lstm_cell_3_765602_0"6
while_lstm_cell_3_765604while_lstm_cell_3_765604_0"6
while_lstm_cell_3_765606while_lstm_cell_3_765606_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?`
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766494

inputsD
1lstm_3_lstm_cell_3_matmul_readvariableop_resource:	?F
3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	@?A
2lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?lstm_3/whileB
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@t
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: V
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?n
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: W
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@V
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@x
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: X
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?t
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: Y
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@j
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????R
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:f
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???f
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
(lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_3/lstm_cell_3/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/MatMul:product:0%lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_3/lstm_cell_3/BiasAddBiasAddlstm_3/lstm_cell_3/add:z:01lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0#lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitz
lstm_3/lstm_cell_3/SigmoidSigmoid!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@|
lstm_3/lstm_cell_3/Sigmoid_1Sigmoid!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mulMul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:?????????@t
lstm_3/lstm_cell_3/ReluRelu!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mul_1Mullstm_3/lstm_cell_3/Sigmoid:y:0%lstm_3/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/add_1AddV2lstm_3/lstm_cell_3/mul:z:0lstm_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@|
lstm_3/lstm_cell_3/Sigmoid_2Sigmoid!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@q
lstm_3/lstm_cell_3/Relu_1Relulstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mul_2Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0'lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@u
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???M
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????[
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_3_matmul_readvariableop_resource3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_3_while_body_766404*$
condR
lstm_3_while_cond_766403*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0o
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????h
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskl
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_3/MatMulMatMullstm_3/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_3/MatMul/ReadVariableOp+^lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp(lstm_3/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_3_layer_call_fn_765851
lstm_3_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:@
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_765838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?
?
while_cond_766604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766604___redundant_placeholder04
0while_while_cond_766604___redundant_placeholder14
0while_while_cond_766604___redundant_placeholder24
0while_while_cond_766604___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766111
lstm_3_input 
lstm_3_766098:	? 
lstm_3_766100:	@?
lstm_3_766102:	? 
dense_3_766105:@
dense_3_766107:
identity??dense_3/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_766098lstm_3_766100lstm_3_766102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_765813?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_766105dense_3_766107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_765831w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?	
?
lstm_3_while_cond_766246*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_766246___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_766246___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_766246___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_766246___redundant_placeholder3
lstm_3_while_identity
~
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: Y
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?=
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_765647

inputs%
lstm_cell_3_765565:	?%
lstm_cell_3_765567:	@?!
lstm_cell_3_765569:	?
identity??#lstm_cell_3/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_765565lstm_cell_3_765567lstm_cell_3_765569*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765511n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_765565lstm_cell_3_765567lstm_cell_3_765569*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_765578*
condR
while_cond_765577*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@t
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766840
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_766756*
condR
while_cond_766755*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767227

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?O
?
%sequential_3_lstm_3_while_body_765200D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3C
?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0
{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_3_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	?[
Hsequential_3_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?V
Gsequential_3_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?&
"sequential_3_lstm_3_while_identity(
$sequential_3_lstm_3_while_identity_1(
$sequential_3_lstm_3_while_identity_2(
$sequential_3_lstm_3_while_identity_3(
$sequential_3_lstm_3_while_identity_4(
$sequential_3_lstm_3_while_identity_5A
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1}
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensorW
Dsequential_3_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	?Y
Fsequential_3_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	@?T
Esequential_3_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???<sequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?;sequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?=sequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_3_while_placeholderTsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
;sequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOpFsequential_3_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
,sequential_3/lstm_3/while/lstm_cell_3/MatMulMatMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOpHsequential_3_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_1MatMul'sequential_3_lstm_3_while_placeholder_2Esequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_3/lstm_3/while/lstm_cell_3/addAddV26sequential_3/lstm_3/while/lstm_cell_3/MatMul:product:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
-sequential_3/lstm_3/while/lstm_cell_3/BiasAddBiasAdd-sequential_3/lstm_3/while/lstm_cell_3/add:z:0Dsequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_3/lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_3/lstm_3/while/lstm_cell_3/splitSplit>sequential_3/lstm_3/while/lstm_cell_3/split/split_dim:output:06sequential_3/lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split?
-sequential_3/lstm_3/while/lstm_cell_3/SigmoidSigmoid4sequential_3/lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@?
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid4sequential_3/lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
)sequential_3/lstm_3/while/lstm_cell_3/mulMul3sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_1:y:0'sequential_3_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:?????????@?
*sequential_3/lstm_3/while/lstm_cell_3/ReluRelu4sequential_3/lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
+sequential_3/lstm_3/while/lstm_cell_3/mul_1Mul1sequential_3/lstm_3/while/lstm_cell_3/Sigmoid:y:08sequential_3/lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
+sequential_3/lstm_3/while/lstm_cell_3/add_1AddV2-sequential_3/lstm_3/while/lstm_cell_3/mul:z:0/sequential_3/lstm_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@?
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid4sequential_3/lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@?
,sequential_3/lstm_3/while/lstm_cell_3/Relu_1Relu/sequential_3/lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
+sequential_3/lstm_3/while/lstm_cell_3/mul_2Mul3sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_2:y:0:sequential_3/lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_3_while_placeholder_1%sequential_3_lstm_3_while_placeholder/sequential_3/lstm_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???a
sequential_3/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_3/lstm_3/while/addAddV2%sequential_3_lstm_3_while_placeholder(sequential_3/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_3/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential_3/lstm_3/while/add_1AddV2@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counter*sequential_3/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: ?
"sequential_3/lstm_3/while/IdentityIdentity#sequential_3/lstm_3/while/add_1:z:0^sequential_3/lstm_3/while/NoOp*
T0*
_output_shapes
: ?
$sequential_3/lstm_3/while/Identity_1IdentityFsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations^sequential_3/lstm_3/while/NoOp*
T0*
_output_shapes
: ?
$sequential_3/lstm_3/while/Identity_2Identity!sequential_3/lstm_3/while/add:z:0^sequential_3/lstm_3/while/NoOp*
T0*
_output_shapes
: ?
$sequential_3/lstm_3/while/Identity_3IdentityNsequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_3/lstm_3/while/NoOp*
T0*
_output_shapes
: ?
$sequential_3/lstm_3/while/Identity_4Identity/sequential_3/lstm_3/while/lstm_cell_3/mul_2:z:0^sequential_3/lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
$sequential_3/lstm_3/while/Identity_5Identity/sequential_3/lstm_3/while/lstm_cell_3/add_1:z:0^sequential_3/lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
sequential_3/lstm_3/while/NoOpNoOp=^sequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<^sequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp>^sequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0"U
$sequential_3_lstm_3_while_identity_1-sequential_3/lstm_3/while/Identity_1:output:0"U
$sequential_3_lstm_3_while_identity_2-sequential_3/lstm_3/while/Identity_2:output:0"U
$sequential_3_lstm_3_while_identity_3-sequential_3/lstm_3/while/Identity_3:output:0"U
$sequential_3_lstm_3_while_identity_4-sequential_3/lstm_3/while/Identity_4:output:0"U
$sequential_3_lstm_3_while_identity_5-sequential_3/lstm_3/while/Identity_5:output:0"?
Esequential_3_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resourceGsequential_3_lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"?
Fsequential_3_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resourceHsequential_3_lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"?
Dsequential_3_lstm_3_while_lstm_cell_3_matmul_readvariableop_resourceFsequential_3_lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0"?
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2|
<sequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp<sequential_3/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2z
;sequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp;sequential_3/lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2~
=sequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp=sequential_3/lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_3_layer_call_fn_766095
lstm_3_input
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:@
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_766067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_765831

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?7
?
while_body_767058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_765838

inputs 
lstm_3_765814:	? 
lstm_3_765816:	@?
lstm_3_765818:	? 
dense_3_765832:@
dense_3_765834:
identity??dense_3/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_765814lstm_3_765816lstm_3_765818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_765813?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_765832dense_3_765834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_765831w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_767142

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_767058*
condR
while_cond_767057*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_lstm_cell_3_layer_call_fn_767195

inputs
states_0
states_1
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_765511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?4
?

__inference__traced_save_767348
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:: : : : : :	?:	@?:?: : :@::	?:	@?:?:@::	?:	@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	@?:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	@?:!

_output_shapes	
:?:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	@?:!

_output_shapes	
:?:

_output_shapes
: 
?
?
'__inference_lstm_3_layer_call_fn_766505
inputs_0
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_765448o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
-__inference_sequential_3_layer_call_fn_766180

inputs
unknown:	?
	unknown_0:	@?
	unknown_1:	?
	unknown_2:@
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_766067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_765813

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_765729*
condR
while_cond_765728*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_766755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766755___redundant_placeholder04
0while_while_cond_766755___redundant_placeholder14
0while_while_cond_766755___redundant_placeholder24
0while_while_cond_766755___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_765728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765728___redundant_placeholder04
0while_while_cond_765728___redundant_placeholder14
0while_while_cond_765728___redundant_placeholder24
0while_while_cond_765728___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?

lstm_3_while_body_766247*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	?N
;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?I
:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource:	?L
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	@?G
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
lstm_3/while/lstm_cell_3/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
!lstm_3/while/lstm_cell_3/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/MatMul:product:0+lstm_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd lstm_3/while/lstm_cell_3/add:z:07lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:0)lstm_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split?
 lstm_3/while/lstm_cell_3/SigmoidSigmoid'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@?
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mulMul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/ReluRelu'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mul_1Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0+lstm_3/while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/add_1AddV2 lstm_3/while/lstm_cell_3/mul:z:0"lstm_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@?
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@}
lstm_3/while/lstm_cell_3/Relu_1Relu"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_3/while/lstm_cell_3/mul_2Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0-lstm_3/while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???T
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations^lstm_3/while/NoOp*
T0*
_output_shapes
: n
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_3/while/NoOp*
T0*
_output_shapes
: ?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_2:z:0^lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_1:z:0^lstm_3/while/NoOp*
T0*'
_output_shapes
:?????????@?
lstm_3/while/NoOpNoOp0^lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_3_matmul_readvariableop_resource9lstm_3_while_lstm_cell_3_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2b
/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_3/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
%sequential_3_lstm_3_while_cond_765199D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3F
Bsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_765199___redundant_placeholder0\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_765199___redundant_placeholder1\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_765199___redundant_placeholder2\
Xsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_765199___redundant_placeholder3&
"sequential_3_lstm_3_while_identity
?
sequential_3/lstm_3/while/LessLess%sequential_3_lstm_3_while_placeholderBsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1*
T0*
_output_shapes
: s
"sequential_3/lstm_3/while/IdentityIdentity"sequential_3/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766067

inputs 
lstm_3_766054:	? 
lstm_3_766056:	@?
lstm_3_766058:	? 
dense_3_766061:@
dense_3_766063:
identity??dense_3/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_766054lstm_3_766056lstm_3_766058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_766025?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_766061dense_3_766063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_765831w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_3_layer_call_fn_766516
inputs_0
unknown:	?
	unknown_0:	@?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_765647o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766127
lstm_3_input 
lstm_3_766114:	? 
lstm_3_766116:	@?
lstm_3_766118:	? 
dense_3_766121:@
dense_3_766123:
identity??dense_3/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_766114lstm_3_766116lstm_3_766118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_766025?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_3_766121dense_3_766123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_765831w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_3_input
?7
?
while_body_766907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_767057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_767057___redundant_placeholder04
0while_while_cond_767057___redundant_placeholder14
0while_while_cond_767057___redundant_placeholder24
0while_while_cond_767057___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?`
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766337

inputsD
1lstm_3_lstm_cell_3_matmul_readvariableop_resource:	?F
3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource:	@?A
2lstm_3_lstm_cell_3_biasadd_readvariableop_resource:	?8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_3/MatMul/ReadVariableOp?*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp?lstm_3/whileB
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@t
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: V
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?n
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: W
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@V
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@x
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: X
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?t
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: Y
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@j
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????R
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:f
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???f
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
(lstm_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_3/lstm_cell_3/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/MatMul:product:0%lstm_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_3/lstm_cell_3/BiasAddBiasAddlstm_3/lstm_cell_3/add:z:01lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0#lstm_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitz
lstm_3/lstm_cell_3/SigmoidSigmoid!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@|
lstm_3/lstm_cell_3/Sigmoid_1Sigmoid!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mulMul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:?????????@t
lstm_3/lstm_cell_3/ReluRelu!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mul_1Mullstm_3/lstm_cell_3/Sigmoid:y:0%lstm_3/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/add_1AddV2lstm_3/lstm_cell_3/mul:z:0lstm_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@|
lstm_3/lstm_cell_3/Sigmoid_2Sigmoid!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@q
lstm_3/lstm_cell_3/Relu_1Relulstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_3/lstm_cell_3/mul_2Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0'lstm_3/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@u
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???M
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????[
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_3_matmul_readvariableop_resource3lstm_3_lstm_cell_3_matmul_1_readvariableop_resource2lstm_3_lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_3_while_body_766247*$
condR
lstm_3_while_cond_766246*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0o
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????h
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maskl
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@b
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_3/MatMulMatMullstm_3/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_3/MatMul/ReadVariableOp+^lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp^lstm_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_3/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_3/MatMul/ReadVariableOp(lstm_3/lstm_cell_3/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_3/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767259

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????@:?????????@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?7
?
while_body_766756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	?G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	@?B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	?E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	@?@
1while_lstm_cell_3_biasadd_readvariableop_resource:	???(while/lstm_cell_3/BiasAdd/ReadVariableOp?'while/lstm_cell_3/MatMul/ReadVariableOp?)while/lstm_cell_3/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype0?
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@r
while/lstm_cell_3/ReluRelu while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0$while/lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@o
while/lstm_cell_3/Relu_1Reluwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0&while/lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????@?

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_765577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765577___redundant_placeholder04
0while_while_cond_765577___redundant_placeholder14
0while_while_cond_765577___redundant_placeholder24
0while_while_cond_765577___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_765378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765378___redundant_placeholder04
0while_while_cond_765378___redundant_placeholder14
0while_while_cond_765378___redundant_placeholder24
0while_while_cond_765378___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?O
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766025

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	??
,lstm_cell_3_matmul_1_readvariableop_resource:	@?:
+lstm_cell_3_biasadd_readvariableop_resource:	?
identity??"lstm_cell_3/BiasAdd/ReadVariableOp?!lstm_cell_3/MatMul/ReadVariableOp?#lstm_cell_3/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:?????????@u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@f
lstm_cell_3/ReluRelulstm_cell_3/split:output:2*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Relu:activations:0*
T0*'
_output_shapes
:?????????@x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:?????????@n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:?????????@c
lstm_cell_3/Relu_1Relulstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:?????????@?
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0 lstm_cell_3/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_765941*
condR
while_cond_765940*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
lstm_3_input9
serving_default_lstm_3_input:0?????????;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?b
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
F__call__
*G&call_and_return_all_conditional_losses
H_default_save_signature"
_tf_keras_sequential
?
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
F__call__
H_default_save_signature
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

'states
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_3/kernel
:2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	?2lstm_3/lstm_cell_3/kernel
6:4	@?2#lstm_3/lstm_cell_3/recurrent_kernel
&:$?2lstm_3/lstm_cell_3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
#	variables
$trainable_variables
%regularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
%:#@2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
1:/	?2 Adam/lstm_3/lstm_cell_3/kernel/m
;:9	@?2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
+:)?2Adam/lstm_3/lstm_cell_3/bias/m
%:#@2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
1:/	?2 Adam/lstm_3/lstm_cell_3/kernel/v
;:9	@?2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
+:)?2Adam/lstm_3/lstm_cell_3/bias/v
?2?
-__inference_sequential_3_layer_call_fn_765851
-__inference_sequential_3_layer_call_fn_766165
-__inference_sequential_3_layer_call_fn_766180
-__inference_sequential_3_layer_call_fn_766095?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766337
H__inference_sequential_3_layer_call_and_return_conditional_losses_766494
H__inference_sequential_3_layer_call_and_return_conditional_losses_766111
H__inference_sequential_3_layer_call_and_return_conditional_losses_766127?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_765290lstm_3_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_lstm_3_layer_call_fn_766505
'__inference_lstm_3_layer_call_fn_766516
'__inference_lstm_3_layer_call_fn_766527
'__inference_lstm_3_layer_call_fn_766538?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766689
B__inference_lstm_3_layer_call_and_return_conditional_losses_766840
B__inference_lstm_3_layer_call_and_return_conditional_losses_766991
B__inference_lstm_3_layer_call_and_return_conditional_losses_767142?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_3_layer_call_fn_767151?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_767161?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_766150lstm_3_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_lstm_cell_3_layer_call_fn_767178
,__inference_lstm_cell_3_layer_call_fn_767195?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767227
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767259?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_765290u9?6
/?,
*?'
lstm_3_input?????????
? "1?.
,
dense_3!?
dense_3??????????
C__inference_dense_3_layer_call_and_return_conditional_losses_767161\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_3_layer_call_fn_767151O/?,
%?"
 ?
inputs?????????@
? "???????????
B__inference_lstm_3_layer_call_and_return_conditional_losses_766689}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766840}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????@
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_766991m??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????@
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_767142m??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????@
? ?
'__inference_lstm_3_layer_call_fn_766505pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "??????????@?
'__inference_lstm_3_layer_call_fn_766516pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "??????????@?
'__inference_lstm_3_layer_call_fn_766527`??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????@?
'__inference_lstm_3_layer_call_fn_766538`??<
5?2
$?!
inputs?????????

 
p

 
? "??????????@?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767227???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_767259???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
,__inference_lstm_cell_3_layer_call_fn_767178???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
,__inference_lstm_cell_3_layer_call_fn_767195???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766111qA?>
7?4
*?'
lstm_3_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766127qA?>
7?4
*?'
lstm_3_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766337k;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_766494k;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_3_layer_call_fn_765851dA?>
7?4
*?'
lstm_3_input?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_766095dA?>
7?4
*?'
lstm_3_input?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_766165^;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_766180^;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_766150?I?F
? 
??<
:
lstm_3_input*?'
lstm_3_input?????????"1?.
,
dense_3!?
dense_3?????????