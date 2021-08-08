.class public Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;
.super Ljava/lang/Object;
.source "TrianglePredicate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRobustInCircle(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 12
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 285
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->isInCircleNonRobust(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    .line 286
    .local v3, "nonRobustInCircle":Z
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->isInCircleDDSlow(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 287
    .local v2, "isInCircleDD":Z
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->isInCircleCC(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 289
    .local v1, "isInCircleCC":Z
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/geom/Triangle;->circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 290
    .local v0, "circumCentre":Lorg/locationtech/jts/geom/Coordinate;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p radius diff a = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 292
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    if-ne v3, v2, :cond_0

    if-eq v3, v1, :cond_1

    .line 295
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inCircle robustness failure (double result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DD result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CC result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    const/4 v6, 0x4

    new-array v6, v6, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    invoke-direct {v5, v6}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-static {v5}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Circumcentre = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/locationtech/jts/io/WKTWriter;->toPoint(Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p radius diff a = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p radius diff b = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p radius diff c = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 311
    :cond_1
    return-void
.end method

.method public static isInCircleCC(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 8
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/geom/Triangle;->circumcentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 268
    .local v0, "cc":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 269
    .local v2, "ccRadius":D
    invoke-virtual {p3, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    sub-double v4, v6, v2

    .line 270
    .local v4, "pRadiusDiff":D
    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInCircleDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 10
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 190
    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 191
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 192
    .local v0, "aTerm":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 193
    invoke-static {p0, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    .line 194
    .local v1, "bTerm":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 195
    invoke-static {p0, p1, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 196
    .local v2, "cTerm":Lorg/locationtech/jts/math/DD;
    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    iget-wide v8, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->sqr(D)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 197
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v4

    .line 199
    .local v4, "pTerm":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    .line 200
    .local v5, "sum":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v5}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 202
    .local v3, "isInCircle":Z
    :goto_0
    return v3

    .line 200
    .end local v3    # "isInCircle":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInCircleDDNormalized(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 22
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    .line 223
    .local v5, "adx":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 224
    .local v6, "ady":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v9

    .line 225
    .local v9, "bdx":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    .line 226
    .local v10, "bdy":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v13

    .line 227
    .local v13, "cdx":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v14

    .line 229
    .local v14, "cdy":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v5, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v9, v6}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v4

    .line 230
    .local v4, "abdet":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v9, v14}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v13, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v8

    .line 231
    .local v8, "bcdet":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v13, v6}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v5, v14}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v12

    .line 232
    .local v12, "cadet":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v5, v5}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v6, v6}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    .line 233
    .local v7, "alift":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v9, v9}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v10, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 234
    .local v11, "blift":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v13, v13}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    invoke-virtual {v14, v14}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v15

    .line 236
    .local v15, "clift":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v7, v8}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    .line 237
    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    .line 238
    invoke-virtual {v15, v4}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    .line 240
    .local v17, "sum":Lorg/locationtech/jts/math/DD;
    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    const/16 v16, 0x1

    .line 242
    .local v16, "isInCircle":Z
    :goto_0
    return v16

    .line 240
    .end local v16    # "isInCircle":Z
    :cond_0
    const/16 v16, 0x0

    goto :goto_0
.end method

