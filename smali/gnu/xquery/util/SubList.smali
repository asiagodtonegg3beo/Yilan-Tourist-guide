.class public Lgnu/xquery/util/SubList;
.super Lgnu/mapping/MethodProc;
.source "SubList.java"


# static fields
.field public static final subList:Lgnu/xquery/util/SubList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lgnu/xquery/util/SubList;

    invoke-direct {v0}, Lgnu/xquery/util/SubList;-><init>()V

    sput-object v0, Lgnu/xquery/util/SubList;->subList:Lgnu/xquery/util/SubList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V
    .locals 9
    .param p0, "seq"    # Ljava/lang/Object;
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 20
    instance-of v6, p0, Lgnu/mapping/Values;

    if-eqz v6, :cond_5

    move-object v5, p0

    .line 22
    check-cast v5, Lgnu/mapping/Values;

    .line 23
    .local v5, "vals":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .line 24
    .local v2, "n":I
    const/4 v1, 0x0

    .line 25
    .local v1, "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-double v6, v2

    cmpg-double v6, v6, p1

    if-gez v6, :cond_2

    .line 27
    invoke-virtual {v5, v1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 28
    if-gez v1, :cond_0

    .line 47
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v5    # "vals":Lgnu/mapping/Values;
    :cond_1
    :goto_0
    return-void

    .line 31
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v5    # "vals":Lgnu/mapping/Values;
    :cond_2
    move v4, v1

    .line 32
    .local v4, "startPosition":I
    move v0, v1

    .local v0, "endPosition":I
    move v3, v2

    .line 33
    .end local v2    # "n":I
    .local v3, "n":I
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    int-to-double v6, v3

    cmpg-double v6, v6, p3

    if-gez v6, :cond_3

    .line 35
    invoke-virtual {v5, v1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 36
    if-gez v1, :cond_4

    .line 40
    :cond_3
    invoke-virtual {v5, v4, v0, p5}, Lgnu/mapping/Values;->consumeIRange(IILgnu/lists/Consumer;)I

    goto :goto_0

    .line 38
    :cond_4
    move v0, v1

    move v3, v2

    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_1

    .line 44
    .end local v0    # "endPosition":I
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "startPosition":I
    .end local v5    # "vals":Lgnu/mapping/Values;
    :cond_5
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v6, p3, v6

    if-ltz v6, :cond_1

    .line 45
    invoke-interface {p5, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 51
    iget-object v6, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 52
    .local v6, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "seq":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v2, v4

    .line 54
    .local v2, "d1":D
    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 55
    .local v7, "eof":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "arg2":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 57
    if-eq v0, v7, :cond_0

    invoke-static {v0}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v8, v4

    .line 59
    .local v8, "d2":D
    :goto_0
    add-double v4, v2, v8

    invoke-static/range {v1 .. v6}, Lgnu/xquery/util/SubList;->subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V

    .line 60
    return-void

    .line 57
    .end local v8    # "d2":D
    :cond_0
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x3002

    return v0
.end method
