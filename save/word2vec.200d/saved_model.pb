??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
executor_typestring ?
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
 ?"serve*2.5.0-dev202010302v1.12.1-44905-g31970896218??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
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
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
 trainable_variables
!	variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
v
*iter

+beta_1

,beta_2
	-decay
.learning_ratemW$mX%mYvZ$v[%v\

0
$1
%2

0
$1
%2
 
?

/layers
0layer_regularization_losses
1layer_metrics
2non_trainable_variables
3metrics

trainable_variables
	variables
regularization_losses
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?

4layers
5layer_regularization_losses
6layer_metrics
7non_trainable_variables
8metrics
trainable_variables
	variables
regularization_losses
 
 
 
?

9layers
:layer_regularization_losses
;layer_metrics
<non_trainable_variables
=metrics
trainable_variables
	variables
regularization_losses
 
 
 
?

>layers
?layer_regularization_losses
@layer_metrics
Anon_trainable_variables
Bmetrics
trainable_variables
	variables
regularization_losses
 
 
 
?

Clayers
Dlayer_regularization_losses
Elayer_metrics
Fnon_trainable_variables
Gmetrics
trainable_variables
	variables
regularization_losses
 
 
 
?

Hlayers
Ilayer_regularization_losses
Jlayer_metrics
Knon_trainable_variables
Lmetrics
 trainable_variables
!	variables
"regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?

Mlayers
Nlayer_regularization_losses
Olayer_metrics
Pnon_trainable_variables
Qmetrics
&trainable_variables
'	variables
(regularization_losses
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
8
0
1
2
3
4
5
6
7
 
 
 

R0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Stotal
	Tcount
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

U	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_13Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_input_14Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13serving_default_input_14embedding/embeddingsdense_6/kerneldense_6/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_17937347
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_17937654
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_6/kerneldense_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/embedding/embeddings/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/embedding/embeddings/vAdam/dense_6/kernel/vAdam/dense_6/bias/v*
Tin
2*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_17937712ʆ
?+
?
!__inference__traced_save_17937654
file_prefix3
/savev2_embedding_embeddings_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*y
_input_shapesh
f: :
?N?::: : : : : : : :
?N?:::
?N?::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:: 

_output_shapes
::
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
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
?N?:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?	
?
G__inference_embedding_layer_call_and_return_conditional_losses_17937487

inputs
embedding_lookup_17937481
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_17937481Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/17937481*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/17937481*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937285

inputs
inputs_1
embedding_17937270
dense_6_17937279
dense_6_17937281
identity??dense_6/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_17937270*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212#
!embedding/StatefulPartitionedCall?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputsembedding_17937270*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212%
#embedding/StatefulPartitionedCall_1?
reshape_18/PartitionedCallPartitionedCall,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_18_layer_call_and_return_conditional_losses_179371482
reshape_18/PartitionedCall?
reshape_19/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_179371692
reshape_19/PartitionedCall?
dot_10/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0#reshape_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dot_10_layer_call_and_return_conditional_losses_179371862
dot_10/PartitionedCall?
reshape_20/PartitionedCallPartitionedCalldot_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_20_layer_call_and_return_conditional_losses_179372072
reshape_20/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_6_17937279dense_6_17937281*
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
GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_179372262!
dense_6/StatefulPartitionedCall?
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0 ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_6_layer_call_and_return_conditional_losses_17937226

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_17937347
input_13
input_14
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13input_14unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_179371062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
d
H__inference_reshape_19_layer_call_and_return_conditional_losses_17937525

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_model_10_layer_call_fn_17937325
input_13
input_14
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13input_14unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_model_10_layer_call_and_return_conditional_losses_179373162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?

d
H__inference_reshape_20_layer_call_and_return_conditional_losses_17937557

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937400
inputs_0
inputs_1'
#embedding_embedding_lookup_17937352*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?embedding/embedding_lookup?embedding/embedding_lookup_1s
embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_17937352embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/17937352*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/17937352*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1w
embedding/Cast_1Castinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast_1?
embedding/embedding_lookup_1ResourceGather#embedding_embedding_lookup_17937352embedding/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/17937352*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup_1?
%embedding/embedding_lookup_1/IdentityIdentity%embedding/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/17937352*,
_output_shapes
:??????????2'
%embedding/embedding_lookup_1/Identity?
'embedding/embedding_lookup_1/Identity_1Identity.embedding/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????2)
'embedding/embedding_lookup_1/Identity_1?
reshape_18/ShapeShape0embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_18/Shape?
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack?
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1?
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2?
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slice{
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_18/Reshape/shape/1z
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/2?
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape?
reshape_18/ReshapeReshape0embedding/embedding_lookup_1/Identity_1:output:0!reshape_18/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_18/Reshape?
reshape_19/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_19/Shape?
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_19/strided_slice/stack?
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_1?
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_2?
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_19/strided_slice{
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_19/Reshape/shape/1z
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/2?
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_19/Reshape/shape?
reshape_19/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0!reshape_19/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_19/Reshape?
dot_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dot_10/transpose/perm?
dot_10/transpose	Transposereshape_18/Reshape:output:0dot_10/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
dot_10/transpose?
dot_10/MatMulBatchMatMulV2dot_10/transpose:y:0reshape_19/Reshape:output:0*
T0*+
_output_shapes
:?????????2
dot_10/MatMulb
dot_10/ShapeShapedot_10/MatMul:output:0*
T0*
_output_shapes
:2
dot_10/Shapej
reshape_20/ShapeShapedot_10/MatMul:output:0*
T0*
_output_shapes
:2
reshape_20/Shape?
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack?
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1?
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2?
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1?
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape?
reshape_20/ReshapeReshapedot_10/MatMul:output:0!reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
reshape_20/Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulreshape_20/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_6/BiasAddy
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_6/Sigmoid?
IdentityIdentitydense_6/Sigmoid:y:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding/embedding_lookup^embedding/embedding_lookup_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding/embedding_lookup_1embedding/embedding_lookup_1:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

d
H__inference_reshape_20_layer_call_and_return_conditional_losses_17937207

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_reshape_20_layer_call_fn_17937562

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_20_layer_call_and_return_conditional_losses_179372072
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
U
)__inference_dot_10_layer_call_fn_17937545
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dot_10_layer_call_and_return_conditional_losses_179371862
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????:??????????:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
n
D__inference_dot_10_layer_call_and_return_conditional_losses_17937186

inputs
inputs_1
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposep
MatMulBatchMatMulV2transpose:y:0inputs_1*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapeg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
G__inference_embedding_layer_call_and_return_conditional_losses_17937121

inputs
embedding_lookup_17937115
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_17937115Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/17937115*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/17937115*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
$__inference__traced_restore_17937712
file_prefix)
%assignvariableop_embedding_embeddings%
!assignvariableop_1_dense_6_kernel#
assignvariableop_2_dense_6_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate
assignvariableop_8_total
assignvariableop_9_count3
/assignvariableop_10_adam_embedding_embeddings_m-
)assignvariableop_11_adam_dense_6_kernel_m+
'assignvariableop_12_adam_dense_6_bias_m3
/assignvariableop_13_adam_embedding_embeddings_v-
)assignvariableop_14_adam_dense_6_kernel_v+
'assignvariableop_15_adam_dense_6_bias_v
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_6_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_6_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_adam_embedding_embeddings_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_adam_dense_6_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp'assignvariableop_12_adam_dense_6_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_adam_embedding_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_6_kernel_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_6_bias_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
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
?C
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937453
inputs_0
inputs_1'
#embedding_embedding_lookup_17937405*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?embedding/embedding_lookup?embedding/embedding_lookup_1s
embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_17937405embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/17937405*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/17937405*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1w
embedding/Cast_1Castinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast_1?
embedding/embedding_lookup_1ResourceGather#embedding_embedding_lookup_17937405embedding/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/17937405*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup_1?
%embedding/embedding_lookup_1/IdentityIdentity%embedding/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/17937405*,
_output_shapes
:??????????2'
%embedding/embedding_lookup_1/Identity?
'embedding/embedding_lookup_1/Identity_1Identity.embedding/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????2)
'embedding/embedding_lookup_1/Identity_1?
reshape_18/ShapeShape0embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_18/Shape?
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack?
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1?
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2?
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slice{
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_18/Reshape/shape/1z
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/2?
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape?
reshape_18/ReshapeReshape0embedding/embedding_lookup_1/Identity_1:output:0!reshape_18/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_18/Reshape?
reshape_19/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_19/Shape?
reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_19/strided_slice/stack?
 reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_1?
 reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_19/strided_slice/stack_2?
reshape_19/strided_sliceStridedSlicereshape_19/Shape:output:0'reshape_19/strided_slice/stack:output:0)reshape_19/strided_slice/stack_1:output:0)reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_19/strided_slice{
reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_19/Reshape/shape/1z
reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_19/Reshape/shape/2?
reshape_19/Reshape/shapePack!reshape_19/strided_slice:output:0#reshape_19/Reshape/shape/1:output:0#reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_19/Reshape/shape?
reshape_19/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0!reshape_19/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_19/Reshape?
dot_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dot_10/transpose/perm?
dot_10/transpose	Transposereshape_18/Reshape:output:0dot_10/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
dot_10/transpose?
dot_10/MatMulBatchMatMulV2dot_10/transpose:y:0reshape_19/Reshape:output:0*
T0*+
_output_shapes
:?????????2
dot_10/MatMulb
dot_10/ShapeShapedot_10/MatMul:output:0*
T0*
_output_shapes
:2
dot_10/Shapej
reshape_20/ShapeShapedot_10/MatMul:output:0*
T0*
_output_shapes
:2
reshape_20/Shape?
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack?
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1?
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2?
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1?
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape?
reshape_20/ReshapeReshapedot_10/MatMul:output:0!reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
reshape_20/Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulreshape_20/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_6/BiasAddy
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_6/Sigmoid?
IdentityIdentitydense_6/Sigmoid:y:0^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding/embedding_lookup^embedding/embedding_lookup_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding/embedding_lookup_1embedding/embedding_lookup_1:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?	
?
E__inference_dense_6_layer_call_and_return_conditional_losses_17937573

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937316

inputs
inputs_1
embedding_17937301
dense_6_17937310
dense_6_17937312
identity??dense_6/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_17937301*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212#
!embedding/StatefulPartitionedCall?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputsembedding_17937301*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212%
#embedding/StatefulPartitionedCall_1?
reshape_18/PartitionedCallPartitionedCall,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_18_layer_call_and_return_conditional_losses_179371482
reshape_18/PartitionedCall?
reshape_19/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_179371692
reshape_19/PartitionedCall?
dot_10/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0#reshape_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dot_10_layer_call_and_return_conditional_losses_179371862
dot_10/PartitionedCall?
reshape_20/PartitionedCallPartitionedCalldot_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_20_layer_call_and_return_conditional_losses_179372072
reshape_20/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_6_17937310dense_6_17937312*
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
GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_179372262!
dense_6/StatefulPartitionedCall?
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0 ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_reshape_19_layer_call_fn_17937530

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_179371692
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_reshape_18_layer_call_and_return_conditional_losses_17937148

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937262
input_13
input_14
embedding_17937247
dense_6_17937256
dense_6_17937258
identity??dense_6/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_14embedding_17937247*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212#
!embedding/StatefulPartitionedCall?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinput_13embedding_17937247*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212%
#embedding/StatefulPartitionedCall_1?
reshape_18/PartitionedCallPartitionedCall,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_18_layer_call_and_return_conditional_losses_179371482
reshape_18/PartitionedCall?
reshape_19/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_179371692
reshape_19/PartitionedCall?
dot_10/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0#reshape_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dot_10_layer_call_and_return_conditional_losses_179371862
dot_10/PartitionedCall?
reshape_20/PartitionedCallPartitionedCalldot_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_20_layer_call_and_return_conditional_losses_179372072
reshape_20/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_6_17937256dense_6_17937258*
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
GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_179372262!
dense_6/StatefulPartitionedCall?
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0 ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
d
H__inference_reshape_19_layer_call_and_return_conditional_losses_17937169

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_model_10_layer_call_fn_17937465
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_model_10_layer_call_and_return_conditional_losses_179372852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
I
-__inference_reshape_18_layer_call_fn_17937512

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_18_layer_call_and_return_conditional_losses_179371482
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?N
?
#__inference__wrapped_model_17937106
input_13
input_140
,model_10_embedding_embedding_lookup_179370583
/model_10_dense_6_matmul_readvariableop_resource4
0model_10_dense_6_biasadd_readvariableop_resource
identity??'model_10/dense_6/BiasAdd/ReadVariableOp?&model_10/dense_6/MatMul/ReadVariableOp?#model_10/embedding/embedding_lookup?%model_10/embedding/embedding_lookup_1?
model_10/embedding/CastCastinput_14*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_10/embedding/Cast?
#model_10/embedding/embedding_lookupResourceGather,model_10_embedding_embedding_lookup_17937058model_10/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_10/embedding/embedding_lookup/17937058*,
_output_shapes
:??????????*
dtype02%
#model_10/embedding/embedding_lookup?
,model_10/embedding/embedding_lookup/IdentityIdentity,model_10/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_10/embedding/embedding_lookup/17937058*,
_output_shapes
:??????????2.
,model_10/embedding/embedding_lookup/Identity?
.model_10/embedding/embedding_lookup/Identity_1Identity5model_10/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????20
.model_10/embedding/embedding_lookup/Identity_1?
model_10/embedding/Cast_1Castinput_13*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_10/embedding/Cast_1?
%model_10/embedding/embedding_lookup_1ResourceGather,model_10_embedding_embedding_lookup_17937058model_10/embedding/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_10/embedding/embedding_lookup/17937058*,
_output_shapes
:??????????*
dtype02'
%model_10/embedding/embedding_lookup_1?
.model_10/embedding/embedding_lookup_1/IdentityIdentity.model_10/embedding/embedding_lookup_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_10/embedding/embedding_lookup/17937058*,
_output_shapes
:??????????20
.model_10/embedding/embedding_lookup_1/Identity?
0model_10/embedding/embedding_lookup_1/Identity_1Identity7model_10/embedding/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:??????????22
0model_10/embedding/embedding_lookup_1/Identity_1?
model_10/reshape_18/ShapeShape9model_10/embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:2
model_10/reshape_18/Shape?
'model_10/reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_10/reshape_18/strided_slice/stack?
)model_10/reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_18/strided_slice/stack_1?
)model_10/reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_18/strided_slice/stack_2?
!model_10/reshape_18/strided_sliceStridedSlice"model_10/reshape_18/Shape:output:00model_10/reshape_18/strided_slice/stack:output:02model_10/reshape_18/strided_slice/stack_1:output:02model_10/reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_10/reshape_18/strided_slice?
#model_10/reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#model_10/reshape_18/Reshape/shape/1?
#model_10/reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_18/Reshape/shape/2?
!model_10/reshape_18/Reshape/shapePack*model_10/reshape_18/strided_slice:output:0,model_10/reshape_18/Reshape/shape/1:output:0,model_10/reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2#
!model_10/reshape_18/Reshape/shape?
model_10/reshape_18/ReshapeReshape9model_10/embedding/embedding_lookup_1/Identity_1:output:0*model_10/reshape_18/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
model_10/reshape_18/Reshape?
model_10/reshape_19/ShapeShape7model_10/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
model_10/reshape_19/Shape?
'model_10/reshape_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_10/reshape_19/strided_slice/stack?
)model_10/reshape_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_19/strided_slice/stack_1?
)model_10/reshape_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_19/strided_slice/stack_2?
!model_10/reshape_19/strided_sliceStridedSlice"model_10/reshape_19/Shape:output:00model_10/reshape_19/strided_slice/stack:output:02model_10/reshape_19/strided_slice/stack_1:output:02model_10/reshape_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_10/reshape_19/strided_slice?
#model_10/reshape_19/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#model_10/reshape_19/Reshape/shape/1?
#model_10/reshape_19/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_19/Reshape/shape/2?
!model_10/reshape_19/Reshape/shapePack*model_10/reshape_19/strided_slice:output:0,model_10/reshape_19/Reshape/shape/1:output:0,model_10/reshape_19/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2#
!model_10/reshape_19/Reshape/shape?
model_10/reshape_19/ReshapeReshape7model_10/embedding/embedding_lookup/Identity_1:output:0*model_10/reshape_19/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
model_10/reshape_19/Reshape?
model_10/dot_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_10/dot_10/transpose/perm?
model_10/dot_10/transpose	Transpose$model_10/reshape_18/Reshape:output:0'model_10/dot_10/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
model_10/dot_10/transpose?
model_10/dot_10/MatMulBatchMatMulV2model_10/dot_10/transpose:y:0$model_10/reshape_19/Reshape:output:0*
T0*+
_output_shapes
:?????????2
model_10/dot_10/MatMul}
model_10/dot_10/ShapeShapemodel_10/dot_10/MatMul:output:0*
T0*
_output_shapes
:2
model_10/dot_10/Shape?
model_10/reshape_20/ShapeShapemodel_10/dot_10/MatMul:output:0*
T0*
_output_shapes
:2
model_10/reshape_20/Shape?
'model_10/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_10/reshape_20/strided_slice/stack?
)model_10/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_20/strided_slice/stack_1?
)model_10/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_10/reshape_20/strided_slice/stack_2?
!model_10/reshape_20/strided_sliceStridedSlice"model_10/reshape_20/Shape:output:00model_10/reshape_20/strided_slice/stack:output:02model_10/reshape_20/strided_slice/stack_1:output:02model_10/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_10/reshape_20/strided_slice?
#model_10/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#model_10/reshape_20/Reshape/shape/1?
!model_10/reshape_20/Reshape/shapePack*model_10/reshape_20/strided_slice:output:0,model_10/reshape_20/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2#
!model_10/reshape_20/Reshape/shape?
model_10/reshape_20/ReshapeReshapemodel_10/dot_10/MatMul:output:0*model_10/reshape_20/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
model_10/reshape_20/Reshape?
&model_10/dense_6/MatMul/ReadVariableOpReadVariableOp/model_10_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&model_10/dense_6/MatMul/ReadVariableOp?
model_10/dense_6/MatMulMatMul$model_10/reshape_20/Reshape:output:0.model_10/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_10/dense_6/MatMul?
'model_10/dense_6/BiasAdd/ReadVariableOpReadVariableOp0model_10_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_10/dense_6/BiasAdd/ReadVariableOp?
model_10/dense_6/BiasAddBiasAdd!model_10/dense_6/MatMul:product:0/model_10/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_10/dense_6/BiasAdd?
model_10/dense_6/SigmoidSigmoid!model_10/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_10/dense_6/Sigmoid?
IdentityIdentitymodel_10/dense_6/Sigmoid:y:0(^model_10/dense_6/BiasAdd/ReadVariableOp'^model_10/dense_6/MatMul/ReadVariableOp$^model_10/embedding/embedding_lookup&^model_10/embedding/embedding_lookup_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2R
'model_10/dense_6/BiasAdd/ReadVariableOp'model_10/dense_6/BiasAdd/ReadVariableOp2P
&model_10/dense_6/MatMul/ReadVariableOp&model_10/dense_6/MatMul/ReadVariableOp2J
#model_10/embedding/embedding_lookup#model_10/embedding/embedding_lookup2N
%model_10/embedding/embedding_lookup_1%model_10/embedding/embedding_lookup_1:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
?
F__inference_model_10_layer_call_and_return_conditional_losses_17937243
input_13
input_14
embedding_17937130
dense_6_17937237
dense_6_17937239
identity??dense_6/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#embedding/StatefulPartitionedCall_1?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_14embedding_17937130*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212#
!embedding/StatefulPartitionedCall?
#embedding/StatefulPartitionedCall_1StatefulPartitionedCallinput_13embedding_17937130*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212%
#embedding/StatefulPartitionedCall_1?
reshape_18/PartitionedCallPartitionedCall,embedding/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_18_layer_call_and_return_conditional_losses_179371482
reshape_18/PartitionedCall?
reshape_19/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_19_layer_call_and_return_conditional_losses_179371692
reshape_19/PartitionedCall?
dot_10/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0#reshape_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dot_10_layer_call_and_return_conditional_losses_179371862
dot_10/PartitionedCall?
reshape_20/PartitionedCallPartitionedCalldot_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_reshape_20_layer_call_and_return_conditional_losses_179372072
reshape_20/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall#reshape_20/PartitionedCall:output:0dense_6_17937237dense_6_17937239*
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
GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_179372262!
dense_6/StatefulPartitionedCall?
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0 ^dense_6/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^embedding/StatefulPartitionedCall_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding/StatefulPartitionedCall_1#embedding/StatefulPartitionedCall_1:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
r
,__inference_embedding_layer_call_fn_17937494

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_layer_call_and_return_conditional_losses_179371212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_model_10_layer_call_fn_17937477
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_model_10_layer_call_and_return_conditional_losses_179373162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

*__inference_dense_6_layer_call_fn_17937582

inputs
unknown
	unknown_0
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
GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_179372262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_model_10_layer_call_fn_17937294
input_13
input_14
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_13input_14unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_model_10_layer_call_and_return_conditional_losses_179372852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:?????????:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
p
D__inference_dot_10_layer_call_and_return_conditional_losses_17937539
inputs_0
inputs_1
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposep
MatMulBatchMatMulV2transpose:y:0inputs_1*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapeg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????:??????????:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
d
H__inference_reshape_18_layer_call_and_return_conditional_losses_17937507

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_131
serving_default_input_13:0?????????
=
input_141
serving_default_input_14:0?????????;
dense_60
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?4
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
]_default_save_signature
*^&call_and_return_all_conditional_losses
___call__"?1
_tf_keras_network?1{"class_name": "Functional", "name": "model_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}, "name": "input_13", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 10000, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "embedding", "inbound_nodes": [[["input_13", 0, 0, {}]], [["input_14", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_18", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}, "name": "reshape_18", "inbound_nodes": [[["embedding", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_19", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}, "name": "reshape_19", "inbound_nodes": [[["embedding", 1, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot_10", "trainable": true, "dtype": "float32", "axes": {"class_name": "__tuple__", "items": [1, 1]}, "normalize": false}, "name": "dot_10", "inbound_nodes": [[["reshape_18", 0, 0, {}], ["reshape_19", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1]}}, "name": "reshape_20", "inbound_nodes": [[["dot_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["reshape_20", 0, 0, {}]]]}], "input_layers": [["input_13", 0, 0], ["input_14", 0, 0]], "output_layers": [["dense_6", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}, "name": "input_13", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 10000, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "embedding", "inbound_nodes": [[["input_13", 0, 0, {}]], [["input_14", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_18", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}, "name": "reshape_18", "inbound_nodes": [[["embedding", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_19", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}, "name": "reshape_19", "inbound_nodes": [[["embedding", 1, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot_10", "trainable": true, "dtype": "float32", "axes": {"class_name": "__tuple__", "items": [1, 1]}, "normalize": false}, "name": "dot_10", "inbound_nodes": [[["reshape_18", 0, 0, {}], ["reshape_19", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1]}}, "name": "reshape_20", "inbound_nodes": [[["dot_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["reshape_20", 0, 0, {}]]]}], "input_layers": [["input_13", 0, 0], ["input_14", 0, 0]], "output_layers": [["dense_6", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_13", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_13"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_14", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}}
?

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 10000, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
*b&call_and_return_all_conditional_losses
c__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_18", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
*d&call_and_return_all_conditional_losses
e__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_19", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [200, 1]}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
*f&call_and_return_all_conditional_losses
g__call__"?
_tf_keras_layer?{"class_name": "Dot", "name": "dot_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dot_10", "trainable": true, "dtype": "float32", "axes": {"class_name": "__tuple__", "items": [1, 1]}, "normalize": false}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 200, 1]}, {"class_name": "TensorShape", "items": [null, 200, 1]}]}
?
 trainable_variables
!	variables
"regularization_losses
#	keras_api
*h&call_and_return_all_conditional_losses
i__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_20", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1]}}}
?

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
*j&call_and_return_all_conditional_losses
k__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?
*iter

+beta_1

,beta_2
	-decay
.learning_ratemW$mX%mYvZ$v[%v\"
	optimizer
5
0
$1
%2"
trackable_list_wrapper
5
0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

/layers
0layer_regularization_losses
1layer_metrics
2non_trainable_variables
3metrics

trainable_variables
	variables
regularization_losses
___call__
]_default_save_signature
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
,
lserving_default"
signature_map
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

4layers
5layer_regularization_losses
6layer_metrics
7non_trainable_variables
8metrics
trainable_variables
	variables
regularization_losses
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

9layers
:layer_regularization_losses
;layer_metrics
<non_trainable_variables
=metrics
trainable_variables
	variables
regularization_losses
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

>layers
?layer_regularization_losses
@layer_metrics
Anon_trainable_variables
Bmetrics
trainable_variables
	variables
regularization_losses
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Clayers
Dlayer_regularization_losses
Elayer_metrics
Fnon_trainable_variables
Gmetrics
trainable_variables
	variables
regularization_losses
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Hlayers
Ilayer_regularization_losses
Jlayer_metrics
Knon_trainable_variables
Lmetrics
 trainable_variables
!	variables
"regularization_losses
i__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
 :2dense_6/kernel
:2dense_6/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mlayers
Nlayer_regularization_losses
Olayer_metrics
Pnon_trainable_variables
Qmetrics
&trainable_variables
'	variables
(regularization_losses
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
R0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	Stotal
	Tcount
U	variables
V	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
-:+
?N?2Adam/embedding/embeddings/m
%:#2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
-:+
?N?2Adam/embedding/embeddings/v
%:#2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
?2?
#__inference__wrapped_model_17937106?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *P?M
K?H
"?
input_13?????????
"?
input_14?????????
?2?
F__inference_model_10_layer_call_and_return_conditional_losses_17937453
F__inference_model_10_layer_call_and_return_conditional_losses_17937262
F__inference_model_10_layer_call_and_return_conditional_losses_17937243
F__inference_model_10_layer_call_and_return_conditional_losses_17937400?
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
?2?
+__inference_model_10_layer_call_fn_17937477
+__inference_model_10_layer_call_fn_17937294
+__inference_model_10_layer_call_fn_17937325
+__inference_model_10_layer_call_fn_17937465?
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
?2?
G__inference_embedding_layer_call_and_return_conditional_losses_17937487?
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
,__inference_embedding_layer_call_fn_17937494?
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
H__inference_reshape_18_layer_call_and_return_conditional_losses_17937507?
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
-__inference_reshape_18_layer_call_fn_17937512?
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
H__inference_reshape_19_layer_call_and_return_conditional_losses_17937525?
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
-__inference_reshape_19_layer_call_fn_17937530?
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
D__inference_dot_10_layer_call_and_return_conditional_losses_17937539?
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
)__inference_dot_10_layer_call_fn_17937545?
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
H__inference_reshape_20_layer_call_and_return_conditional_losses_17937557?
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
-__inference_reshape_20_layer_call_fn_17937562?
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
E__inference_dense_6_layer_call_and_return_conditional_losses_17937573?
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
*__inference_dense_6_layer_call_fn_17937582?
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
&__inference_signature_wrapper_17937347input_13input_14"?
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
 ?
#__inference__wrapped_model_17937106?$%Z?W
P?M
K?H
"?
input_13?????????
"?
input_14?????????
? "1?.
,
dense_6!?
dense_6??????????
E__inference_dense_6_layer_call_and_return_conditional_losses_17937573\$%/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_6_layer_call_fn_17937582O$%/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dot_10_layer_call_and_return_conditional_losses_17937539?d?a
Z?W
U?R
'?$
inputs/0??????????
'?$
inputs/1??????????
? ")?&
?
0?????????
? ?
)__inference_dot_10_layer_call_fn_17937545?d?a
Z?W
U?R
'?$
inputs/0??????????
'?$
inputs/1??????????
? "???????????
G__inference_embedding_layer_call_and_return_conditional_losses_17937487`/?,
%?"
 ?
inputs?????????
? "*?'
 ?
0??????????
? ?
,__inference_embedding_layer_call_fn_17937494S/?,
%?"
 ?
inputs?????????
? "????????????
F__inference_model_10_layer_call_and_return_conditional_losses_17937243?$%b?_
X?U
K?H
"?
input_13?????????
"?
input_14?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_model_10_layer_call_and_return_conditional_losses_17937262?$%b?_
X?U
K?H
"?
input_13?????????
"?
input_14?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_model_10_layer_call_and_return_conditional_losses_17937400?$%b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_model_10_layer_call_and_return_conditional_losses_17937453?$%b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
+__inference_model_10_layer_call_fn_17937294?$%b?_
X?U
K?H
"?
input_13?????????
"?
input_14?????????
p

 
? "???????????
+__inference_model_10_layer_call_fn_17937325?$%b?_
X?U
K?H
"?
input_13?????????
"?
input_14?????????
p 

 
? "???????????
+__inference_model_10_layer_call_fn_17937465?$%b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
+__inference_model_10_layer_call_fn_17937477?$%b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
H__inference_reshape_18_layer_call_and_return_conditional_losses_17937507b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_reshape_18_layer_call_fn_17937512U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_reshape_19_layer_call_and_return_conditional_losses_17937525b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_reshape_19_layer_call_fn_17937530U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_reshape_20_layer_call_and_return_conditional_losses_17937557\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
-__inference_reshape_20_layer_call_fn_17937562O3?0
)?&
$?!
inputs?????????
? "???????????
&__inference_signature_wrapper_17937347?$%m?j
? 
c?`
.
input_13"?
input_13?????????
.
input_14"?
input_14?????????"1?.
,
dense_6!?
dense_6?????????