.method public static isInCircleDDSlow(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 21
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 145
    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v6

    .line 146
    .local v6, "px":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v7

    .line 147
    .local v7, "py":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v8

    .line 148
    .local v8, "ax":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v9

    .line 149
    .local v9, "ay":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 150
    .local v2, "bx":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    .line 151
    .local v3, "by":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v4

    .line 152
    .local v4, "cx":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v10, v11}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v5

    .line 154
    .local v5, "cy":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v8, v8}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    invoke-virtual {v9, v9}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    .line 155
    invoke-static/range {v2 .. v7}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDSlow(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v14

    .line 156
    .local v14, "aTerm":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v2, v2}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    invoke-virtual {v3, v3}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v20

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 157
    invoke-static/range {v8 .. v13}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDSlow(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v15

    .line 158
    .local v15, "bTerm":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v4, v4}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    invoke-virtual {v5, v5}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v20

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move-object v13, v7

    .line 159
    invoke-static/range {v8 .. v13}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDSlow(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v16

    .line 160
    .local v16, "cTerm":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v6, v6}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    invoke-virtual {v7, v7}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v20

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    .line 161
    invoke-static/range {v8 .. v13}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triAreaDDSlow(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v18

    .line 163
    .local v18, "pTerm":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v14, v15}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v19

    .line 164
    .local v19, "sum":Lorg/locationtech/jts/math/DD;
    invoke-virtual/range {v19 .. v19}, Lorg/locationtech/jts/math/DD;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    const/16 v17, 0x1

    .line 166
    .local v17, "isInCircle":Z
    :goto_0
    return v17

    .line 164
    .end local v17    # "isInCircle":Z
    :cond_0
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static isInCircleNonRobust(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 10
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 52
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 53
    invoke-static {p0, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 54
    invoke-static {p0, p1, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 55
    invoke-static {p0, p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->triArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, "isInCircle":Z
    :goto_0
    return v0

    .line 55
    .end local v0    # "isInCircle":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInCircleNormalized(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 32
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    sub-double v4, v28, v30

    .line 81
    .local v4, "adx":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    sub-double v6, v28, v30

    .line 82
    .local v6, "ady":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    sub-double v12, v28, v30

    .line 83
    .local v12, "bdx":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    sub-double v14, v28, v30

    .line 84
    .local v14, "bdy":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v30, v0

    sub-double v20, v28, v30

    .line 85
    .local v20, "cdx":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    sub-double v22, v28, v30

    .line 87
    .local v22, "cdy":D
    mul-double v28, v4, v14

    mul-double v30, v12, v6

    sub-double v2, v28, v30

    .line 88
    .local v2, "abdet":D
    mul-double v28, v12, v22

    mul-double v30, v20, v14

    sub-double v10, v28, v30

    .line 89
    .local v10, "bcdet":D
    mul-double v28, v20, v6

    mul-double v30, v4, v22

    sub-double v18, v28, v30

    .line 90
    .local v18, "cadet":D
    mul-double v28, v4, v4

    mul-double v30, v6, v6

    add-double v8, v28, v30

    .line 91
    .local v8, "alift":D
    mul-double v28, v12, v12

    mul-double v30, v14, v14

    add-double v16, v28, v30

    .line 92
    .local v16, "blift":D
    mul-double v28, v20, v20

    mul-double v30, v22, v22

    add-double v24, v28, v30

    .line 94
    .local v24, "clift":D
    mul-double v28, v8, v10

    mul-double v30, v16, v18

    add-double v28, v28, v30

    mul-double v30, v24, v2

    add-double v26, v28, v30

    .line 95
    .local v26, "disc":D
    const-wide/16 v28, 0x0

    cmpl-double v28, v26, v28

    if-lez v28, :cond_0

    const/16 v28, 0x1

    :goto_0
    return v28

    :cond_0
    const/16 v28, 0x0

    goto :goto_0
.end method

.method public static isInCircleRobust(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 1
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 128
    invoke-static {p0, p1, p2, p3}, Lorg/locationtech/jts/triangulate/quadedge/TrianglePredicate;->isInCircleNormalized(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    return v0
.end method

.method private static triArea(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 8
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 107
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static triAreaDDFast(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/DD;
    .locals 6
    .param p0, "a"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 208
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v2, v4, v5}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 210
    invoke-static {v4, v5}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 212
    .local v0, "t1":Lorg/locationtech/jts/math/DD;
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v2, v4, v5}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 214
    invoke-static {v4, v5}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/math/DD;->selfSubtract(D)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    .line 216
    .local v1, "t2":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    return-object v2
.end method

.method public static triAreaDDSlow(Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 3
    .param p0, "ax"    # Lorg/locationtech/jts/math/DD;
    .param p1, "ay"    # Lorg/locationtech/jts/math/DD;
    .param p2, "bx"    # Lorg/locationtech/jts/math/DD;
    .param p3, "by"    # Lorg/locationtech/jts/math/DD;
    .param p4, "cx"    # Lorg/locationtech/jts/math/DD;
    .param p5, "cy"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 183
    invoke-virtual {p2, p0}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {p5, p1}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {p3, p1}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    .line 184
    invoke-virtual {p4, p0}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method
