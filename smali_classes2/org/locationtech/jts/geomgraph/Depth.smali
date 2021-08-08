.class public Lorg/locationtech/jts/geomgraph/Depth;
.super Ljava/lang/Object;
.source "Depth.java"


# static fields
.field private static final NULL_VALUE:I = -0x1


# instance fields
.field private depth:[[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    filled-new-array {v4, v5}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 39
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 40
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public static depthAtLocation(I)I
    .locals 1
    .param p0, "location"    # I

    .prologue
    .line 29
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    .line 30
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(III)V
    .locals 2
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I
    .param p3, "location"    # I

    .prologue
    .line 60
    if-nez p3, :cond_0

    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    aget v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p2

    .line 62
    :cond_0
    return-void
.end method

.method public add(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 7
    .param p1, "lbl"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    const/4 v6, 0x2

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 87
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 88
    invoke-virtual {p1, v0, v1}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(II)I

    move-result v2

    .line 89
    .local v2, "loc":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/geomgraph/Depth;->isNull(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v3, v3, v0

    invoke-static {v2}, Lorg/locationtech/jts/geomgraph/Depth;->depthAtLocation(I)I

    move-result v4

    aput v4, v3, v1

    .line 87
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v3, v3, v0

    aget v4, v3, v1

    invoke-static {v2}, Lorg/locationtech/jts/geomgraph/Depth;->depthAtLocation(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v1

    goto :goto_2

    .line 86
    .end local v2    # "loc":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "j":I
    :cond_4
    return-void
.end method

.method public getDelta(I)I
    .locals 3
    .param p1, "geomIndex"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDepth(II)I
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getLocation(II)I
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 69
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 70
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 74
    .end local v1    # "j":I
    :goto_2
    return v2

    .line 69
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "j":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public isNull(I)Z
    .locals 3
    .param p1, "geomIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 2
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 115
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/Depth;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 117
    .local v2, "minDepth":I
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v4, v4, v0

    aget v4, v4, v6

    if-ge v4, v2, :cond_0

    .line 118
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v4, v4, v0

    aget v2, v4, v6

    .line 120
    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 121
    :cond_1
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "newValue":I
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-le v4, v2, :cond_2

    .line 124
    const/4 v3, 0x1

    .line 125
    :cond_2
    iget-object v4, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v4, v4, v0

    aput v3, v4, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "j":I
    .end local v2    # "minDepth":I
    .end local v3    # "newValue":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_4
    return-void
.end method

.method public setDepth(III)V
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I
    .param p3, "depthValue"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Depth;->depth:[[I

    aget-object v1, v1, v2

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
