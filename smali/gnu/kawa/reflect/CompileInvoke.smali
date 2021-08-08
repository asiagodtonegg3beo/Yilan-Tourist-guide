.class public Lgnu/kawa/reflect/CompileInvoke;
.super Ljava/lang/Object;
.source "CompileInvoke.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "mcount"    # I
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 457
    const-string v1, "\n  candidate: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method static checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;
    .locals 9
    .param p0, "type"    # Lgnu/bytecode/ObjectType;
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "start"    # I
    .param p3, "caller"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 419
    array-length v2, p1

    .line 420
    .local v2, "len":I
    const/4 v4, 0x0

    .line 422
    .local v4, "npairs":I
    :goto_0
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v2, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, p2

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/expr/Keyword;

    if-eqz v7, :cond_0

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 425
    .local v0, "fields":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 427
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, p2

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v6

    .line 428
    .local v6, "value":Ljava/lang/Object;
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "name":Ljava/lang/String;
    invoke-static {p0, v3, p3}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v5

    .line 431
    .local v5, "slot":Lgnu/bytecode/Member;
    if-nez v5, :cond_1

    .line 436
    const-string v7, "add"

    invoke-static {v7, v3}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v7, v8}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 438
    :cond_1
    if-eqz v5, :cond_2

    .end local v5    # "slot":Lgnu/bytecode/Member;
    :goto_2
    aput-object v5, v0, v1

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v5    # "slot":Lgnu/bytecode/Member;
    :cond_2
    move-object v5, v3

    .line 438
    goto :goto_2

    .line 440
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "slot":Lgnu/bytecode/Member;
    :cond_3
    return-object v0
.end method

