.class public Lgnu/xquery/util/OrderedMap;
.super Lgnu/mapping/MethodProc;
.source "OrderedMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final orderedMap:Lgnu/xquery/util/OrderedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lgnu/xquery/util/OrderedMap;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedMap;-><init>()V

    sput-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    .line 40
    sget-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.xquery.util.CompileMisc:validateApplyOrderedMap"

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/OrderedMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static makeTuple$V([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 46
    return-object p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "args":[Ljava/lang/Object;
    aget-object v3, v0, v5

    .line 54
    .local v3, "values":Ljava/lang/Object;
    array-length v4, v0

    if-ne v4, v7, :cond_0

    .line 56
    aget-object v2, v0, v6

    check-cast v2, Lgnu/xquery/util/OrderedTuples;

    .line 64
    .local v2, "tuples":Lgnu/xquery/util/OrderedTuples;
    :goto_0
    invoke-static {v3, v2}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 65
    invoke-virtual {v2, p1}, Lgnu/xquery/util/OrderedTuples;->run$X(Lgnu/mapping/CallContext;)V

    .line 66
    return-void

    .line 60
    .end local v2    # "tuples":Lgnu/xquery/util/OrderedTuples;
    :cond_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    new-array v1, v4, [Ljava/lang/Object;

    .line 61
    .local v1, "comps":[Ljava/lang/Object;
    array-length v4, v1

    invoke-static {v0, v7, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aget-object v4, v0, v6

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-static {v4, v1}, Lgnu/xquery/util/OrderedTuples;->make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;

    move-result-object v2

    .restart local v2    # "tuples":Lgnu/xquery/util/OrderedTuples;
    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 70
    invoke-static {p1, p2, p3, p0}, Lgnu/xquery/util/CompileMisc;->compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    .line 71
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 75
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method
