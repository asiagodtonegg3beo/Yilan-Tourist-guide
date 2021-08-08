.class public Lgnu/xquery/util/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/Reduce;->sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "zero"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    instance-of v4, p0, Lgnu/mapping/Values;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 23
    check-cast v3, Lgnu/lists/TreeList;

    .line 24
    .local v3, "tlist":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    .line 25
    .local v1, "pos":I
    invoke-virtual {v3, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "next":Ljava/lang/Object;
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v0, v4, :cond_0

    .line 40
    .end local v0    # "next":Ljava/lang/Object;
    .end local v1    # "pos":I
    .end local v3    # "tlist":Lgnu/lists/TreeList;
    .end local p1    # "zero":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 28
    .restart local v0    # "next":Ljava/lang/Object;
    .restart local v1    # "pos":I
    .restart local v3    # "tlist":Lgnu/lists/TreeList;
    .restart local p1    # "zero":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v3, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 32
    invoke-virtual {v3, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 33
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v0, v4, :cond_1

    move-object p1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    const/4 v4, 0x1

    invoke-static {v4, v2, v0}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 40
    .end local v0    # "next":Ljava/lang/Object;
    .end local v1    # "pos":I
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "tlist":Lgnu/lists/TreeList;
    :cond_2
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    move-object p1, v4

    goto :goto_0
.end method
