.class public Lgnu/xquery/util/Average;
.super Lgnu/mapping/Procedure1;
.source "Average.java"


# static fields
.field public static final avg:Lgnu/xquery/util/Average;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lgnu/xquery/util/Average;

    const-string v1, "avg"

    invoke-direct {v0, v1}, Lgnu/xquery/util/Average;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/Average;->avg:Lgnu/xquery/util/Average;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 22
    .local v3, "sum":Lgnu/mapping/Values;
    const/4 v0, 0x0

    .line 23
    .local v0, "count":I
    instance-of v5, p1, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 25
    check-cast v4, Lgnu/lists/TreeList;

    .line 26
    .local v4, "tlist":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    .line 29
    .end local v3    # "sum":Lgnu/mapping/Values;
    .local v1, "index":I
    :goto_0
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, "next":Ljava/lang/Object;
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v2, v5, :cond_0

    .line 42
    .end local v1    # "index":I
    .end local v2    # "next":Ljava/lang/Object;
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    :goto_1
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v5, :cond_3

    .line 44
    :goto_2
    return-object v3

    .line 32
    .restart local v1    # "index":I
    .restart local v2    # "next":Ljava/lang/Object;
    .restart local v4    # "tlist":Lgnu/lists/TreeList;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v3, v5, :cond_1

    move-object v3, v2

    .line 34
    .local v3, "sum":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 35
    goto :goto_0

    .line 33
    .end local v3    # "sum":Ljava/lang/Object;
    :cond_1
    sget-object v5, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    invoke-virtual {v5, v3, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 39
    .end local v1    # "index":I
    .end local v2    # "next":Ljava/lang/Object;
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    .local v3, "sum":Lgnu/mapping/Values;
    :cond_2
    const/4 v0, 0x1

    .line 40
    move-object v3, p1

    .local v3, "sum":Ljava/lang/Object;
    goto :goto_1

    .line 44
    .end local v3    # "sum":Ljava/lang/Object;
    :cond_3
    sget-object v5, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "sum":Ljava/lang/Object;
    goto :goto_2
.end method
