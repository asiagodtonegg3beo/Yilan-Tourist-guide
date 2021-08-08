.class public Lgnu/xquery/util/ValuesEvery;
.super Lgnu/mapping/MethodProc;
.source "ValuesEvery.java"


# static fields
.field public static final every:Lgnu/xquery/util/ValuesEvery;

.field public static final some:Lgnu/xquery/util/ValuesEvery;


# instance fields
.field matchAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->every:Lgnu/xquery/util/ValuesEvery;

    .line 16
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->some:Lgnu/xquery/util/ValuesEvery;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "matchAll"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    iput-boolean p1, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Procedure;

    .line 28
    .local v2, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "val":Ljava/lang/Object;
    iget-boolean v1, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    .line 30
    .local v1, "ok":Z
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 31
    instance-of v5, v3, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 33
    const/4 v0, 0x0

    .local v0, "ipos":I
    move-object v4, v3

    .line 34
    check-cast v4, Lgnu/mapping/Values;

    .line 35
    .local v4, "values":Lgnu/mapping/Values;
    :cond_0
    invoke-virtual {v4, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v4, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v1

    .line 39
    iget-boolean v5, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    if-eq v1, v5, :cond_0

    .line 48
    .end local v0    # "ipos":I
    .end local v4    # "values":Lgnu/mapping/Values;
    :cond_1
    :goto_0
    iget-object v5, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v5, v1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 49
    return-void

    .line 45
    :cond_2
    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 46
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x2002

    return v0
.end method
