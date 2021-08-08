.class public Lorg/locationtech/jts/precision/EnhancedPrecisionOp;
.super Ljava/lang/Object;
.source "EnhancedPrecisionOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "distance"    # D

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 196
    :goto_0
    return-object v4

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v3, v1

    .line 191
    .local v3, "originalEx":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsOp;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 192
    .local v0, "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    invoke-virtual {v0, p0, p1, p2}, Lorg/locationtech/jts/precision/CommonBitsOp;->buffer(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 194
    .local v5, "resultEP":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .end local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .end local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :catch_1
    move-exception v2

    .line 200
    .local v2, "ex2":Ljava/lang/RuntimeException;
    throw v3

    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    .restart local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .restart local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    move-object v4, v5

    .line 196
    goto :goto_0
.end method

.method public static difference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->difference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 123
    :goto_0
    return-object v4

    .line 108
    :catch_0
    move-exception v1

    .line 110
    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v3, v1

    .line 118
    .local v3, "originalEx":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsOp;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 119
    .local v0, "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    invoke-virtual {v0, p0, p1}, Lorg/locationtech/jts/precision/CommonBitsOp;->difference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 121
    .local v5, "resultEP":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .end local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "ex2":Ljava/lang/RuntimeException;
    throw v3

    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    .restart local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .restart local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    move-object v4, v5

    .line 123
    goto :goto_0
.end method

.method public static intersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->intersection(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    :goto_0
    return-object v4

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v3, v1

    .line 48
    .local v3, "originalEx":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsOp;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 49
    .local v0, "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    invoke-virtual {v0, p0, p1}, Lorg/locationtech/jts/precision/CommonBitsOp;->intersection(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 51
    .local v5, "resultEP":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .end local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .end local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "ex2":Ljava/lang/RuntimeException;
    throw v3

    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    .restart local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .restart local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    move-object v4, v5

    .line 53
    goto :goto_0
.end method

.method public static symDifference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->symDifference(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    :goto_0
    return-object v4

    .line 143
    :catch_0
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v3, v1

    .line 153
    .local v3, "originalEx":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsOp;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 154
    .local v0, "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    invoke-virtual {v0, p0, p1}, Lorg/locationtech/jts/precision/CommonBitsOp;->symDifference(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 156
    .local v5, "resultEP":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .end local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :catch_1
    move-exception v2

    .line 162
    .local v2, "ex2":Ljava/lang/RuntimeException;
    throw v3

    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    .restart local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .restart local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    move-object v4, v5

    .line 158
    goto :goto_0
.end method

.method public static union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p0, "geom0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "geom1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->union(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 88
    :goto_0
    return-object v4

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/RuntimeException;
    move-object v3, v1

    .line 83
    .local v3, "originalEx":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Lorg/locationtech/jts/precision/CommonBitsOp;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/locationtech/jts/precision/CommonBitsOp;-><init>(Z)V

    .line 84
    .local v0, "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    invoke-virtual {v0, p0, p1}, Lorg/locationtech/jts/precision/CommonBitsOp;->union(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    .line 86
    .local v5, "resultEP":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .end local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :catch_1
    move-exception v2

    .line 92
    .local v2, "ex2":Ljava/lang/RuntimeException;
    throw v3

    .end local v2    # "ex2":Ljava/lang/RuntimeException;
    .restart local v0    # "cbo":Lorg/locationtech/jts/precision/CommonBitsOp;
    .restart local v5    # "resultEP":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    move-object v4, v5

    .line 88
    goto :goto_0
.end method
