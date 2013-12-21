# myExchange example #
# preliminaries #
library(rJava)
.jinit()
.jaddClassPath("/Users/user/Documents/workspace/HelloWorld/bin")
.jclassPath()
myExchange <- .jnew("myExchange")

# strings #
stringTest <- .jcall(myExchange, "S", "getString")
stringArrayTest <- .jcall(myExchange, "[S", "getStringArray")
stringMatrixTest <- .jcall(myExchange, "[[S", "getStringMatrix", simplify=T)	# returns error
stringTest; stringArrayTest

# doubles #
doubleTest <- .jcall(myExchange, "D", "getdouble")
doubleArrayTest <- .jcall(myExchange, "[D", "getdoubleArray")
doubleMatrixTest <- .jcall(myExchange, "[[D", "getdoubleMatrix", simplify=T)
doubleTest; doubleArrayTest; doubleMatrixTest

# integers #
intTest <- .jcall(myExchange, "I", "getInt")
intArrayTest <- .jcall(myExchange, "[I", "getIntArray")
intMatrixTest <- .jcall(myExchange, "[[I", "getIntMatrix", simplify=T)
intTest; intArrayTest; intMatrixTest

# boolean #
booleanTest <- .jcall(myExchange, "Z", "getboolean")
booleanArrayTest <- .jcall(myExchange, "[Z", "getbooleanArray")
booleanMatrixTest <- .jcall(myExchange, "[[Z", "getbooleanMatrix", simplify=T)
booleanTest; booleanArrayTest; booleanMatrixTest

# other #
staticTest <- .jcall(myExchange, "S", "callStaticFunction")
staticTest2 <- .jcall(myExchange, "[[S", "callStaticFunction2")		# returns error