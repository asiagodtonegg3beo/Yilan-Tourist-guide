.class public Lgnu/xquery/util/ValuesFilter;
.super Lgnu/mapping/MethodProc;
.source "ValuesFilter.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final exprFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final forwardFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final matchesMethod:Lgnu/bytecode/Method;

.field public static final reverseFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final typeValuesFilter:Lgnu/bytecode/ClassType;


# instance fields
.field kind:C

.field last_or_position_needed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .line 140
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 141
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .line 142
    const-string v0, "gnu.xquery.util.ValuesFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    .line 144
    sget-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    const-string v1, "matches"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 2
    .param p1, "kind"    # C

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xquery/util/ValuesFilter;->last_or_position_needed:I

    .line 23
    iput-char p1, p0, Lgnu/xquery/util/ValuesFilter;->kind:C

    .line 24
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyValuesFilter"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/ValuesFilter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static get(C)Lgnu/xquery/util/ValuesFilter;
    .locals 1
    .param p0, "kind"    # C

    .prologue
    .line 30
    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .line 32
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/16 v0, 0x52

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_0
.end method

.method public static matches(Ljava/lang/Object;J)Z
    .locals 7
    .param p0, "result"    # Ljava/lang/Object;
    .param p1, "count"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    instance-of v2, p0, Lgnu/mapping/Values;

    if-eqz v2, :cond_0

    .line 45
    check-cast p0, Lgnu/mapping/Values;

    .end local p0    # "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    .line 46
    .restart local p0    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_8

    .line 48
    instance-of v2, p0, Lgnu/math/IntNum;

    if-eqz v2, :cond_3

    .line 49
    check-cast p0, Lgnu/math/IntNum;

    .end local p0    # "result":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v2

    if-nez v2, :cond_2

    .line 61
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    .restart local p0    # "result":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Ljava/lang/Double;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_4

    instance-of v2, p0, Lgnu/math/DFloNum;

    if-eqz v2, :cond_5

    .line 52
    :cond_4
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "result":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    long-to-double v4, p1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 53
    .restart local p0    # "result":Ljava/lang/Object;
    :cond_5
    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_6

    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_6

    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_6

    instance-of v2, p0, Ljava/lang/Byte;

    if-eqz v2, :cond_7

    .line 55
    :cond_6
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "result":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 57
    .restart local p0    # "result":Ljava/lang/Object;
    :cond_7
    const/16 v0, 0x8

    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lgnu/kawa/functions/NumberCompare;->applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 61
    :cond_8
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 20
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "arg":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/Procedure;

    .line 68
    .local v15, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v0, p1

    iget-object v10, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 70
    .local v10, "out":Lgnu/lists/Consumer;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v17, v0

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 72
    new-instance v8, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v8}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 73
    .local v8, "nodes":Lgnu/kawa/xml/SortedNodes;
    invoke-static {v2, v8}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    move-object/from16 v16, v8

    .line 85
    .end local v8    # "nodes":Lgnu/kawa/xml/SortedNodes;
    .local v16, "values":Lgnu/mapping/Values;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/Values;->size()I

    move-result v3

    .line 86
    .local v3, "count":I
    const/4 v7, 0x0

    .line 87
    .local v7, "it":I
    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    .line 90
    .local v4, "countObj":Lgnu/math/IntNum;
    invoke-virtual {v15}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v11

    .line 91
    .local v11, "pmax":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 93
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    .line 95
    .local v5, "dot":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    move/from16 v17, v0

    const/16 v18, 0x52

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    sub-int v12, v3, v6

    .line 96
    .local v12, "pos":I
    :goto_2
    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v13

    .line 97
    .local v13, "posObj":Lgnu/math/IntNum;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v11, v0, :cond_5

    invoke-virtual {v15, v5, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 99
    .local v14, "pred_res":Ljava/lang/Object;
    :goto_3
    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v14, v0, v1}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 100
    invoke-interface {v10, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 91
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v3    # "count":I
    .end local v4    # "countObj":Lgnu/math/IntNum;
    .end local v5    # "dot":Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "it":I
    .end local v11    # "pmax":I
    .end local v12    # "pos":I
    .end local v13    # "posObj":Lgnu/math/IntNum;
    .end local v14    # "pred_res":Ljava/lang/Object;
    .end local v16    # "values":Lgnu/mapping/Values;
    :cond_1
    instance-of v0, v2, Lgnu/mapping/Values;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v16, v2

    .line 77
    check-cast v16, Lgnu/mapping/Values;

    .restart local v16    # "values":Lgnu/mapping/Values;
    goto :goto_0

    .line 80
    .end local v16    # "values":Lgnu/mapping/Values;
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v9

    .line 81
    .local v9, "one":Lgnu/math/IntNum;
    invoke-virtual {v15, v2, v9, v9}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-wide/16 v18, 0x1

    invoke-static/range {v17 .. v19}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 82
    invoke-interface {v10, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 102
    .end local v9    # "one":Lgnu/math/IntNum;
    :cond_3
    return-void

    .line 95
    .restart local v3    # "count":I
    .restart local v4    # "countObj":Lgnu/math/IntNum;
    .restart local v5    # "dot":Ljava/lang/Object;
    .restart local v6    # "i":I
    .restart local v7    # "it":I
    .restart local v11    # "pmax":I
    .restart local v16    # "values":Lgnu/mapping/Values;
    :cond_4
    add-int/lit8 v12, v6, 0x1

    goto :goto_2

    .line 97
    .restart local v12    # "pos":I
    .restart local v13    # "posObj":Lgnu/math/IntNum;
    :cond_5
    invoke-virtual {v15, v5, v13, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_3
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 108
    .local v6, "args":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    aget-object v1, v6, v3

    .line 109
    .local v1, "exp1":Lgnu/expr/Expression;
    aget-object v7, v6, v2

    .line 110
    .local v7, "exp2":Lgnu/expr/Expression;
    instance-of v3, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v1, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 113
    invoke-virtual {v7, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    instance-of v3, v7, Lgnu/expr/LambdaExp;

    if-nez v3, :cond_1

    .line 118
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v3, p3, Lgnu/expr/ConsumerTarget;

    if-nez v3, :cond_2

    .line 124
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 128
    check-cast v0, Lgnu/expr/LambdaExp;

    .line 129
    .local v0, "lexp2":Lgnu/expr/LambdaExp;
    sget-object v3, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 136
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x2002

    return v0
.end method
