.class public Lgnu/xquery/util/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"


# static fields
.field static final castMethod:Lgnu/bytecode/Method;

.field static final castableMethod:Lgnu/bytecode/Method;

.field static final typeTuples:Lgnu/bytecode/ClassType;

.field static final typeXDataType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    const-string v0, "gnu.xquery.util.OrderedTuples"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    .line 365
    const-string v0, "gnu.kawa.xml.XDataType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string v1, "cast"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    .line 383
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string v1, "castable"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 11
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v3, 0x1

    .line 345
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 346
    .local v6, "args":[Lgnu/expr/Expression;
    array-length v0, v6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 348
    invoke-static {p0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 363
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 352
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v10

    .line 353
    .local v10, "scope":Lgnu/bytecode/Scope;
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    invoke-virtual {v10, v7, v0, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 354
    .local v8, "consumer":Lgnu/bytecode/Variable;
    aget-object v0, v6, v3

    sget-object v2, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 355
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 356
    new-instance v9, Lgnu/expr/ConsumerTarget;

    invoke-direct {v9, v8}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 357
    .local v9, "ctarget":Lgnu/expr/ConsumerTarget;
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v0, p1, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 358
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string v2, "run$X"

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 359
    .local v1, "mm":Lgnu/bytecode/Method;
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v3

    const/16 v4, 0xb6

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    .line 362
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto :goto_0
.end method

.method public static validateApplyCastAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v4, 0x0

    .line 372
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 373
    invoke-static {p0, v4, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 375
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v4

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_1

    .line 380
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    :goto_0
    return-object p0

    .line 377
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    aget-object v2, v0, v4

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/kawa/xml/XDataType;

    if-eqz v2, :cond_0

    .line 379
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    sget-object v2, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    invoke-direct {p0, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0
.end method

.method public static validateApplyCastableAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 390
    invoke-static {p0, v5, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 392
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v2, v0

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v5

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_1

    .line 398
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    :goto_0
    return-object p0

    .line 394
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    aget-object v2, v0, v5

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/kawa/xml/XDataType;

    if-eqz v2, :cond_0

    .line 396
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    sget-object v2, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    new-array v3, v3, [Lgnu/expr/Expression;

    aget-object v4, v0, v5

    aput-object v4, v3, v6

    aget-object v4, v0, v6

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0
.end method

.method public static validateApplyOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 325
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 326
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 327
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v4, v0

    if-le v4, v7, :cond_0

    .line 329
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [Lgnu/expr/Expression;

    .line 330
    .local v2, "rargs":[Lgnu/expr/Expression;
    array-length v4, v2

    invoke-static {v0, v8, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    new-array v3, v7, [Lgnu/expr/Expression;

    .line 332
    .local v3, "xargs":[Lgnu/expr/Expression;
    sget-object v4, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string v5, "make$V"

    invoke-virtual {v4, v5, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 333
    .local v1, "makeTupleMethod":Lgnu/bytecode/Method;
    aget-object v4, v0, v6

    aput-object v4, v3, v6

    .line 334
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v4, v3, v8

    .line 335
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    invoke-direct {p0, p3, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 337
    .end local v1    # "makeTupleMethod":Lgnu/bytecode/Method;
    .end local v2    # "rargs":[Lgnu/expr/Expression;
    .end local v3    # "xargs":[Lgnu/expr/Expression;
    :cond_0
    return-object p0
.end method

.method public static validateApplyRelativeStep(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 40
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 192
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 194
    .local v5, "args":[Lgnu/expr/Expression;
    const/16 v35, 0x0

    aget-object v9, v5, v35

    .line 195
    .local v9, "exp1":Lgnu/expr/Expression;
    const/16 v35, 0x1

    aget-object v11, v5, v35

    .line 197
    .local v11, "exp2":Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    .line 198
    .local v6, "comp":Lgnu/expr/Compilation;
    instance-of v0, v11, Lgnu/expr/LambdaExp;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    iget-boolean v0, v6, Lgnu/expr/Compilation;->mustCompile:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v17, v11

    check-cast v17, Lgnu/expr/LambdaExp;

    .local v17, "lexp2":Lgnu/expr/LambdaExp;
    move-object/from16 v0, v17

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .end local v17    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_0
    move-object/from16 v26, p0

    .line 319
    :cond_1
    :goto_0
    return-object v26

    .line 206
    .restart local v17    # "lexp2":Lgnu/expr/LambdaExp;
    :cond_2
    const/16 v35, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 208
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 210
    move-object/from16 v0, v17

    iget-object v11, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 212
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v8

    .line 213
    .local v8, "dotArg":Lgnu/expr/Declaration;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v24

    .line 214
    .local v24, "posArg":Lgnu/expr/Declaration;
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v13

    .line 217
    .local v13, "lastArg":Lgnu/expr/Declaration;
    invoke-virtual {v13}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 218
    const/16 v35, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 219
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 220
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 222
    invoke-virtual {v9}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v31

    .line 223
    .local v31, "type1":Lgnu/bytecode/Type;
    if-eqz v31, :cond_3

    sget-object v35, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v35

    const/16 v36, -0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 225
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v12

    .line 226
    .local v12, "language":Lgnu/expr/Language;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "step input is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " - not a node sequence"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 227
    .local v19, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v35

    const/16 v36, 0x65

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 228
    new-instance v26, Lgnu/expr/ErrorExp;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v12    # "language":Lgnu/expr/Language;
    .end local v19    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v27

    .line 234
    .local v27, "rtype":Lgnu/bytecode/Type;
    if-eqz v27, :cond_4

    sget-object v35, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 236
    :cond_4
    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v32

    .line 237
    .local v32, "type2":Lgnu/bytecode/Type;
    invoke-static/range {v32 .. v32}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v28

    .line 238
    .local v28, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v35, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v20

    .line 239
    .local v20, "nodeCompare":I
    if-ltz v20, :cond_6

    .line 240
    invoke-static/range {v28 .. v28}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v27

    .line 243
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 245
    .end local v20    # "nodeCompare":I
    .end local v28    # "rtypePrime":Lgnu/bytecode/Type;
    .end local v32    # "type2":Lgnu/bytecode/Type;
    :cond_5
    invoke-virtual {v13}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v35

    if-eqz v35, :cond_7

    .line 247
    sget-object v33, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    .line 248
    .local v33, "typeNodes":Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/expr/Compilation;->letStart()V

    .line 249
    const/16 v35, 0x0

    new-instance v36, Lgnu/expr/ApplyExp;

    sget-object v37, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v9, v38, v39

    invoke-direct/range {v36 .. v38}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-virtual {v6, v0, v1, v2}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v29

    .line 253
    .local v29, "sequence":Lgnu/expr/Declaration;
    invoke-virtual {v6}, Lgnu/expr/Compilation;->letEnter()V

    .line 255
    const-string v35, "size"

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v30

    .line 256
    .local v30, "sizeMethod":Lgnu/bytecode/Method;
    new-instance v14, Lgnu/expr/ApplyExp;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v37, v35, v36

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v14, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 259
    .local v14, "lastInit":Lgnu/expr/Expression;
    new-instance v15, Lgnu/expr/LetExp;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v14, v35, v36

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 260
    .local v15, "lastLet":Lgnu/expr/LetExp;
    invoke-virtual {v15, v13}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 261
    new-instance v35, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v17, v37, v38

    invoke-direct/range {v35 .. v37}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v35

    iput-object v0, v15, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 264
    invoke-virtual {v6, v15}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v26

    goto/16 :goto_0

    .line 242
    .end local v14    # "lastInit":Lgnu/expr/Expression;
    .end local v15    # "lastLet":Lgnu/expr/LetExp;
    .end local v29    # "sequence":Lgnu/expr/Declaration;
    .end local v30    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v33    # "typeNodes":Lgnu/bytecode/ClassType;
    .restart local v20    # "nodeCompare":I
    .restart local v28    # "rtypePrime":Lgnu/bytecode/Type;
    .restart local v32    # "type2":Lgnu/bytecode/Type;
    :cond_6
    const/16 v35, 0x0

    const/16 v36, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v27

    goto/16 :goto_1

    .line 267
    .end local v20    # "nodeCompare":I
    .end local v28    # "rtypePrime":Lgnu/bytecode/Type;
    .end local v32    # "type2":Lgnu/bytecode/Type;
    :cond_7
    move-object/from16 v26, p0

    .line 271
    .local v26, "result":Lgnu/expr/ApplyExp;
    instance-of v0, v11, Lgnu/expr/ApplyExp;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    move-object v4, v11

    .line 273
    check-cast v4, Lgnu/expr/ApplyExp;

    .line 274
    .local v4, "aexp2":Lgnu/expr/ApplyExp;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    .line 276
    .local v25, "proc2":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/xquery/util/ValuesFilter;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v35

    const/16 v36, 0x1

    aget-object v34, v35, v36

    .local v34, "vexp2":Lgnu/expr/Expression;
    move-object/from16 v0, v34

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    move-object/from16 v18, v34

    .line 279
    check-cast v18, Lgnu/expr/LambdaExp;

    .line 280
    .local v18, "lvexp2":Lgnu/expr/LambdaExp;
    invoke-virtual/range {v18 .. v18}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 282
    .local v7, "dot2":Lgnu/expr/Declaration;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    .local v23, "pos2":Lgnu/expr/Declaration;
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    if-nez v35, :cond_8

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v35

    if-nez v35, :cond_8

    const-string v35, "java.lang.Number"

    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v35

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v35

    const/16 v36, -0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    .line 290
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v11

    .line 291
    move-object/from16 v0, v17

    iput-object v11, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 292
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 293
    move-object/from16 v26, v4

    .line 299
    .end local v4    # "aexp2":Lgnu/expr/ApplyExp;
    .end local v7    # "dot2":Lgnu/expr/Declaration;
    .end local v18    # "lvexp2":Lgnu/expr/LambdaExp;
    .end local v23    # "pos2":Lgnu/expr/Declaration;
    .end local v25    # "proc2":Ljava/lang/Object;
    .end local v34    # "vexp2":Lgnu/expr/Expression;
    :cond_8
    instance-of v0, v9, Lgnu/expr/ApplyExp;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    instance-of v0, v11, Lgnu/expr/ApplyExp;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    move-object v3, v9

    .line 301
    check-cast v3, Lgnu/expr/ApplyExp;

    .local v3, "aexp1":Lgnu/expr/ApplyExp;
    move-object v4, v11

    .line 302
    check-cast v4, Lgnu/expr/ApplyExp;

    .line 303
    .restart local v4    # "aexp2":Lgnu/expr/ApplyExp;
    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v21

    .line 304
    .local v21, "p1":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v22

    .line 306
    .local v22, "p2":Ljava/lang/Object;
    sget-object v35, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/kawa/xml/ChildAxis;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v10

    .local v10, "exp12":Lgnu/expr/Expression;
    instance-of v0, v10, Lgnu/expr/LambdaExp;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    move-object/from16 v16, v10

    .line 310
    check-cast v16, Lgnu/expr/LambdaExp;

    .line 311
    .local v16, "lexp12":Lgnu/expr/LambdaExp;
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v35, v0

    check-cast v35, Lgnu/expr/ApplyExp;

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v35

    sget-object v36, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 314
    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 315
    new-instance v35, Lgnu/expr/QuoteExp;

    check-cast v22, Lgnu/kawa/xml/ChildAxis;

    .end local v22    # "p2":Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Lgnu/kawa/xml/ChildAxis;->getNodePredicate()Lgnu/lists/NodePredicate;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lgnu/kawa/xml/DescendantAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    goto/16 :goto_0
.end method

.method public static validateApplyValuesFilter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 32
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 88
    move-object/from16 v26, p3

    check-cast v26, Lgnu/xquery/util/ValuesFilter;

    .line 89
    .local v26, "vproc":Lgnu/xquery/util/ValuesFilter;
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 91
    .local v4, "args":[Lgnu/expr/Expression;
    const/16 v27, 0x1

    aget-object v7, v4, v27

    .line 93
    .local v7, "exp2":Lgnu/expr/Expression;
    instance-of v0, v7, Lgnu/expr/LambdaExp;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object v14, v7

    check-cast v14, Lgnu/expr/LambdaExp;

    .local v14, "lexp2":Lgnu/expr/LambdaExp;
    iget v0, v14, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    iget v0, v14, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 185
    .end local v14    # "lexp2":Lgnu/expr/LambdaExp;
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    :goto_0
    return-object p0

    .line 98
    .restart local v14    # "lexp2":Lgnu/expr/LambdaExp;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1
    const/16 v27, 0x0

    aget-object v27, v4, v27

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v15

    .line 102
    .local v15, "parser":Lgnu/expr/Compilation;
    invoke-virtual {v14}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    .line 103
    .local v6, "dotArg":Lgnu/expr/Declaration;
    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v16

    .line 104
    .local v16, "posArg":Lgnu/expr/Declaration;
    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    .line 106
    .local v10, "lastArg":Lgnu/expr/Declaration;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 107
    move-object/from16 v0, p0

    iput-object v0, v14, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 111
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v10}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 112
    const/16 v27, 0x2

    move/from16 v0, v27

    iput v0, v14, Lgnu/expr/LambdaExp;->min_args:I

    .line 113
    const/16 v27, 0x2

    move/from16 v0, v27

    iput v0, v14, Lgnu/expr/LambdaExp;->max_args:I

    .line 115
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v27

    if-nez v27, :cond_2

    move-object/from16 v0, v26

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v27, v0

    const/16 v28, 0x52

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 121
    :cond_2
    invoke-virtual {v15}, Lgnu/expr/Compilation;->letStart()V

    .line 122
    const/16 v27, 0x0

    aget-object v21, v4, v27

    .line 125
    .local v21, "seq":Lgnu/expr/Expression;
    move-object/from16 v0, v26

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v27, v0

    const/16 v28, 0x50

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 127
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v23

    .line 128
    .local v23, "seqType":Lgnu/bytecode/Type;
    sget-object v27, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v28, "countValues"

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    .line 136
    .local v25, "sizeMethod":Lgnu/bytecode/Method;
    :goto_1
    const-string v27, "sequence"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v24

    .line 137
    .local v24, "sequence":Lgnu/expr/Declaration;
    invoke-virtual {v15}, Lgnu/expr/Compilation;->letEnter()V

    .line 139
    iget-object v0, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v18, v0

    .line 140
    .local v18, "pred":Lgnu/expr/Expression;
    iget-object v0, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v20

    .line 141
    .local v20, "predType":Lgnu/bytecode/Type;
    sget-object v27, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 142
    new-instance v19, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v18, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v30, v28, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .end local v18    # "pred":Lgnu/expr/Expression;
    .local v19, "pred":Lgnu/expr/Expression;
    move-object/from16 v18, v19

    .line 145
    .end local v19    # "pred":Lgnu/expr/Expression;
    .restart local v18    # "pred":Lgnu/expr/Expression;
    :cond_3
    move-object/from16 v0, v26

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v27, v0

    const/16 v28, 0x52

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 147
    new-instance v17, Lgnu/expr/Declaration;

    const/16 v27, 0x0

    sget-object v28, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    .local v17, "posIncoming":Lgnu/expr/Declaration;
    new-instance v8, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v30

    invoke-direct {v0, v10}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 153
    .local v8, "init":Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v8, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v9, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 158
    .end local v8    # "init":Lgnu/expr/Expression;
    .local v9, "init":Lgnu/expr/Expression;
    new-instance v12, Lgnu/expr/LetExp;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v9, v27, v28

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 159
    .local v12, "let":Lgnu/expr/LetExp;
    move-object/from16 v0, v17

    invoke-virtual {v14, v6, v0}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 160
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 161
    move-object/from16 v0, v18

    iput-object v0, v12, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 162
    move-object/from16 v18, v12

    .line 165
    .end local v9    # "init":Lgnu/expr/Expression;
    .end local v12    # "let":Lgnu/expr/LetExp;
    .end local v17    # "posIncoming":Lgnu/expr/Declaration;
    :cond_4
    new-instance v19, Lgnu/expr/IfExp;

    new-instance v27, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v28, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 168
    .end local v18    # "pred":Lgnu/expr/Expression;
    .restart local v19    # "pred":Lgnu/expr/Expression;
    move-object/from16 v0, v19

    iput-object v0, v14, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 170
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v14, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 174
    .local v5, "doMap":Lgnu/expr/ApplyExp;
    invoke-virtual {v6}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 175
    iput-object v5, v14, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 177
    new-instance v11, Lgnu/expr/ApplyExp;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v11, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 181
    .local v11, "lastInit":Lgnu/expr/Expression;
    new-instance v13, Lgnu/expr/LetExp;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v11, v27, v28

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 182
    .local v13, "let2":Lgnu/expr/LetExp;
    invoke-virtual {v13, v10}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 183
    sget-object v27, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-static {v5, v0, v1, v2}, Lgnu/kawa/functions/CompileMisc;->validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v13, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 185
    invoke-virtual {v15, v13}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object p0

    goto/16 :goto_0

    .line 132
    .end local v5    # "doMap":Lgnu/expr/ApplyExp;
    .end local v11    # "lastInit":Lgnu/expr/Expression;
    .end local v13    # "let2":Lgnu/expr/LetExp;
    .end local v19    # "pred":Lgnu/expr/Expression;
    .end local v20    # "predType":Lgnu/bytecode/Type;
    .end local v23    # "seqType":Lgnu/bytecode/Type;
    .end local v24    # "sequence":Lgnu/expr/Declaration;
    .end local v25    # "sizeMethod":Lgnu/bytecode/Method;
    :cond_5
    sget-object v23, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    .line 133
    .restart local v23    # "seqType":Lgnu/bytecode/Type;
    new-instance v22, Lgnu/expr/ApplyExp;

    sget-object v27, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v21, v28, v29

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 134
    .end local v21    # "seq":Lgnu/expr/Expression;
    .local v22, "seq":Lgnu/expr/Expression;
    sget-object v27, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string v28, "size"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    .restart local v25    # "sizeMethod":Lgnu/bytecode/Method;
    move-object/from16 v21, v22

    .end local v22    # "seq":Lgnu/expr/Expression;
    .restart local v21    # "seq":Lgnu/expr/Expression;
    goto/16 :goto_1
.end method

.method public static validateArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 81
    return-object p0
.end method

.method public static validateBooleanValue(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 48
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 49
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 51
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 52
    .local v0, "arg":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 53
    .local v4, "type":Lgnu/bytecode/Type;
    sget-object v6, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    if-ne v4, v6, :cond_0

    .line 72
    .end local v0    # "arg":Lgnu/expr/Expression;
    .end local v4    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "arg":Lgnu/expr/Expression;
    .restart local v4    # "type":Lgnu/bytecode/Type;
    :cond_0
    if-nez v4, :cond_1

    .line 56
    sget-object v6, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {p0, v6}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 57
    :cond_1
    instance-of v6, v0, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_3

    .line 59
    check-cast v0, Lgnu/expr/QuoteExp;

    .end local v0    # "arg":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 62
    .local v5, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {v5}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    sget-object v6, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 66
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v3, "cannot convert to a boolean"

    .line 67
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    const/16 v7, 0x65

    invoke-virtual {v6, v7, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 68
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "type":Lgnu/bytecode/Type;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p0

    .line 72
    goto :goto_0
.end method

.method public static validateCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 22
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v2

    .line 23
    .local v2, "folded":Lgnu/expr/Expression;
    if-eq v2, p0, :cond_0

    .line 40
    .end local v2    # "folded":Lgnu/expr/Expression;
    :goto_0
    return-object v2

    .restart local v2    # "folded":Lgnu/expr/Expression;
    :cond_0
    move-object v0, p3

    .line 25
    check-cast v0, Lgnu/xquery/util/Compare;

    .line 26
    .local v0, "cproc":Lgnu/xquery/util/Compare;
    iget v3, v0, Lgnu/xquery/util/Compare;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    .line 38
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v3

    if-nez v3, :cond_1

    .line 39
    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    :cond_1
    move-object v2, p0

    .line 40
    goto :goto_0

    .line 31
    :cond_2
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.xquery.util.Compare"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "apply"

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v4, v5, [Lgnu/expr/Expression;

    new-instance v5, Lgnu/expr/QuoteExp;

    iget v6, v0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v7

    invoke-virtual {p0, v7}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {p0, v8}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v6, v4, v5

    invoke-direct {v1, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object p0, v1

    .end local v1    # "exp":Lgnu/expr/ApplyExp;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    goto :goto_1
.end method
