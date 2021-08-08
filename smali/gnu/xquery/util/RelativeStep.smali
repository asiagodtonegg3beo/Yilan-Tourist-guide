.class public Lgnu/xquery/util/RelativeStep;
.super Lgnu/mapping/MethodProc;
.source "RelativeStep.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final relativeStep:Lgnu/xquery/util/RelativeStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lgnu/xquery/util/RelativeStep;

    invoke-direct {v0}, Lgnu/xquery/util/RelativeStep;-><init>()V

    sput-object v0, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyRelativeStep"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/RelativeStep;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;
    .locals 6
    .param p0, "exp"    # Lgnu/expr/Expression;

    .prologue
    const/4 v3, 0x0

    .line 184
    :goto_0
    instance-of v4, p0, Lgnu/expr/ApplyExp;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 200
    :goto_1
    return-object v2

    :cond_0
    move-object v0, p0

    .line 186
    check-cast v0, Lgnu/expr/ApplyExp;

    .line 187
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 188
    .local v1, "func":Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_2

    .line 190
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1    # "func":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Lgnu/kawa/xml/TreeScanner;

    if-eqz v4, :cond_1

    .line 192
    check-cast v2, Lgnu/kawa/xml/TreeScanner;

    goto :goto_1

    .line 194
    :cond_1
    instance-of v4, v2, Lgnu/xquery/util/ValuesFilter;

    if-eqz v4, :cond_2

    .line 196
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    const/4 v5, 0x0

    aget-object p0, v4, v5

    .line 197
    goto :goto_0

    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    move-object v2, v3

    .line 200
    goto :goto_1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 12
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    .local v6, "next":Ljava/lang/Object;
    move-object v9, v6

    .line 35
    check-cast v9, Lgnu/mapping/Procedure;

    .line 36
    .local v9, "proc":Lgnu/mapping/Procedure;
    iget-object v7, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 39
    .local v7, "out":Lgnu/lists/Consumer;
    instance-of v11, v0, Lgnu/kawa/xml/Nodes;

    if-eqz v11, :cond_0

    move-object v10, v0

    .line 40
    check-cast v10, Lgnu/kawa/xml/Nodes;

    .line 46
    .local v10, "values":Lgnu/kawa/xml/Nodes;
    :goto_0
    invoke-virtual {v10}, Lgnu/kawa/xml/Nodes;->size()I

    move-result v1

    .line 47
    .local v1, "count":I
    const/4 v5, 0x0

    .line 48
    .local v5, "it":I
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    .line 49
    .local v2, "countObj":Lgnu/math/IntNum;
    new-instance v4, Lgnu/xquery/util/RelativeStepFilter;

    invoke-direct {v4, v7}, Lgnu/xquery/util/RelativeStepFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 50
    .local v4, "filter":Lgnu/xquery/util/RelativeStepFilter;
    const/4 v8, 0x1

    .local v8, "pos":I
    :goto_1
    if-gt v8, v1, :cond_1

    .line 52
    invoke-virtual {v10, v5}, Lgnu/kawa/xml/Nodes;->nextPos(I)I

    move-result v5

    .line 53
    invoke-virtual {v10, v5}, Lgnu/kawa/xml/Nodes;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "dot":Ljava/lang/Object;
    invoke-static {v8}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    invoke-virtual {v9, v3, v11, v2, p1}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 55
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 50
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 43
    .end local v1    # "count":I
    .end local v2    # "countObj":Lgnu/math/IntNum;
    .end local v3    # "dot":Ljava/lang/Object;
    .end local v4    # "filter":Lgnu/xquery/util/RelativeStepFilter;
    .end local v5    # "it":I
    .end local v8    # "pos":I
    .end local v10    # "values":Lgnu/kawa/xml/Nodes;
    :cond_0
    new-instance v10, Lgnu/kawa/xml/Nodes;

    invoke-direct {v10}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 44
    .restart local v10    # "values":Lgnu/kawa/xml/Nodes;
    invoke-static {v0, v10}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 57
    .restart local v1    # "count":I
    .restart local v2    # "countObj":Lgnu/math/IntNum;
    .restart local v4    # "filter":Lgnu/xquery/util/RelativeStepFilter;
    .restart local v5    # "it":I
    .restart local v8    # "pos":I
    :cond_1
    invoke-virtual {v4}, Lgnu/xquery/util/RelativeStepFilter;->finish()V

    .line 58
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 22
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 63
    .local v8, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v3, v8, v2

    .line 64
    .local v3, "exp1":Lgnu/expr/Expression;
    const/4 v2, 0x1

    aget-object v10, v8, v2

    .line 65
    .local v10, "exp2":Lgnu/expr/Expression;
    move-object/from16 v0, p3

    instance-of v2, v0, Lgnu/expr/IgnoreTarget;

    if-eqz v2, :cond_0

    .line 67
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 171
    .end local p3    # "target":Lgnu/expr/Target;
    :goto_0
    return-void

    .line 72
    .restart local p3    # "target":Lgnu/expr/Target;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v16

    .line 73
    .local v16, "rtype":Lgnu/bytecode/Type;
    if-nez v16, :cond_1

    .line 74
    sget-object v16, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 75
    :cond_1
    invoke-static/range {v16 .. v16}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v17

    .line 76
    .local v17, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v2, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v15

    .line 79
    .local v15, "nodeCompare":I
    if-ltz v15, :cond_5

    .line 80
    const/16 v11, 0x4e

    .line 85
    .local v11, "expectedKind":C
    :goto_1
    invoke-static {v10}, Lgnu/xquery/util/RelativeStep;->extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;

    move-result-object v19

    .line 86
    .local v19, "step":Lgnu/kawa/xml/TreeScanner;
    if-eqz v19, :cond_4

    .line 88
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    .line 89
    .local v21, "type1":Lgnu/bytecode/Type;
    move-object/from16 v0, v19

    instance-of v2, v0, Lgnu/kawa/xml/ChildAxis;

    if-nez v2, :cond_2

    move-object/from16 v0, v19

    instance-of v2, v0, Lgnu/kawa/xml/AttributeAxis;

    if-nez v2, :cond_2

    move-object/from16 v0, v19

    instance-of v2, v0, Lgnu/kawa/xml/SelfAxis;

    if-eqz v2, :cond_4

    .line 93
    :cond_2
    move-object/from16 v0, v21

    instance-of v2, v0, Lgnu/kawa/xml/NodeSetType;

    if-nez v2, :cond_3

    const/16 v2, 0x4e

    if-ne v11, v2, :cond_4

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    :cond_3
    const/16 v11, 0x53

    .line 109
    .end local v21    # "type1":Lgnu/bytecode/Type;
    :cond_4
    move-object/from16 v0, p3

    instance-of v2, v0, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_7

    .line 111
    invoke-static/range {p1 .. p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 81
    .end local v11    # "expectedKind":C
    .end local v19    # "step":Lgnu/kawa/xml/TreeScanner;
    :cond_5
    const/4 v2, -0x3

    if-ne v15, v2, :cond_6

    .line 82
    const/16 v11, 0x41

    .restart local v11    # "expectedKind":C
    goto :goto_1

    .line 84
    .end local v11    # "expectedKind":C
    :cond_6
    const/16 v11, 0x20

    .restart local v11    # "expectedKind":C
    goto :goto_1

    .line 115
    .restart local v19    # "step":Lgnu/kawa/xml/TreeScanner;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    .line 117
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v18

    .line 122
    .local v18, "scope":Lgnu/bytecode/Scope;
    const/16 v2, 0x41

    if-eq v11, v2, :cond_8

    const/16 v2, 0x53

    if-ne v11, v2, :cond_a

    .line 124
    :cond_8
    move-object/from16 v7, p3

    .line 125
    .local v7, "mtarget":Lgnu/expr/Target;
    const/4 v13, 0x0

    .line 126
    .local v13, "mclass":Lgnu/bytecode/ClassType;
    const/4 v14, 0x0

    .line 127
    .local v14, "mconsumer":Lgnu/bytecode/Variable;
    const/16 v20, 0x0

    .end local p3    # "target":Lgnu/expr/Target;
    .local v20, "tconsumer":Lgnu/bytecode/Variable;
    :goto_2
    move-object v2, v10

    .line 154
    check-cast v2, Lgnu/expr/LambdaExp;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 157
    const/16 v2, 0x4e

    if-ne v11, v2, :cond_d

    .line 159
    invoke-virtual {v9, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 160
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 161
    sget-object v2, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v4, "writeValues"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 170
    :cond_9
    :goto_3
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0

    .line 133
    .end local v7    # "mtarget":Lgnu/expr/Target;
    .end local v13    # "mclass":Lgnu/bytecode/ClassType;
    .end local v14    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v20    # "tconsumer":Lgnu/bytecode/Variable;
    .restart local p3    # "target":Lgnu/expr/Target;
    :cond_a
    const/16 v2, 0x4e

    if-ne v11, v2, :cond_c

    .line 135
    const-string v2, "gnu.kawa.xml.SortedNodes"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 136
    .restart local v13    # "mclass":Lgnu/bytecode/ClassType;
    const-string v2, "<init>"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    .line 143
    .local v12, "initMethod":Lgnu/bytecode/Method;
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v13, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v14

    .line 144
    .restart local v14    # "mconsumer":Lgnu/bytecode/Variable;
    new-instance v7, Lgnu/expr/ConsumerTarget;

    invoke-direct {v7, v14}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 145
    .restart local v7    # "mtarget":Lgnu/expr/Target;
    invoke-virtual {v9, v13}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 146
    invoke-virtual {v9, v13}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 147
    check-cast p3, Lgnu/expr/ConsumerTarget;

    .end local p3    # "target":Lgnu/expr/Target;
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v20

    .line 148
    .restart local v20    # "tconsumer":Lgnu/bytecode/Variable;
    const/16 v2, 0x4e

    if-eq v11, v2, :cond_b

    .line 149
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_b
    invoke-virtual {v9, v12}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 151
    invoke-virtual {v9, v14}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_2

    .line 140
    .end local v7    # "mtarget":Lgnu/expr/Target;
    .end local v12    # "initMethod":Lgnu/bytecode/Method;
    .end local v13    # "mclass":Lgnu/bytecode/ClassType;
    .end local v14    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v20    # "tconsumer":Lgnu/bytecode/Variable;
    .restart local p3    # "target":Lgnu/expr/Target;
    :cond_c
    const-string v2, "gnu.xquery.util.RelativeStepFilter"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 141
    .restart local v13    # "mclass":Lgnu/bytecode/ClassType;
    const-string v2, "<init>"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    .restart local v12    # "initMethod":Lgnu/bytecode/Method;
    goto :goto_4

    .line 164
    .end local v12    # "initMethod":Lgnu/bytecode/Method;
    .end local p3    # "target":Lgnu/expr/Target;
    .restart local v7    # "mtarget":Lgnu/expr/Target;
    .restart local v14    # "mconsumer":Lgnu/bytecode/Variable;
    .restart local v20    # "tconsumer":Lgnu/bytecode/Variable;
    :cond_d
    const/16 v2, 0x20

    if-ne v11, v2, :cond_9

    .line 166
    invoke-virtual {v9, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 167
    const-string v2, "finish"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_3
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 177
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x2002

    return v0
.end method
