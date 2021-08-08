.class public Lorg/locationtech/jts/util/PriorityQueue;
.super Ljava/lang/Object;
.source "PriorityQueue.java"


# instance fields
.field private items:Ljava/util/ArrayList;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method private reorder(I)V
    .locals 4
    .param p1, "hole"    # I

    .prologue
    .line 119
    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "tmp":Ljava/lang/Object;
    :goto_0
    mul-int/lit8 v2, p1, 0x2

    iget v3, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    if-gt v2, v3, :cond_1

    .line 122
    mul-int/lit8 v0, p1, 0x2

    .line 123
    .local v0, "child":I
    iget v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    .line 124
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    iget-object v3, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    move p1, v0

    goto :goto_0

    .line 131
    .end local v0    # "child":I
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Comparable;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/Comparable;

    .prologue
    .line 45
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    .line 49
    iget v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    .line 51
    .local v0, "hole":I
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    .line 92
    iget-object v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-virtual {p0}, Lorg/locationtech/jts/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "minItem":Ljava/lang/Object;
    iget-object v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/locationtech/jts/util/PriorityQueue;->items:Ljava/util/ArrayList;

    iget v3, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    .line 106
    invoke-direct {p0, v4}, Lorg/locationtech/jts/util/PriorityQueue;->reorder(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/locationtech/jts/util/PriorityQueue;->size:I

    return v0
.end method