.method private static getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "kind"    # C

    .prologue
    .line 445
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_0

    .line 446
    const-string v1, "<init>"

    .line 450
    :goto_0
    return-object v1

    .line 447
    :cond_0
    const/16 v1, 0x50

    if-ne p1, v1, :cond_1

    const/4 v0, 0x2

    .line 448
    .local v0, "nameIndex":I
    :goto_1
    array-length v1, p0

    add-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_2

    .line 449
    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 447
    .end local v0    # "nameIndex":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 450
    .restart local v0    # "nameIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;
    .locals 3
    .param p0, "ctype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "caller"    # Lgnu/bytecode/ClassType;
    .param p3, "iproc"    # Lgnu/kawa/reflect/Invoke;

    .prologue
    const/16 v2, 0x56

    const/16 v1, 0x50

    .line 465
    iget-char v0, p3, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 466
    .local v0, "kind":I
    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v2, p3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p0, p1, v1, p2, v2}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 13
    .param p0, "type"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Lgnu/expr/Expression;

    .prologue
    const/4 v11, 0x0

    .line 514
    const-class v12, Lgnu/kawa/reflect/CompileInvoke;

    monitor-enter v12

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-static {p0, p1, v1, v2}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 515
    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 516
    .local v8, "num":J
    const/16 v1, 0x20

    shr-long v2, v8, v1

    long-to-int v10, v2

    .line 517
    .local v10, "okCount":I
    long-to-int v7, v8

    .line 519
    .local v7, "maybeCount":I
    if-nez v0, :cond_0

    .line 520
    const/4 v6, -0x1

    .line 527
    .local v6, "index":I
    :goto_0
    if-gez v6, :cond_3

    move-object v1, v11

    :goto_1
    monitor-exit v12

    return-object v1

    .line 521
    .end local v6    # "index":I
    :cond_0
    if-lez v10, :cond_1

    .line 522
    :try_start_1
    invoke-static {v0, v10}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v6

    .restart local v6    # "index":I
    goto :goto_0

    .line 523
    .end local v6    # "index":I
    :cond_1
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 524
    const/4 v6, 0x0

    .restart local v6    # "index":I
    goto :goto_0

    .line 526
    .end local v6    # "index":I
    :cond_2
    const/4 v6, -0x1

    .restart local v6    # "index":I
    goto :goto_0

    .line 527
    :cond_3
    aget-object v1, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 514
    .end local v0    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v6    # "index":I
    .end local v7    # "maybeCount":I
    .end local v8    # "num":J
    .end local v10    # "okCount":I
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method static hasKeywordArgument(I[Lgnu/expr/Expression;)I
    .locals 2
    .param p0, "argsStartIndex"    # I
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 475
    move v0, p0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 477
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/expr/Keyword;

    if-eqz v1, :cond_0

    .line 480
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 475
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method private static selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    .locals 8
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "ctype"    # Lgnu/bytecode/ObjectType;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "margsLength"    # I
    .param p4, "argsStartIndex"    # I
    .param p5, "objIndex"    # I

    .prologue
    .line 488
    new-array v2, p3, [Lgnu/bytecode/Type;

    .line 490
    .local v2, "atypes":[Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 491
    .local v3, "dst":I
    if-ltz p5, :cond_0

    .line 492
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "dst":I
    .local v4, "dst":I
    aput-object p1, v2, v3

    move v3, v4

    .line 493
    .end local v4    # "dst":I
    .restart local v3    # "dst":I
    :cond_0
    move v5, p4

    .line 494
    .local v5, "src":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_4

    array-length v6, v2

    if-ge v3, v6, :cond_4

    .line 497
    aget-object v0, p2, v5

    .line 498
    .local v0, "arg":Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 500
    .local v1, "atype":Lgnu/bytecode/Type;
    invoke-static {v0}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 501
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 506
    :cond_1
    :goto_1
    aput-object v1, v2, v3

    .line 495
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    :cond_2
    invoke-static {v0}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 503
    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 504
    :cond_3
    if-nez v1, :cond_1

    .line 505
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_1

    .line 508
    .end local v0    # "arg":Lgnu/expr/Expression;
    .end local v1    # "atype":Lgnu/bytecode/Type;
    :cond_4
    invoke-static {p0, v2}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v6

    return-wide v6
.end method

.method public static validateApplyInvoke(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 70
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 13
    move-object/from16 v36, p3

    check-cast v36, Lgnu/kawa/reflect/Invoke;

    .line 14
    .local v36, "iproc":Lgnu/kawa/reflect/Invoke;
    move-object/from16 v0, v36

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v40, v0

    .line 15
    .local v40, "kind":C
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v25

    .line 16
    .local v25, "comp":Lgnu/expr/Compilation;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 17
    .local v6, "args":[Lgnu/expr/Expression;
    array-length v0, v6

    move/from16 v49, v0

    .line 18
    .local v49, "nargs":I
    move-object/from16 v0, v25

    iget-boolean v10, v0, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v10, :cond_1

    if-eqz v49, :cond_1

    const/16 v10, 0x56

    move/from16 v0, v40

    if-eq v0, v10, :cond_0

    const/16 v10, 0x2a

    move/from16 v0, v40

    if-ne v0, v10, :cond_2

    :cond_0
    const/4 v10, 0x1

    move/from16 v0, v49

    if-ne v0, v10, :cond_2

    .line 23
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 411
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v20

    .line 28
    .local v20, "arg0":Lgnu/expr/Expression;
    const/4 v10, 0x0

    aput-object v20, v6, v10

    .line 29
    const/16 v10, 0x56

    move/from16 v0, v40

    if-eq v0, v10, :cond_3

    const/16 v10, 0x2a

    move/from16 v0, v40

    if-ne v0, v10, :cond_8

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v67

    .line 30
    .local v67, "type0":Lgnu/bytecode/Type;
    :goto_1
    move-object/from16 v0, v67

    instance-of v10, v0, Lgnu/expr/PairClassType;

    if-eqz v10, :cond_9

    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_9

    .line 31
    check-cast v67, Lgnu/expr/PairClassType;

    .end local v67    # "type0":Lgnu/bytecode/Type;
    move-object/from16 v0, v67

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v66, v0

    .line 36
    .local v66, "type":Lgnu/bytecode/ObjectType;
    :goto_2
    move/from16 v0, v40

    invoke-static {v6, v0}, Lgnu/kawa/reflect/CompileInvoke;->getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;

    move-result-object v48

    .line 39
    .local v48, "name":Ljava/lang/String;
    const/16 v10, 0x56

    move/from16 v0, v40

    if-eq v0, v10, :cond_4

    const/16 v10, 0x2a

    move/from16 v0, v40

    if-ne v0, v10, :cond_b

    .line 41
    :cond_4
    add-int/lit8 v7, v49, -0x1

    .line 42
    .local v7, "margsLength":I
    const/4 v8, 0x2

    .line 43
    .local v8, "argsStartIndex":I
    const/4 v9, 0x0

    .line 69
    .local v9, "objIndex":I
    :goto_3
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_14

    move-object/from16 v0, v66

    instance-of v10, v0, Lgnu/bytecode/ArrayType;

    if-eqz v10, :cond_14

    move-object/from16 v22, v66

    .line 71
    check-cast v22, Lgnu/bytecode/ArrayType;

    .line 72
    .local v22, "atype":Lgnu/bytecode/ArrayType;
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v30

    .line 73
    .local v30, "elementType":Lgnu/bytecode/Type;
    const/16 v61, 0x0

    .line 74
    .local v61, "sizeArg":Lgnu/expr/Expression;
    const/16 v43, 0x0

    .line 75
    .local v43, "lengthSpecified":Z
    array-length v10, v6

    const/4 v11, 0x3

    if-lt v10, v11, :cond_6

    const/4 v10, 0x1

    aget-object v10, v6, v10

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_6

    .line 77
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    .line 78
    .local v21, "arg1":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v10, v0, Lgnu/expr/Keyword;

    if-eqz v10, :cond_6

    const-string v10, "length"

    check-cast v21, Lgnu/expr/Keyword;

    .end local v21    # "arg1":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "size"

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 82
    :cond_5
    const/4 v10, 0x2

    aget-object v61, v6, v10

    .line 83
    const/16 v43, 0x1

    .line 86
    :cond_6
    if-nez v61, :cond_7

    .line 87
    new-instance v10, Ljava/lang/Integer;

    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v61

    .line 88
    :cond_7
    sget-object v10, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v10}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v61

    .line 89
    new-instance v18, Lgnu/expr/ApplyExp;

    new-instance v10, Lgnu/kawa/reflect/ArrayNew;

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Lgnu/kawa/reflect/ArrayNew;-><init>(Lgnu/bytecode/Type;)V

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    aput-object v61, v11, v12

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 91
    .local v18, "alloc":Lgnu/expr/ApplyExp;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 92
    if-eqz v43, :cond_10

    array-length v10, v6

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    move-object/from16 p0, v18

    .line 93
    goto/16 :goto_0

    .line 29
    .end local v7    # "margsLength":I
    .end local v8    # "argsStartIndex":I
    .end local v9    # "objIndex":I
    .end local v18    # "alloc":Lgnu/expr/ApplyExp;
    .end local v22    # "atype":Lgnu/bytecode/ArrayType;
    .end local v30    # "elementType":Lgnu/bytecode/Type;
    .end local v43    # "lengthSpecified":Z
    .end local v48    # "name":Ljava/lang/String;
    .end local v61    # "sizeArg":Lgnu/expr/Expression;
    .end local v66    # "type":Lgnu/bytecode/ObjectType;
    :cond_8
    move-object/from16 v0, v36

    iget-object v10, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v67

    goto/16 :goto_1

    .line 32
    .restart local v67    # "type0":Lgnu/bytecode/Type;
    :cond_9
    move-object/from16 v0, v67

    instance-of v10, v0, Lgnu/bytecode/ObjectType;

    if-eqz v10, :cond_a

    move-object/from16 v66, v67

    .line 33
    check-cast v66, Lgnu/bytecode/ObjectType;

    .restart local v66    # "type":Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 35
    .end local v66    # "type":Lgnu/bytecode/ObjectType;
    :cond_a
    const/16 v66, 0x0

    .restart local v66    # "type":Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 45
    .end local v67    # "type0":Lgnu/bytecode/Type;
    .restart local v48    # "name":Ljava/lang/String;
    :cond_b
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_c

    .line 47
    move/from16 v7, v49

    .line 48
    .restart local v7    # "margsLength":I
    const/4 v8, 0x0

    .line 49
    .restart local v8    # "argsStartIndex":I
    const/4 v9, -0x1

    .restart local v9    # "objIndex":I
    goto/16 :goto_3

    .line 51
    .end local v7    # "margsLength":I
    .end local v8    # "argsStartIndex":I
    .end local v9    # "objIndex":I
    :cond_c
    const/16 v10, 0x53

    move/from16 v0, v40

    if-eq v0, v10, :cond_d

    const/16 v10, 0x73

    move/from16 v0, v40

    if-ne v0, v10, :cond_e

    .line 53
    :cond_d
    add-int/lit8 v7, v49, -0x2

    .line 54
    .restart local v7    # "margsLength":I
    const/4 v8, 0x2

    .line 55
    .restart local v8    # "argsStartIndex":I
    const/4 v9, -0x1

    .restart local v9    # "objIndex":I
    goto/16 :goto_3

    .line 57
    .end local v7    # "margsLength":I
    .end local v8    # "argsStartIndex":I
    .end local v9    # "objIndex":I
    :cond_e
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_f

    .line 59
    add-int/lit8 v7, v49, -0x2

    .line 60
    .restart local v7    # "margsLength":I
    const/4 v8, 0x3

    .line 61
    .restart local v8    # "argsStartIndex":I
    const/4 v9, 0x1

    .restart local v9    # "objIndex":I
    goto/16 :goto_3

    .line 65
    .end local v7    # "margsLength":I
    .end local v8    # "argsStartIndex":I
    .end local v9    # "objIndex":I
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto/16 :goto_0

    .line 94
    .restart local v7    # "margsLength":I
    .restart local v8    # "argsStartIndex":I
    .restart local v9    # "objIndex":I
    .restart local v18    # "alloc":Lgnu/expr/ApplyExp;
    .restart local v22    # "atype":Lgnu/bytecode/ArrayType;
    .restart local v30    # "elementType":Lgnu/bytecode/Type;
    .restart local v43    # "lengthSpecified":Z
    .restart local v61    # "sizeArg":Lgnu/expr/Expression;
    :cond_10
    new-instance v44, Lgnu/expr/LetExp;

    const/4 v10, 0x1

    new-array v10, v10, [Lgnu/expr/Expression;

    const/4 v11, 0x0

    aput-object v18, v10, v11

    move-object/from16 v0, v44

    invoke-direct {v0, v10}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 95
    .local v44, "let":Lgnu/expr/LetExp;
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v16

    .line 96
    .local v16, "adecl":Lgnu/expr/Declaration;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    new-instance v23, Lgnu/expr/BeginExp;

    invoke-direct/range {v23 .. v23}, Lgnu/expr/BeginExp;-><init>()V

    .line 98
    .local v23, "begin":Lgnu/expr/BeginExp;
    const/16 v35, 0x0

    .line 99
    .local v35, "index":I
    if-eqz v43, :cond_12

    const/16 v33, 0x3

    .local v33, "i":I
    :goto_4
    array-length v10, v6

    move/from16 v0, v33

    if-ge v0, v10, :cond_13

    .line 101
    aget-object v19, v6, v33

    .line 102
    .local v19, "arg":Lgnu/expr/Expression;
    if-eqz v43, :cond_11

    add-int/lit8 v10, v33, 0x1

    array-length v11, v6

    if-ge v10, v11, :cond_11

    move-object/from16 v0, v19

    instance-of v10, v0, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_11

    move-object/from16 v10, v19

    .line 104
    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v38

    .line 105
    .local v38, "key":Ljava/lang/Object;
    move-object/from16 v0, v38

    instance-of v10, v0, Lgnu/expr/Keyword;

    if-eqz v10, :cond_11

    .line 107
    check-cast v38, Lgnu/expr/Keyword;

    .end local v38    # "key":Ljava/lang/Object;
    invoke-virtual/range {v38 .. v38}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v41

    .line 110
    .local v41, "kname":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 111
    add-int/lit8 v33, v33, 0x1

    aget-object v19, v6, v33
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v41    # "kname":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    .line 121
    new-instance v10, Lgnu/expr/ApplyExp;

    new-instance v11, Lgnu/kawa/reflect/ArraySet;

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    const/4 v12, 0x3

    new-array v12, v12, [Lgnu/expr/Expression;

    const/4 v13, 0x0

    new-instance v14, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/Integer;

    move/from16 v0, v35

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v19, v12, v13

    invoke-direct {v10, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 126
    add-int/lit8 v35, v35, 0x1

    .line 99
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .end local v19    # "arg":Lgnu/expr/Expression;
    .end local v33    # "i":I
    :cond_12
    const/16 v33, 0x1

    goto :goto_4

    .line 113
    .restart local v19    # "arg":Lgnu/expr/Expression;
    .restart local v33    # "i":I
    .restart local v41    # "kname":Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 115
    .local v32, "ex":Ljava/lang/Throwable;
    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "non-integer keyword \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in array constructor"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .end local v19    # "arg":Lgnu/expr/Expression;
    .end local v32    # "ex":Ljava/lang/Throwable;
    .end local v41    # "kname":Ljava/lang/String;
    :cond_13
    new-instance v10, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 129
    move-object/from16 v0, v23

    move-object/from16 v1, v44

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object/from16 p0, v44

    .line 130
    goto/16 :goto_0

    .line 132
    .end local v16    # "adecl":Lgnu/expr/Declaration;
    .end local v18    # "alloc":Lgnu/expr/ApplyExp;
    .end local v22    # "atype":Lgnu/bytecode/ArrayType;
    .end local v23    # "begin":Lgnu/expr/BeginExp;
    .end local v30    # "elementType":Lgnu/bytecode/Type;
    .end local v33    # "i":I
    .end local v35    # "index":I
    .end local v43    # "lengthSpecified":Z
    .end local v44    # "let":Lgnu/expr/LetExp;
    .end local v61    # "sizeArg":Lgnu/expr/Expression;
    :cond_14
    if-eqz v66, :cond_49

    if-eqz v48, :cond_49

    .line 134
    move-object/from16 v0, v66

    instance-of v10, v0, Lgnu/expr/TypeValue;

    if-eqz v10, :cond_15

    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_15

    move-object/from16 v10, v66

    .line 136
    check-cast v10, Lgnu/expr/TypeValue;

    invoke-interface {v10}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v26

    .line 137
    .local v26, "constructor":Lgnu/mapping/Procedure;
    if-eqz v26, :cond_15

    .line 139
    add-int/lit8 v10, v49, -0x1

    new-array v0, v10, [Lgnu/expr/Expression;

    move-object/from16 v69, v0

    .line 140
    .local v69, "xargs":[Lgnu/expr/Expression;
    const/4 v10, 0x1

    const/4 v11, 0x0

    add-int/lit8 v12, v49, -0x1

    move-object/from16 v0, v69

    invoke-static {v6, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance v10, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v26

    move-object/from16 v1, v69

    invoke-direct {v10, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .line 145
    .end local v26    # "constructor":Lgnu/mapping/Procedure;
    .end local v69    # "xargs":[Lgnu/expr/Expression;
    :cond_15
    if-nez v25, :cond_19

    const/16 v24, 0x0

    .line 148
    .local v24, "caller":Lgnu/bytecode/ClassType;
    :goto_5
    move-object/from16 v5, v66

    .line 152
    .local v5, "ctype":Lgnu/bytecode/ObjectType;
    :try_start_1
    move-object/from16 v0, v48

    move-object/from16 v1, v24

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v4

    .line 153
    .local v4, "methods":[Lgnu/expr/PrimProcedure;
    invoke-static {v4, v7}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v51

    .line 160
    .local v51, "numCode":I
    const/16 v35, -0x1

    .line 163
    .restart local v35    # "index":I
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_26

    const/4 v10, 0x1

    invoke-static {v10, v6}, Lgnu/kawa/reflect/CompileInvoke;->hasKeywordArgument(I[Lgnu/expr/Expression;)I

    move-result v39

    .local v39, "keywordStart":I
    array-length v10, v6

    move/from16 v0, v39

    if-lt v0, v10, :cond_16

    if-gtz v51, :cond_26

    const/4 v10, 0x1

    new-array v10, v10, [Lgnu/bytecode/Type;

    const/4 v11, 0x0

    sget-object v12, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    aput-object v12, v10, v11

    invoke-static {v4, v10}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v10

    const/16 v12, 0x20

    shr-long/2addr v10, v12

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_26

    :cond_16
    move/from16 v0, v39

    move-object/from16 v1, v24

    invoke-static {v5, v6, v0, v1}, Lgnu/kawa/reflect/CompileInvoke;->checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;

    move-result-object v63

    .local v63, "slots":[Ljava/lang/Object;
    move-object/from16 v0, v63

    array-length v10, v0

    mul-int/lit8 v10, v10, 0x2

    array-length v11, v6

    sub-int v11, v11, v39

    if-eq v10, v11, :cond_17

    const-string v10, "add"

    const/16 v11, 0x56

    const/4 v12, 0x0

    move-object/from16 v0, v36

    iget-object v13, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {v5, v10, v11, v12, v13}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I

    move-result v10

    if-lez v10, :cond_26

    .line 174
    :cond_17
    const/16 v31, 0x0

    .line 175
    .local v31, "errbuf":Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    .restart local v33    # "i":I
    :goto_6
    move-object/from16 v0, v63

    array-length v10, v0

    move/from16 v0, v33

    if-ge v0, v10, :cond_1c

    .line 177
    aget-object v10, v63, v33

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_18

    .line 179
    if-nez v31, :cond_1b

    .line 181
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31    # "errbuf":Ljava/lang/StringBuffer;
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .restart local v31    # "errbuf":Ljava/lang/StringBuffer;
    const-string v10, "no field or setter "

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :goto_7
    const/16 v10, 0x60

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    aget-object v10, v63, v33

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    const/16 v10, 0x27

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_18
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 145
    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v5    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v24    # "caller":Lgnu/bytecode/ClassType;
    .end local v31    # "errbuf":Ljava/lang/StringBuffer;
    .end local v33    # "i":I
    .end local v35    # "index":I
    .end local v39    # "keywordStart":I
    .end local v51    # "numCode":I
    .end local v63    # "slots":[Ljava/lang/Object;
    :cond_19
    move-object/from16 v0, v25

    iget-object v10, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_1a

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    goto/16 :goto_5

    .line 155
    .restart local v5    # "ctype":Lgnu/bytecode/ObjectType;
    .restart local v24    # "caller":Lgnu/bytecode/ClassType;
    :catch_1
    move-exception v32

    .line 157
    .local v32, "ex":Ljava/lang/Exception;
    const/16 v10, 0x77

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v66 .. v66}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v32    # "ex":Ljava/lang/Exception;
    .restart local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v31    # "errbuf":Ljava/lang/StringBuffer;
    .restart local v33    # "i":I
    .restart local v35    # "index":I
    .restart local v39    # "keywordStart":I
    .restart local v51    # "numCode":I
    .restart local v63    # "slots":[Ljava/lang/Object;
    :cond_1b
    const-string v10, ", "

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 191
    :cond_1c
    if-eqz v31, :cond_1d

    .line 193
    const-string v10, " in class "

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual/range {v66 .. v66}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const/16 v10, 0x77

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_1d
    array-length v10, v6

    move/from16 v0, v39

    if-ge v0, v10, :cond_1f

    .line 203
    move/from16 v0, v39

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v69, v0

    .line 204
    .restart local v69    # "xargs":[Lgnu/expr/Expression;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v39

    invoke-static {v6, v10, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v10, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v11

    move-object/from16 v0, v69

    invoke-direct {v10, v11, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v17

    check-cast v17, Lgnu/expr/ApplyExp;

    .line 209
    .end local v69    # "xargs":[Lgnu/expr/Expression;
    .local v17, "ae":Lgnu/expr/ApplyExp;
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 210
    move-object/from16 v29, v17

    .line 211
    .local v29, "e":Lgnu/expr/Expression;
    array-length v10, v6

    if-lez v10, :cond_25

    .line 213
    const/16 v33, 0x0

    :goto_9
    move-object/from16 v0, v63

    array-length v10, v0

    move/from16 v0, v33

    if-ge v0, v10, :cond_22

    .line 215
    aget-object v62, v63, v33

    .line 217
    .local v62, "slot":Ljava/lang/Object;
    move-object/from16 v0, v62

    instance-of v10, v0, Lgnu/bytecode/Method;

    if-eqz v10, :cond_20

    move-object/from16 v10, v62

    .line 218
    check-cast v10, Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v65, v10, v11

    .line 223
    .local v65, "stype":Lgnu/bytecode/Type;
    :goto_a
    if-eqz v65, :cond_1e

    .line 224
    move-object/from16 v0, v36

    iget-object v10, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v0, v65

    invoke-virtual {v10, v0}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v65

    .line 225
    :cond_1e
    mul-int/lit8 v10, v33, 0x2

    add-int v10, v10, v39

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v6, v10

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    invoke-virtual {v0, v10, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    .line 226
    .restart local v19    # "arg":Lgnu/expr/Expression;
    const/4 v10, 0x3

    new-array v0, v10, [Lgnu/expr/Expression;

    move-object/from16 v59, v0

    const/4 v10, 0x0

    aput-object v17, v59, v10

    const/4 v10, 0x1

    new-instance v11, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v62

    invoke-direct {v11, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v59, v10

    const/4 v10, 0x2

    aput-object v19, v59, v10

    .line 228
    .local v59, "sargs":[Lgnu/expr/Expression;
    new-instance v17, Lgnu/expr/ApplyExp;

    .end local v17    # "ae":Lgnu/expr/ApplyExp;
    sget-object v10, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v59

    invoke-direct {v0, v10, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 229
    .restart local v17    # "ae":Lgnu/expr/ApplyExp;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 213
    add-int/lit8 v33, v33, 0x1

    goto :goto_9

    .line 208
    .end local v17    # "ae":Lgnu/expr/ApplyExp;
    .end local v19    # "arg":Lgnu/expr/Expression;
    .end local v29    # "e":Lgnu/expr/Expression;
    .end local v59    # "sargs":[Lgnu/expr/Expression;
    .end local v62    # "slot":Ljava/lang/Object;
    .end local v65    # "stype":Lgnu/bytecode/Type;
    :cond_1f
    new-instance v17, Lgnu/expr/ApplyExp;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    aput-object v20, v11, v12

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local v17    # "ae":Lgnu/expr/ApplyExp;
    goto :goto_8

    .line 219
    .restart local v29    # "e":Lgnu/expr/Expression;
    .restart local v62    # "slot":Ljava/lang/Object;
    :cond_20
    move-object/from16 v0, v62

    instance-of v10, v0, Lgnu/bytecode/Field;

    if-eqz v10, :cond_21

    move-object/from16 v10, v62

    .line 220
    check-cast v10, Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v65

    .restart local v65    # "stype":Lgnu/bytecode/Type;
    goto :goto_a

    .line 222
    .end local v65    # "stype":Lgnu/bytecode/Type;
    :cond_21
    const/16 v65, 0x0

    .restart local v65    # "stype":Lgnu/bytecode/Type;
    goto :goto_a

    .line 231
    .end local v62    # "slot":Ljava/lang/Object;
    .end local v65    # "stype":Lgnu/bytecode/Type;
    :cond_22
    array-length v10, v6

    move/from16 v0, v39

    if-ne v0, v10, :cond_23

    const/16 v59, 0x1

    .line 233
    .local v59, "sargs":I
    :goto_b
    move-object/from16 v29, v17

    .line 234
    array-length v10, v6

    move/from16 v0, v59

    if-ge v0, v10, :cond_25

    .line 236
    new-instance v44, Lgnu/expr/LetExp;

    const/4 v10, 0x1

    new-array v10, v10, [Lgnu/expr/Expression;

    const/4 v11, 0x0

    aput-object v29, v10, v11

    move-object/from16 v0, v44

    invoke-direct {v0, v10}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 237
    .restart local v44    # "let":Lgnu/expr/LetExp;
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v5}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v16

    .line 238
    .restart local v16    # "adecl":Lgnu/expr/Declaration;
    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 239
    new-instance v23, Lgnu/expr/BeginExp;

    invoke-direct/range {v23 .. v23}, Lgnu/expr/BeginExp;-><init>()V

    .line 240
    .restart local v23    # "begin":Lgnu/expr/BeginExp;
    move/from16 v33, v59

    :goto_c
    array-length v10, v6

    move/from16 v0, v33

    if-ge v0, v10, :cond_24

    .line 242
    const/4 v10, 0x3

    new-array v0, v10, [Lgnu/expr/Expression;

    move-object/from16 v34, v0

    const/4 v10, 0x0

    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v11, v34, v10

    const/4 v10, 0x1

    const-string v11, "add"

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    aput-object v11, v34, v10

    const/4 v10, 0x2

    aget-object v11, v6, v33

    aput-object v11, v34, v10

    .line 247
    .local v34, "iargs":[Lgnu/expr/Expression;
    new-instance v10, Lgnu/expr/ApplyExp;

    sget-object v11, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v34

    invoke-direct {v10, v11, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 240
    add-int/lit8 v33, v33, 0x1

    goto :goto_c

    .line 231
    .end local v16    # "adecl":Lgnu/expr/Declaration;
    .end local v23    # "begin":Lgnu/expr/BeginExp;
    .end local v34    # "iargs":[Lgnu/expr/Expression;
    .end local v44    # "let":Lgnu/expr/LetExp;
    .end local v59    # "sargs":I
    :cond_23
    move-object/from16 v0, v63

    array-length v10, v0

    mul-int/lit8 v10, v10, 0x2

    add-int v59, v10, v39

    goto :goto_b

    .line 251
    .restart local v16    # "adecl":Lgnu/expr/Declaration;
    .restart local v23    # "begin":Lgnu/expr/BeginExp;
    .restart local v44    # "let":Lgnu/expr/LetExp;
    .restart local v59    # "sargs":I
    :cond_24
    new-instance v10, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 252
    move-object/from16 v0, v23

    move-object/from16 v1, v44

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 253
    move-object/from16 v29, v44

    .line 256
    .end local v16    # "adecl":Lgnu/expr/Declaration;
    .end local v23    # "begin":Lgnu/expr/BeginExp;
    .end local v44    # "let":Lgnu/expr/LetExp;
    .end local v59    # "sargs":I
    :cond_25
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .line 260
    .end local v17    # "ae":Lgnu/expr/ApplyExp;
    .end local v29    # "e":Lgnu/expr/Expression;
    .end local v31    # "errbuf":Ljava/lang/StringBuffer;
    .end local v33    # "i":I
    .end local v39    # "keywordStart":I
    .end local v63    # "slots":[Ljava/lang/Object;
    :cond_26
    if-ltz v51, :cond_38

    .line 262
    const/16 v33, 0x1

    .restart local v33    # "i":I
    :goto_d
    move/from16 v0, v33

    move/from16 v1, v49

    if-ge v0, v1, :cond_32

    .line 264
    const/16 v22, 0x0

    .line 265
    .local v22, "atype":Lgnu/bytecode/Type;
    add-int/lit8 v10, v49, -0x1

    move/from16 v0, v33

    if-ne v0, v10, :cond_2a

    const/16 v42, 0x1

    .line 266
    .local v42, "last":Z
    :goto_e
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_27

    const/4 v10, 0x2

    move/from16 v0, v33

    if-eq v0, v10, :cond_28

    :cond_27
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-eq v0, v10, :cond_2b

    const/4 v10, 0x1

    move/from16 v0, v33

    if-ne v0, v10, :cond_2b

    .line 267
    :cond_28
    const/16 v22, 0x0

    .line 298
    :cond_29
    :goto_f
    aget-object v10, v6, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v6, v33

    .line 262
    add-int/lit8 v33, v33, 0x1

    goto :goto_d

    .line 265
    .end local v42    # "last":Z
    :cond_2a
    const/16 v42, 0x0

    goto :goto_e

    .line 268
    .restart local v42    # "last":Z
    :cond_2b
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_2c

    const/4 v10, 0x1

    move/from16 v0, v33

    if-ne v0, v10, :cond_2c

    .line 269
    move-object/from16 v22, v5

    goto :goto_f

    .line 270
    :cond_2c
    if-lez v51, :cond_29

    .line 272
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_2d

    const/4 v10, 0x1

    :goto_10
    sub-int v55, v33, v10

    .line 273
    .local v55, "pi":I
    const/16 v37, 0x0

    .local v37, "j":I
    :goto_11
    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_29

    .line 275
    aget-object v57, v4, v37

    .line 276
    .local v57, "pproc":Lgnu/expr/PrimProcedure;
    const/16 v10, 0x53

    move/from16 v0, v40

    if-eq v0, v10, :cond_2e

    invoke-virtual/range {v57 .. v57}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v10

    if-eqz v10, :cond_2e

    const/4 v10, 0x1

    :goto_12
    add-int v56, v55, v10

    .line 279
    .local v56, "pii":I
    if-eqz v42, :cond_2f

    invoke-virtual/range {v57 .. v57}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-virtual/range {v57 .. v57}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v10

    move/from16 v0, v56

    if-ne v0, v10, :cond_2f

    .line 281
    const/16 v22, 0x0

    .line 294
    :goto_13
    if-eqz v22, :cond_29

    .line 273
    add-int/lit8 v37, v37, 0x1

    goto :goto_11

    .end local v37    # "j":I
    .end local v55    # "pi":I
    .end local v56    # "pii":I
    .end local v57    # "pproc":Lgnu/expr/PrimProcedure;
    :cond_2d
    move v10, v8

    .line 272
    goto :goto_10

    .line 276
    .restart local v37    # "j":I
    .restart local v55    # "pi":I
    .restart local v57    # "pproc":Lgnu/expr/PrimProcedure;
    :cond_2e
    const/4 v10, 0x0

    goto :goto_12

    .line 284
    .restart local v56    # "pii":I
    :cond_2f
    move-object/from16 v0, v57

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lgnu/expr/PrimProcedure;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v58

    .line 285
    .local v58, "ptype":Lgnu/bytecode/Type;
    if-nez v37, :cond_30

    .line 286
    move-object/from16 v22, v58

    goto :goto_13

    .line 287
    :cond_30
    move-object/from16 v0, v58

    instance-of v10, v0, Lgnu/bytecode/PrimType;

    move-object/from16 v0, v22

    instance-of v11, v0, Lgnu/bytecode/PrimType;

    if-eq v10, v11, :cond_31

    .line 288
    const/16 v22, 0x0

    goto :goto_13

    .line 291
    :cond_31
    move-object/from16 v0, v22

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v22

    goto :goto_13

    .line 300
    .end local v22    # "atype":Lgnu/bytecode/Type;
    .end local v37    # "j":I
    .end local v42    # "last":Z
    .end local v55    # "pi":I
    .end local v56    # "pii":I
    .end local v57    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v58    # "ptype":Lgnu/bytecode/Type;
    :cond_32
    invoke-static/range {v4 .. v9}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v52

    .line 302
    .local v52, "num":J
    const/16 v10, 0x20

    shr-long v10, v52, v10

    long-to-int v0, v10

    move/from16 v54, v0

    .line 303
    .local v54, "okCount":I
    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v46, v0

    .line 310
    .end local v33    # "i":I
    .end local v52    # "num":J
    .local v46, "maybeCount":I
    :goto_14
    array-length v0, v4

    move/from16 v50, v0

    .line 311
    .local v50, "nmethods":I
    add-int v10, v54, v46

    if-nez v10, :cond_33

    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_33

    .line 313
    const-string v10, "valueOf"

    sget-object v11, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v24

    invoke-static {v5, v10, v0, v11}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v4

    .line 314
    const/4 v8, 0x1

    .line 315
    add-int/lit8 v7, v49, -0x1

    .line 316
    const/4 v15, -0x1

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    move v14, v8

    invoke-static/range {v10 .. v15}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v52

    .line 318
    .restart local v52    # "num":J
    const/16 v10, 0x20

    shr-long v10, v52, v10

    long-to-int v0, v10

    move/from16 v54, v0

    .line 319
    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v46, v0

    .line 321
    .end local v52    # "num":J
    :cond_33
    add-int v10, v54, v46

    if-nez v10, :cond_3d

    .line 323
    const/16 v10, 0x50

    move/from16 v0, v40

    if-eq v0, v10, :cond_34

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 325
    :cond_34
    const/16 v10, 0x4e

    move/from16 v0, v40

    if-ne v0, v10, :cond_35

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/valueOf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 327
    :cond_35
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v60, "sbuf":Ljava/lang/StringBuilder;
    array-length v10, v4

    add-int v10, v10, v50

    if-nez v10, :cond_39

    .line 329
    const-string v10, "no accessible method \'"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_15
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v10, "\' in "

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual/range {v66 .. v66}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_3c

    const/16 v10, 0x65

    :goto_16
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 391
    .end local v60    # "sbuf":Ljava/lang/StringBuilder;
    :cond_36
    :goto_17
    if-ltz v35, :cond_49

    .line 393
    new-array v0, v7, [Lgnu/expr/Expression;

    move-object/from16 v45, v0

    .line 394
    .local v45, "margs":[Lgnu/expr/Expression;
    aget-object v47, v4, v35

    .line 395
    .local v47, "method":Lgnu/expr/PrimProcedure;
    invoke-virtual/range {v47 .. v47}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v68

    .line 396
    .local v68, "variable":Z
    const/16 v27, 0x0

    .line 397
    .local v27, "dst":I
    if-ltz v9, :cond_37

    .line 398
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "dst":I
    .local v28, "dst":I
    aget-object v10, v6, v9

    aput-object v10, v45, v27

    move/from16 v27, v28

    .line 399
    .end local v28    # "dst":I
    .restart local v27    # "dst":I
    :cond_37
    move/from16 v64, v8

    .line 400
    .local v64, "src":I
    :goto_18
    array-length v10, v6

    move/from16 v0, v64

    if-ge v0, v10, :cond_48

    move-object/from16 v0, v45

    array-length v10, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_48

    .line 403
    aget-object v10, v6, v64

    aput-object v10, v45, v27

    .line 401
    add-int/lit8 v64, v64, 0x1

    add-int/lit8 v27, v27, 0x1

    goto :goto_18

    .line 307
    .end local v27    # "dst":I
    .end local v45    # "margs":[Lgnu/expr/Expression;
    .end local v46    # "maybeCount":I
    .end local v47    # "method":Lgnu/expr/PrimProcedure;
    .end local v50    # "nmethods":I
    .end local v54    # "okCount":I
    .end local v64    # "src":I
    .end local v68    # "variable":Z
    :cond_38
    const/16 v54, 0x0

    .line 308
    .restart local v54    # "okCount":I
    const/16 v46, 0x0

    .restart local v46    # "maybeCount":I
    goto/16 :goto_14

    .line 330
    .restart local v50    # "nmethods":I
    .restart local v60    # "sbuf":Ljava/lang/StringBuilder;
    :cond_39
    const/high16 v10, -0xf0000

    move/from16 v0, v51

    if-ne v0, v10, :cond_3a

    .line 331
    const-string v10, "too few arguments for method \'"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 332
    :cond_3a
    const/high16 v10, -0xe0000

    move/from16 v0, v51

    if-ne v0, v10, :cond_3b

    .line 333
    const-string v10, "too many arguments for method \'"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 335
    :cond_3b
    const-string v10, "no possibly applicable method \'"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 339
    :cond_3c
    const/16 v10, 0x77

    goto :goto_16

    .line 342
    .end local v60    # "sbuf":Ljava/lang/StringBuilder;
    :cond_3d
    const/4 v10, 0x1

    move/from16 v0, v54

    if-eq v0, v10, :cond_3e

    if-nez v54, :cond_3f

    const/4 v10, 0x1

    move/from16 v0, v46

    if-ne v0, v10, :cond_3f

    .line 343
    :cond_3e
    const/16 v35, 0x0

    goto :goto_17

    .line 344
    :cond_3f
    if-lez v54, :cond_45

    .line 346
    move/from16 v0, v54

    invoke-static {v4, v0}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v35

    .line 347
    if-gez v35, :cond_40

    .line 349
    const/16 v10, 0x53

    move/from16 v0, v40

    if-ne v0, v10, :cond_40

    .line 354
    const/16 v33, 0x0

    .restart local v33    # "i":I
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v54

    if-ge v0, v1, :cond_40

    .line 356
    aget-object v10, v4, v33

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 358
    if-ltz v35, :cond_42

    .line 360
    const/16 v35, -0x1

    .line 369
    .end local v33    # "i":I
    :cond_40
    if-gez v35, :cond_36

    const/16 v10, 0x50

    move/from16 v0, v40

    if-eq v0, v10, :cond_41

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 372
    :cond_41
    new-instance v60, Ljava/lang/StringBuffer;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    .local v60, "sbuf":Ljava/lang/StringBuffer;
    const-string v10, "more than one definitely applicable method `"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v10, "\' in "

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual/range {v66 .. v66}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    move/from16 v0, v54

    move-object/from16 v1, v60

    invoke-static {v4, v0, v1}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 378
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_44

    const/16 v10, 0x65

    :goto_1a
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_17

    .line 364
    .end local v60    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v33    # "i":I
    :cond_42
    move/from16 v35, v33

    .line 354
    :cond_43
    add-int/lit8 v33, v33, 0x1

    goto :goto_19

    .line 378
    .end local v33    # "i":I
    .restart local v60    # "sbuf":Ljava/lang/StringBuffer;
    :cond_44
    const/16 v10, 0x77

    goto :goto_1a

    .line 381
    .end local v60    # "sbuf":Ljava/lang/StringBuffer;
    :cond_45
    const/16 v10, 0x50

    move/from16 v0, v40

    if-eq v0, v10, :cond_46

    invoke-virtual/range {v25 .. v25}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 383
    :cond_46
    new-instance v60, Ljava/lang/StringBuffer;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .restart local v60    # "sbuf":Ljava/lang/StringBuffer;
    const-string v10, "more than one possibly applicable method \'"

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v10, "\' in "

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual/range {v66 .. v66}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    move/from16 v0, v46

    move-object/from16 v1, v60

    invoke-static {v4, v0, v1}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 389
    const/16 v10, 0x50

    move/from16 v0, v40

    if-ne v0, v10, :cond_47

    const/16 v10, 0x65

    :goto_1b
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_17

    :cond_47
    const/16 v10, 0x77

    goto :goto_1b

    .line 405
    .end local v60    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v27    # "dst":I
    .restart local v45    # "margs":[Lgnu/expr/Expression;
    .restart local v47    # "method":Lgnu/expr/PrimProcedure;
    .restart local v64    # "src":I
    .restart local v68    # "variable":Z
    :cond_48
    new-instance v29, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 406
    .local v29, "e":Lgnu/expr/ApplyExp;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 407
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .line 410
    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v5    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v24    # "caller":Lgnu/bytecode/ClassType;
    .end local v27    # "dst":I
    .end local v29    # "e":Lgnu/expr/ApplyExp;
    .end local v35    # "index":I
    .end local v45    # "margs":[Lgnu/expr/Expression;
    .end local v46    # "maybeCount":I
    .end local v47    # "method":Lgnu/expr/PrimProcedure;
    .end local v50    # "nmethods":I
    .end local v51    # "numCode":I
    .end local v54    # "okCount":I
    .end local v64    # "src":I
    .end local v68    # "variable":Z
    :cond_49
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto/16 :goto_0
.end method
