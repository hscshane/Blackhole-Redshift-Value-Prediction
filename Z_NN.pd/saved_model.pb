ΰ
??
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
o
	l0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		?*
shared_name	l0/kernel
h
l0/kernel/Read/ReadVariableOpReadVariableOp	l0/kernel*
_output_shapes
:		?*
dtype0
g
l0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	l0/bias
`
l0/bias/Read/ReadVariableOpReadVariableOpl0/bias*
_output_shapes	
:?*
dtype0
p
	l1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_name	l1/kernel
i
l1/kernel/Read/ReadVariableOpReadVariableOp	l1/kernel* 
_output_shapes
:
??*
dtype0
g
l1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	l1/bias
`
l1/bias/Read/ReadVariableOpReadVariableOpl1/bias*
_output_shapes	
:?*
dtype0
p
	l2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_name	l2/kernel
i
l2/kernel/Read/ReadVariableOpReadVariableOp	l2/kernel* 
_output_shapes
:
??*
dtype0
g
l2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	l2/bias
`
l2/bias/Read/ReadVariableOpReadVariableOpl2/bias*
_output_shapes	
:?*
dtype0
{
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_16/kernel
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes
:	?*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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
RMSprop/l0/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:		?*&
shared_nameRMSprop/l0/kernel/rms
?
)RMSprop/l0/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/l0/kernel/rms*
_output_shapes
:		?*
dtype0

RMSprop/l0/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameRMSprop/l0/bias/rms
x
'RMSprop/l0/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/l0/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/l1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameRMSprop/l1/kernel/rms
?
)RMSprop/l1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/l1/kernel/rms* 
_output_shapes
:
??*
dtype0

RMSprop/l1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameRMSprop/l1/bias/rms
x
'RMSprop/l1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/l1/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/l2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameRMSprop/l2/kernel/rms
?
)RMSprop/l2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/l2/kernel/rms* 
_output_shapes
:
??*
dtype0

RMSprop/l2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameRMSprop/l2/bias/rms
x
'RMSprop/l2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/l2/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_16/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameRMSprop/dense_16/kernel/rms
?
/RMSprop/dense_16/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_16/kernel/rms*
_output_shapes
:	?*
dtype0
?
RMSprop/dense_16/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_16/bias/rms
?
-RMSprop/dense_16/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_16/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
 
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
h

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
?
)iter
	*decay
+learning_rate
,momentum
-rho	rmsQ	rmsR	rmsS	rmsT	rmsU	rmsV	#rmsW	$rmsX
8
0
1
2
3
4
5
#6
$7
 
8
0
1
2
3
4
5
#6
$7
?
trainable_variables
.non_trainable_variables
/layer_metrics
	regularization_losses
0layer_regularization_losses

1layers
2metrics

	variables
 
 
 
 
?
trainable_variables
3non_trainable_variables
4layer_metrics
regularization_losses
5layer_regularization_losses

6layers
7metrics
	variables
US
VARIABLE_VALUE	l0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEl0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
8non_trainable_variables
9layer_metrics
regularization_losses
:layer_regularization_losses

;layers
<metrics
	variables
US
VARIABLE_VALUE	l1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEl1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
=non_trainable_variables
>layer_metrics
regularization_losses
?layer_regularization_losses

@layers
Ametrics
	variables
US
VARIABLE_VALUE	l2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEl2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
Bnon_trainable_variables
Clayer_metrics
 regularization_losses
Dlayer_regularization_losses

Elayers
Fmetrics
!	variables
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
?
%trainable_variables
Gnon_trainable_variables
Hlayer_metrics
&regularization_losses
Ilayer_regularization_losses

Jlayers
Kmetrics
'	variables
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
*
0
1
2
3
4
5

L0
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
	Mtotal
	Ncount
O	variables
P	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

O	variables
}
VARIABLE_VALUERMSprop/l0/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUERMSprop/l0/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUERMSprop/l1/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUERMSprop/l1/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUERMSprop/l2/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUERMSprop/l2/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_16/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_16/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_6Placeholder*/
_output_shapes
:?????????	*
dtype0*$
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6	l0/kernell0/bias	l1/kernell1/bias	l2/kernell2/biasdense_16/kerneldense_16/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_102213
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamel0/kernel/Read/ReadVariableOpl0/bias/Read/ReadVariableOpl1/kernel/Read/ReadVariableOpl1/bias/Read/ReadVariableOpl2/kernel/Read/ReadVariableOpl2/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)RMSprop/l0/kernel/rms/Read/ReadVariableOp'RMSprop/l0/bias/rms/Read/ReadVariableOp)RMSprop/l1/kernel/rms/Read/ReadVariableOp'RMSprop/l1/bias/rms/Read/ReadVariableOp)RMSprop/l2/kernel/rms/Read/ReadVariableOp'RMSprop/l2/bias/rms/Read/ReadVariableOp/RMSprop/dense_16/kernel/rms/Read/ReadVariableOp-RMSprop/dense_16/bias/rms/Read/ReadVariableOpConst*$
Tin
2	*
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
__inference__traced_save_102503
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	l0/kernell0/bias	l1/kernell1/bias	l2/kernell2/biasdense_16/kerneldense_16/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcountRMSprop/l0/kernel/rmsRMSprop/l0/bias/rmsRMSprop/l1/kernel/rmsRMSprop/l1/bias/rmsRMSprop/l2/kernel/rmsRMSprop/l2/bias/rmsRMSprop/dense_16/kernel/rmsRMSprop/dense_16/bias/rms*#
Tin
2*
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
"__inference__traced_restore_102582ω
?
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102117

inputs
	l0_102096
	l0_102098
	l1_102101
	l1_102103
	l2_102106
	l2_102108
dense_16_102111
dense_16_102113
identity?? dense_16/StatefulPartitionedCall?l0/StatefulPartitionedCall?l1/StatefulPartitionedCall?l2/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_1019482
flatten_5/PartitionedCall?
l0/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0	l0_102096	l0_102098*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l0_layer_call_and_return_conditional_losses_1019672
l0/StatefulPartitionedCall?
l1/StatefulPartitionedCallStatefulPartitionedCall#l0/StatefulPartitionedCall:output:0	l1_102101	l1_102103*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l1_layer_call_and_return_conditional_losses_1019942
l1/StatefulPartitionedCall?
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0	l2_102106	l2_102108*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l2_layer_call_and_return_conditional_losses_1020212
l2/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0dense_16_102111dense_16_102113*
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
GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1020472"
 dense_16/StatefulPartitionedCall?
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0!^dense_16/StatefulPartitionedCall^l0/StatefulPartitionedCall^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall28
l0/StatefulPartitionedCalll0/StatefulPartitionedCall28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?$
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102279

inputs%
!l0_matmul_readvariableop_resource&
"l0_biasadd_readvariableop_resource%
!l1_matmul_readvariableop_resource&
"l1_biasadd_readvariableop_resource%
!l2_matmul_readvariableop_resource&
"l2_biasadd_readvariableop_resource+
'dense_16_matmul_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource
identity??dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?l0/BiasAdd/ReadVariableOp?l0/MatMul/ReadVariableOp?l1/BiasAdd/ReadVariableOp?l1/MatMul/ReadVariableOp?l2/BiasAdd/ReadVariableOp?l2/MatMul/ReadVariableOps
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_5/Const?
flatten_5/ReshapeReshapeinputsflatten_5/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_5/Reshape?
l0/MatMul/ReadVariableOpReadVariableOp!l0_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02
l0/MatMul/ReadVariableOp?
	l0/MatMulMatMulflatten_5/Reshape:output:0 l0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l0/MatMul?
l0/BiasAdd/ReadVariableOpReadVariableOp"l0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l0/BiasAdd/ReadVariableOp?

l0/BiasAddBiasAddl0/MatMul:product:0!l0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l0/BiasAddb
l0/ReluRelul0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l0/Relu?
l1/MatMul/ReadVariableOpReadVariableOp!l1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
l1/MatMul/ReadVariableOp?
	l1/MatMulMatMull0/Relu:activations:0 l1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l1/MatMul?
l1/BiasAdd/ReadVariableOpReadVariableOp"l1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l1/BiasAdd/ReadVariableOp?

l1/BiasAddBiasAddl1/MatMul:product:0!l1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l1/BiasAddb
l1/ReluRelul1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l1/Relu?
l2/MatMul/ReadVariableOpReadVariableOp!l2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
l2/MatMul/ReadVariableOp?
	l2/MatMulMatMull1/Relu:activations:0 l2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l2/MatMul?
l2/BiasAdd/ReadVariableOpReadVariableOp"l2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l2/BiasAdd/ReadVariableOp?

l2/BiasAddBiasAddl2/MatMul:product:0!l2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l2/BiasAddb
l2/TanhTanhl2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l2/Tanh?
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_16/MatMul/ReadVariableOp?
dense_16/MatMulMatMull2/Tanh:y:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/MatMul?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/BiasAdd?
IdentityIdentitydense_16/BiasAdd:output:0 ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^l0/BiasAdd/ReadVariableOp^l0/MatMul/ReadVariableOp^l1/BiasAdd/ReadVariableOp^l1/MatMul/ReadVariableOp^l2/BiasAdd/ReadVariableOp^l2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp26
l0/BiasAdd/ReadVariableOpl0/BiasAdd/ReadVariableOp24
l0/MatMul/ReadVariableOpl0/MatMul/ReadVariableOp26
l1/BiasAdd/ReadVariableOpl1/BiasAdd/ReadVariableOp24
l1/MatMul/ReadVariableOpl1/MatMul/ReadVariableOp26
l2/BiasAdd/ReadVariableOpl2/BiasAdd/ReadVariableOp24
l2/MatMul/ReadVariableOpl2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?$
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102246

inputs%
!l0_matmul_readvariableop_resource&
"l0_biasadd_readvariableop_resource%
!l1_matmul_readvariableop_resource&
"l1_biasadd_readvariableop_resource%
!l2_matmul_readvariableop_resource&
"l2_biasadd_readvariableop_resource+
'dense_16_matmul_readvariableop_resource,
(dense_16_biasadd_readvariableop_resource
identity??dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?l0/BiasAdd/ReadVariableOp?l0/MatMul/ReadVariableOp?l1/BiasAdd/ReadVariableOp?l1/MatMul/ReadVariableOp?l2/BiasAdd/ReadVariableOp?l2/MatMul/ReadVariableOps
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_5/Const?
flatten_5/ReshapeReshapeinputsflatten_5/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_5/Reshape?
l0/MatMul/ReadVariableOpReadVariableOp!l0_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02
l0/MatMul/ReadVariableOp?
	l0/MatMulMatMulflatten_5/Reshape:output:0 l0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l0/MatMul?
l0/BiasAdd/ReadVariableOpReadVariableOp"l0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l0/BiasAdd/ReadVariableOp?

l0/BiasAddBiasAddl0/MatMul:product:0!l0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l0/BiasAddb
l0/ReluRelul0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l0/Relu?
l1/MatMul/ReadVariableOpReadVariableOp!l1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
l1/MatMul/ReadVariableOp?
	l1/MatMulMatMull0/Relu:activations:0 l1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l1/MatMul?
l1/BiasAdd/ReadVariableOpReadVariableOp"l1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l1/BiasAdd/ReadVariableOp?

l1/BiasAddBiasAddl1/MatMul:product:0!l1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l1/BiasAddb
l1/ReluRelul1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l1/Relu?
l2/MatMul/ReadVariableOpReadVariableOp!l2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
l2/MatMul/ReadVariableOp?
	l2/MatMulMatMull1/Relu:activations:0 l2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	l2/MatMul?
l2/BiasAdd/ReadVariableOpReadVariableOp"l2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
l2/BiasAdd/ReadVariableOp?

l2/BiasAddBiasAddl2/MatMul:product:0!l2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

l2/BiasAddb
l2/TanhTanhl2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
l2/Tanh?
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_16/MatMul/ReadVariableOp?
dense_16/MatMulMatMull2/Tanh:y:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/MatMul?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/BiasAdd?
IdentityIdentitydense_16/BiasAdd:output:0 ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^l0/BiasAdd/ReadVariableOp^l0/MatMul/ReadVariableOp^l1/BiasAdd/ReadVariableOp^l1/MatMul/ReadVariableOp^l2/BiasAdd/ReadVariableOp^l2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp26
l0/BiasAdd/ReadVariableOpl0/BiasAdd/ReadVariableOp24
l0/MatMul/ReadVariableOpl0/MatMul/ReadVariableOp26
l1/BiasAdd/ReadVariableOpl1/BiasAdd/ReadVariableOp24
l1/MatMul/ReadVariableOpl1/MatMul/ReadVariableOp26
l2/BiasAdd/ReadVariableOpl2/BiasAdd/ReadVariableOp24
l2/MatMul/ReadVariableOpl2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
>__inference_l0_layer_call_and_return_conditional_losses_101967

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
D__inference_dense_16_layer_call_and_return_conditional_losses_102402

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_102213
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1019382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_102327

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????	2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
>__inference_l1_layer_call_and_return_conditional_losses_102363

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_101948

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????	2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
x
#__inference_l2_layer_call_fn_102392

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l2_layer_call_and_return_conditional_losses_1020212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?a
?
"__inference__traced_restore_102582
file_prefix
assignvariableop_l0_kernel
assignvariableop_1_l0_bias 
assignvariableop_2_l1_kernel
assignvariableop_3_l1_bias 
assignvariableop_4_l2_kernel
assignvariableop_5_l2_bias&
"assignvariableop_6_dense_16_kernel$
 assignvariableop_7_dense_16_bias#
assignvariableop_8_rmsprop_iter$
 assignvariableop_9_rmsprop_decay-
)assignvariableop_10_rmsprop_learning_rate(
$assignvariableop_11_rmsprop_momentum#
assignvariableop_12_rmsprop_rho
assignvariableop_13_total
assignvariableop_14_count-
)assignvariableop_15_rmsprop_l0_kernel_rms+
'assignvariableop_16_rmsprop_l0_bias_rms-
)assignvariableop_17_rmsprop_l1_kernel_rms+
'assignvariableop_18_rmsprop_l1_bias_rms-
)assignvariableop_19_rmsprop_l2_kernel_rms+
'assignvariableop_20_rmsprop_l2_bias_rms3
/assignvariableop_21_rmsprop_dense_16_kernel_rms1
-assignvariableop_22_rmsprop_dense_16_bias_rms
identity_24??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_l0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_l0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_l1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_l1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_l2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_l2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_rmsprop_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_rmsprop_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_rmsprop_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp$assignvariableop_11_rmsprop_momentumIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_rmsprop_rhoIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_rmsprop_l0_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_rmsprop_l0_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_rmsprop_l1_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_rmsprop_l1_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_rmsprop_l2_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_rmsprop_l2_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_rmsprop_dense_16_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_rmsprop_dense_16_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_229
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_23?
Identity_24IdentityIdentity_23:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_24"#
identity_24Identity_24:output:0*q
_input_shapes`
^: :::::::::::::::::::::::2$
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
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
?
F
*__inference_flatten_5_layer_call_fn_102332

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
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_1019482
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
%__inference_Z_NN_layer_call_fn_102136
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Z_NN_layer_call_and_return_conditional_losses_1021172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6
?	
?
>__inference_l0_layer_call_and_return_conditional_losses_102343

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
%__inference_Z_NN_layer_call_fn_102300

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Z_NN_layer_call_and_return_conditional_losses_1021172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
%__inference_Z_NN_layer_call_fn_102182
input_6
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Z_NN_layer_call_and_return_conditional_losses_1021632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6
?
?
%__inference_Z_NN_layer_call_fn_102321

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Z_NN_layer_call_and_return_conditional_losses_1021632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
x
#__inference_l0_layer_call_fn_102352

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l0_layer_call_and_return_conditional_losses_1019672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
>__inference_l1_layer_call_and_return_conditional_losses_101994

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
>__inference_l2_layer_call_and_return_conditional_losses_102021

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
>__inference_l2_layer_call_and_return_conditional_losses_102383

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?(
?
!__inference__wrapped_model_101938
input_6*
&z_nn_l0_matmul_readvariableop_resource+
'z_nn_l0_biasadd_readvariableop_resource*
&z_nn_l1_matmul_readvariableop_resource+
'z_nn_l1_biasadd_readvariableop_resource*
&z_nn_l2_matmul_readvariableop_resource+
'z_nn_l2_biasadd_readvariableop_resource0
,z_nn_dense_16_matmul_readvariableop_resource1
-z_nn_dense_16_biasadd_readvariableop_resource
identity??$Z_NN/dense_16/BiasAdd/ReadVariableOp?#Z_NN/dense_16/MatMul/ReadVariableOp?Z_NN/l0/BiasAdd/ReadVariableOp?Z_NN/l0/MatMul/ReadVariableOp?Z_NN/l1/BiasAdd/ReadVariableOp?Z_NN/l1/MatMul/ReadVariableOp?Z_NN/l2/BiasAdd/ReadVariableOp?Z_NN/l2/MatMul/ReadVariableOp}
Z_NN/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
Z_NN/flatten_5/Const?
Z_NN/flatten_5/ReshapeReshapeinput_6Z_NN/flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????	2
Z_NN/flatten_5/Reshape?
Z_NN/l0/MatMul/ReadVariableOpReadVariableOp&z_nn_l0_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02
Z_NN/l0/MatMul/ReadVariableOp?
Z_NN/l0/MatMulMatMulZ_NN/flatten_5/Reshape:output:0%Z_NN/l0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l0/MatMul?
Z_NN/l0/BiasAdd/ReadVariableOpReadVariableOp'z_nn_l0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Z_NN/l0/BiasAdd/ReadVariableOp?
Z_NN/l0/BiasAddBiasAddZ_NN/l0/MatMul:product:0&Z_NN/l0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l0/BiasAddq
Z_NN/l0/ReluReluZ_NN/l0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Z_NN/l0/Relu?
Z_NN/l1/MatMul/ReadVariableOpReadVariableOp&z_nn_l1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Z_NN/l1/MatMul/ReadVariableOp?
Z_NN/l1/MatMulMatMulZ_NN/l0/Relu:activations:0%Z_NN/l1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l1/MatMul?
Z_NN/l1/BiasAdd/ReadVariableOpReadVariableOp'z_nn_l1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Z_NN/l1/BiasAdd/ReadVariableOp?
Z_NN/l1/BiasAddBiasAddZ_NN/l1/MatMul:product:0&Z_NN/l1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l1/BiasAddq
Z_NN/l1/ReluReluZ_NN/l1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Z_NN/l1/Relu?
Z_NN/l2/MatMul/ReadVariableOpReadVariableOp&z_nn_l2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Z_NN/l2/MatMul/ReadVariableOp?
Z_NN/l2/MatMulMatMulZ_NN/l1/Relu:activations:0%Z_NN/l2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l2/MatMul?
Z_NN/l2/BiasAdd/ReadVariableOpReadVariableOp'z_nn_l2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Z_NN/l2/BiasAdd/ReadVariableOp?
Z_NN/l2/BiasAddBiasAddZ_NN/l2/MatMul:product:0&Z_NN/l2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Z_NN/l2/BiasAddq
Z_NN/l2/TanhTanhZ_NN/l2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Z_NN/l2/Tanh?
#Z_NN/dense_16/MatMul/ReadVariableOpReadVariableOp,z_nn_dense_16_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#Z_NN/dense_16/MatMul/ReadVariableOp?
Z_NN/dense_16/MatMulMatMulZ_NN/l2/Tanh:y:0+Z_NN/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Z_NN/dense_16/MatMul?
$Z_NN/dense_16/BiasAdd/ReadVariableOpReadVariableOp-z_nn_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$Z_NN/dense_16/BiasAdd/ReadVariableOp?
Z_NN/dense_16/BiasAddBiasAddZ_NN/dense_16/MatMul:product:0,Z_NN/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Z_NN/dense_16/BiasAdd?
IdentityIdentityZ_NN/dense_16/BiasAdd:output:0%^Z_NN/dense_16/BiasAdd/ReadVariableOp$^Z_NN/dense_16/MatMul/ReadVariableOp^Z_NN/l0/BiasAdd/ReadVariableOp^Z_NN/l0/MatMul/ReadVariableOp^Z_NN/l1/BiasAdd/ReadVariableOp^Z_NN/l1/MatMul/ReadVariableOp^Z_NN/l2/BiasAdd/ReadVariableOp^Z_NN/l2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2L
$Z_NN/dense_16/BiasAdd/ReadVariableOp$Z_NN/dense_16/BiasAdd/ReadVariableOp2J
#Z_NN/dense_16/MatMul/ReadVariableOp#Z_NN/dense_16/MatMul/ReadVariableOp2@
Z_NN/l0/BiasAdd/ReadVariableOpZ_NN/l0/BiasAdd/ReadVariableOp2>
Z_NN/l0/MatMul/ReadVariableOpZ_NN/l0/MatMul/ReadVariableOp2@
Z_NN/l1/BiasAdd/ReadVariableOpZ_NN/l1/BiasAdd/ReadVariableOp2>
Z_NN/l1/MatMul/ReadVariableOpZ_NN/l1/MatMul/ReadVariableOp2@
Z_NN/l2/BiasAdd/ReadVariableOpZ_NN/l2/BiasAdd/ReadVariableOp2>
Z_NN/l2/MatMul/ReadVariableOpZ_NN/l2/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6
?6
?	
__inference__traced_save_102503
file_prefix(
$savev2_l0_kernel_read_readvariableop&
"savev2_l0_bias_read_readvariableop(
$savev2_l1_kernel_read_readvariableop&
"savev2_l1_bias_read_readvariableop(
$savev2_l2_kernel_read_readvariableop&
"savev2_l2_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_rmsprop_l0_kernel_rms_read_readvariableop2
.savev2_rmsprop_l0_bias_rms_read_readvariableop4
0savev2_rmsprop_l1_kernel_rms_read_readvariableop2
.savev2_rmsprop_l1_bias_rms_read_readvariableop4
0savev2_rmsprop_l2_kernel_rms_read_readvariableop2
.savev2_rmsprop_l2_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_16_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_16_bias_rms_read_readvariableop
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
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_l0_kernel_read_readvariableop"savev2_l0_bias_read_readvariableop$savev2_l1_kernel_read_readvariableop"savev2_l1_bias_read_readvariableop$savev2_l2_kernel_read_readvariableop"savev2_l2_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_rmsprop_l0_kernel_rms_read_readvariableop.savev2_rmsprop_l0_bias_rms_read_readvariableop0savev2_rmsprop_l1_kernel_rms_read_readvariableop.savev2_rmsprop_l1_bias_rms_read_readvariableop0savev2_rmsprop_l2_kernel_rms_read_readvariableop.savev2_rmsprop_l2_bias_rms_read_readvariableop6savev2_rmsprop_dense_16_kernel_rms_read_readvariableop4savev2_rmsprop_dense_16_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *&
dtypes
2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :		?:?:
??:?:
??:?:	?:: : : : : : : :		?:?:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:		?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:		?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102089
input_6
	l0_102068
	l0_102070
	l1_102073
	l1_102075
	l2_102078
	l2_102080
dense_16_102083
dense_16_102085
identity?? dense_16/StatefulPartitionedCall?l0/StatefulPartitionedCall?l1/StatefulPartitionedCall?l2/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCallinput_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_1019482
flatten_5/PartitionedCall?
l0/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0	l0_102068	l0_102070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l0_layer_call_and_return_conditional_losses_1019672
l0/StatefulPartitionedCall?
l1/StatefulPartitionedCallStatefulPartitionedCall#l0/StatefulPartitionedCall:output:0	l1_102073	l1_102075*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l1_layer_call_and_return_conditional_losses_1019942
l1/StatefulPartitionedCall?
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0	l2_102078	l2_102080*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l2_layer_call_and_return_conditional_losses_1020212
l2/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0dense_16_102083dense_16_102085*
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
GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1020472"
 dense_16/StatefulPartitionedCall?
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0!^dense_16/StatefulPartitionedCall^l0/StatefulPartitionedCall^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall28
l0/StatefulPartitionedCalll0/StatefulPartitionedCall28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6
?	
?
D__inference_dense_16_layer_call_and_return_conditional_losses_102047

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_16_layer_call_fn_102411

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
GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1020472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
x
#__inference_l1_layer_call_fn_102372

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l1_layer_call_and_return_conditional_losses_1019942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102163

inputs
	l0_102142
	l0_102144
	l1_102147
	l1_102149
	l2_102152
	l2_102154
dense_16_102157
dense_16_102159
identity?? dense_16/StatefulPartitionedCall?l0/StatefulPartitionedCall?l1/StatefulPartitionedCall?l2/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_1019482
flatten_5/PartitionedCall?
l0/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0	l0_102142	l0_102144*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l0_layer_call_and_return_conditional_losses_1019672
l0/StatefulPartitionedCall?
l1/StatefulPartitionedCallStatefulPartitionedCall#l0/StatefulPartitionedCall:output:0	l1_102147	l1_102149*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l1_layer_call_and_return_conditional_losses_1019942
l1/StatefulPartitionedCall?
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0	l2_102152	l2_102154*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l2_layer_call_and_return_conditional_losses_1020212
l2/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0dense_16_102157dense_16_102159*
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
GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1020472"
 dense_16/StatefulPartitionedCall?
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0!^dense_16/StatefulPartitionedCall^l0/StatefulPartitionedCall^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall28
l0/StatefulPartitionedCalll0/StatefulPartitionedCall28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102064
input_6
	l0_101978
	l0_101980
	l1_102005
	l1_102007
	l2_102032
	l2_102034
dense_16_102058
dense_16_102060
identity?? dense_16/StatefulPartitionedCall?l0/StatefulPartitionedCall?l1/StatefulPartitionedCall?l2/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCallinput_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_1019482
flatten_5/PartitionedCall?
l0/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0	l0_101978	l0_101980*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l0_layer_call_and_return_conditional_losses_1019672
l0/StatefulPartitionedCall?
l1/StatefulPartitionedCallStatefulPartitionedCall#l0/StatefulPartitionedCall:output:0	l1_102005	l1_102007*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l1_layer_call_and_return_conditional_losses_1019942
l1/StatefulPartitionedCall?
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0	l2_102032	l2_102034*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l2_layer_call_and_return_conditional_losses_1020212
l2/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0dense_16_102058dense_16_102060*
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
GPU 2J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_1020472"
 dense_16/StatefulPartitionedCall?
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0!^dense_16/StatefulPartitionedCall^l0/StatefulPartitionedCall^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:?????????	::::::::2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall28
l0/StatefulPartitionedCalll0/StatefulPartitionedCall28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????	
!
_user_specified_name	input_6"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_68
serving_default_input_6:0?????????	<
dense_160
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?0
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
*Y&call_and_return_all_conditional_losses
Z__call__
[_default_save_signature"?-
_tf_keras_network?-{"class_name": "Functional", "name": "Z_NN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "Z_NN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 1, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l0", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l0", "inbound_nodes": [[["flatten_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l1", "inbound_nodes": [[["l0", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l2", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l2", "inbound_nodes": [[["l1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["l2", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["dense_16", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 9, 1, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 1, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Z_NN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 1, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l0", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l0", "inbound_nodes": [[["flatten_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l1", "inbound_nodes": [[["l0", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "l2", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "l2", "inbound_nodes": [[["l1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_16", "inbound_nodes": [[["l2", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["dense_16", 0, 0]]}}, "training_config": {"loss": "mean_absolute_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 1, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9, 1, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}
?
trainable_variables
regularization_losses
	variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*^&call_and_return_all_conditional_losses
___call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "l0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l0", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "l1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
trainable_variables
 regularization_losses
!	variables
"	keras_api
*b&call_and_return_all_conditional_losses
c__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "l2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l2", "trainable": true, "dtype": "float32", "units": 200, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
*d&call_and_return_all_conditional_losses
e__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?
)iter
	*decay
+learning_rate
,momentum
-rho	rmsQ	rmsR	rmsS	rmsT	rmsU	rmsV	#rmsW	$rmsX"
	optimizer
X
0
1
2
3
4
5
#6
$7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
#6
$7"
trackable_list_wrapper
?
trainable_variables
.non_trainable_variables
/layer_metrics
	regularization_losses
0layer_regularization_losses

1layers
2metrics

	variables
Z__call__
[_default_save_signature
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
,
fserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
3non_trainable_variables
4layer_metrics
regularization_losses
5layer_regularization_losses

6layers
7metrics
	variables
]__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
:		?2	l0/kernel
:?2l0/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
8non_trainable_variables
9layer_metrics
regularization_losses
:layer_regularization_losses

;layers
<metrics
	variables
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:
??2	l1/kernel
:?2l1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
=non_trainable_variables
>layer_metrics
regularization_losses
?layer_regularization_losses

@layers
Ametrics
	variables
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:
??2	l2/kernel
:?2l2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
Bnon_trainable_variables
Clayer_metrics
 regularization_losses
Dlayer_regularization_losses

Elayers
Fmetrics
!	variables
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_16/kernel
:2dense_16/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
%trainable_variables
Gnon_trainable_variables
Hlayer_metrics
&regularization_losses
Ilayer_regularization_losses

Jlayers
Kmetrics
'	variables
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
'
L0"
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
?
	Mtotal
	Ncount
O	variables
P	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
&:$		?2RMSprop/l0/kernel/rms
 :?2RMSprop/l0/bias/rms
':%
??2RMSprop/l1/kernel/rms
 :?2RMSprop/l1/bias/rms
':%
??2RMSprop/l2/kernel/rms
 :?2RMSprop/l2/bias/rms
,:*	?2RMSprop/dense_16/kernel/rms
%:#2RMSprop/dense_16/bias/rms
?2?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102279
@__inference_Z_NN_layer_call_and_return_conditional_losses_102246
@__inference_Z_NN_layer_call_and_return_conditional_losses_102064
@__inference_Z_NN_layer_call_and_return_conditional_losses_102089?
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
%__inference_Z_NN_layer_call_fn_102136
%__inference_Z_NN_layer_call_fn_102321
%__inference_Z_NN_layer_call_fn_102182
%__inference_Z_NN_layer_call_fn_102300?
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
!__inference__wrapped_model_101938?
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
annotations? *.?+
)?&
input_6?????????	
?2?
E__inference_flatten_5_layer_call_and_return_conditional_losses_102327?
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
*__inference_flatten_5_layer_call_fn_102332?
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
>__inference_l0_layer_call_and_return_conditional_losses_102343?
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
#__inference_l0_layer_call_fn_102352?
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
>__inference_l1_layer_call_and_return_conditional_losses_102363?
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
#__inference_l1_layer_call_fn_102372?
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
>__inference_l2_layer_call_and_return_conditional_losses_102383?
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
#__inference_l2_layer_call_fn_102392?
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
D__inference_dense_16_layer_call_and_return_conditional_losses_102402?
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
)__inference_dense_16_layer_call_fn_102411?
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
$__inference_signature_wrapper_102213input_6"?
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
@__inference_Z_NN_layer_call_and_return_conditional_losses_102064s#$@?=
6?3
)?&
input_6?????????	
p

 
? "%?"
?
0?????????
? ?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102089s#$@?=
6?3
)?&
input_6?????????	
p 

 
? "%?"
?
0?????????
? ?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102246r#$??<
5?2
(?%
inputs?????????	
p

 
? "%?"
?
0?????????
? ?
@__inference_Z_NN_layer_call_and_return_conditional_losses_102279r#$??<
5?2
(?%
inputs?????????	
p 

 
? "%?"
?
0?????????
? ?
%__inference_Z_NN_layer_call_fn_102136f#$@?=
6?3
)?&
input_6?????????	
p

 
? "???????????
%__inference_Z_NN_layer_call_fn_102182f#$@?=
6?3
)?&
input_6?????????	
p 

 
? "???????????
%__inference_Z_NN_layer_call_fn_102300e#$??<
5?2
(?%
inputs?????????	
p

 
? "???????????
%__inference_Z_NN_layer_call_fn_102321e#$??<
5?2
(?%
inputs?????????	
p 

 
? "???????????
!__inference__wrapped_model_101938y#$8?5
.?+
)?&
input_6?????????	
? "3?0
.
dense_16"?
dense_16??????????
D__inference_dense_16_layer_call_and_return_conditional_losses_102402]#$0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_16_layer_call_fn_102411P#$0?-
&?#
!?
inputs??????????
? "???????????
E__inference_flatten_5_layer_call_and_return_conditional_losses_102327`7?4
-?*
(?%
inputs?????????	
? "%?"
?
0?????????	
? ?
*__inference_flatten_5_layer_call_fn_102332S7?4
-?*
(?%
inputs?????????	
? "??????????	?
>__inference_l0_layer_call_and_return_conditional_losses_102343]/?,
%?"
 ?
inputs?????????	
? "&?#
?
0??????????
? w
#__inference_l0_layer_call_fn_102352P/?,
%?"
 ?
inputs?????????	
? "????????????
>__inference_l1_layer_call_and_return_conditional_losses_102363^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
#__inference_l1_layer_call_fn_102372Q0?-
&?#
!?
inputs??????????
? "????????????
>__inference_l2_layer_call_and_return_conditional_losses_102383^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
#__inference_l2_layer_call_fn_102392Q0?-
&?#
!?
inputs??????????
? "????????????
$__inference_signature_wrapper_102213?#$C?@
? 
9?6
4
input_6)?&
input_6?????????	"3?0
.
dense_16"?
dense_16?????????