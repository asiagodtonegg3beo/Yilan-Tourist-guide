.class public Lorg/locationtech/jts/algorithm/RobustLineIntersector;
.super Lorg/locationtech/jts/algorithm/LineIntersector;
.source "RobustLineIntersector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/locationtech/jts/algorithm/LineIntersector;-><init>()V

    .line 33
    return-void
.end method

.method private checkDD(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 6
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 246
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/CGAlgorithmsDD;->intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 247
    .local v0, "intPtDD":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isInSegmentEnvelopes(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 248
    .local v1, "isIn":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DD in env = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  --------------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p5, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 250
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method private computeCollinearIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 8
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 152
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    .line 153
    .local v0, "p1q1p2":Z
    invoke-static {p1, p2, p4}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 154
    .local v1, "p1q2p2":Z
    invoke-static {p3, p4, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    .line 155
    .local v2, "q1p1q2":Z
    invoke-static {p3, p4, p2}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    .line 157
    .local v3, "q1p2q2":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 158
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p3, v7, v6

    .line 159
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p4, v6, v4

    move v4, v5

    .line 187
    :cond_0
    :goto_0
    return v4

    .line 162
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 163
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p1, v7, v6

    .line 164
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p2, v6, v4

    move v4, v5

    .line 165
    goto :goto_0

    .line 167
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 168
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p3, v7, v6

    .line 169
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p1, v6, v4

    .line 170
    invoke-virtual {p3, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0

    .line 172
    :cond_4
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 173
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p3, v7, v6

    .line 174
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p2, v6, v4

    .line 175
    invoke-virtual {p3, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_0

    :cond_5
    move v4, v5

    goto :goto_0

    .line 177
    :cond_6
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 178
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p4, v7, v6

    .line 179
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p1, v6, v4

    .line 180
    invoke-virtual {p4, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-eqz v3, :cond_0

    :cond_7
    move v4, v5

    goto :goto_0

    .line 182
    :cond_8
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 183
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p4, v7, v6

    .line 184
    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p2, v6, v4

    .line 185
    invoke-virtual {p4, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v0, :cond_9

    if-eqz v2, :cond_0

    :cond_9
    move v4, v5

    goto :goto_0

    :cond_a
    move v4, v6

    .line 187
    goto :goto_0
.end method

.method private intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intersectionWithNormalization(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 225
    .local v0, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isInSegmentEnvelopes(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    .end local v0    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->nearestEndpoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 237
    .restart local v0    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 240
    :cond_1
    return-object v0
.end method

.method private intersectionWithNormalization(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 14
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 257
    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v3, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 258
    .local v3, "n1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 259
    .local v4, "n2":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 260
    .local v5, "n3":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v6, Lorg/locationtech/jts/geom/Coordinate;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 261
    .local v6, "n4":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .local v7, "normPt":Lorg/locationtech/jts/geom/Coordinate;
    move-object v2, p0

    .line 262
    invoke-direct/range {v2 .. v7}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->normalizeToEnvCentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 264
    invoke-direct {p0, v3, v4, v5, v6}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->safeHCoordinateIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    .line 266
    .local v8, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v10, v8, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double/2addr v10, v12

    iput-wide v10, v8, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 267
    iget-wide v10, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v10, v12

    iput-wide v10, v8, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 269
    return-object v8
.end method

.method private isInSegmentEnvelopes(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v3

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    invoke-direct {v0, v4, v5}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 412
    .local v0, "env0":Lorg/locationtech/jts/geom/Envelope;
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v4, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->inputLines:[[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v5, v5, v2

    aget-object v5, v5, v2

    invoke-direct {v1, v4, v5}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 413
    .local v1, "env1":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static nearestEndpoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 438
    move-object v4, p0

    .line 439
    .local v4, "nearestPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {p0, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 441
    .local v2, "minDist":D
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 442
    .local v0, "dist":D
    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    .line 443
    move-wide v2, v0

    .line 444
    move-object v4, p1

    .line 446
    :cond_0
    invoke-static {p2, p0, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 447
    cmpg-double v5, v0, v2

    if-gez v5, :cond_1

    .line 448
    move-wide v2, v0

    .line 449
    move-object v4, p2

    .line 451
    :cond_1
    invoke-static {p3, p0, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 452
    cmpg-double v5, v0, v2

    if-gez v5, :cond_2

    .line 453
    move-wide v2, v0

    .line 454
    move-object v4, p3

    .line 456
    :cond_2
    return-object v4
.end method

.method private normalizeToEnvCentre(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 36
    .param p1, "n00"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "n01"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "n10"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "n11"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "normPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 345
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    .line 346
    .local v24, "minX0":D
    :goto_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    .line 347
    .local v28, "minY0":D
    :goto_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    .line 348
    .local v16, "maxX0":D
    :goto_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    .line 350
    .local v20, "maxY0":D
    :goto_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_4

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    .line 351
    .local v26, "minX1":D
    :goto_4
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_5

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    .line 352
    .local v30, "minY1":D
    :goto_5
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_6

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    .line 353
    .local v18, "maxX1":D
    :goto_6
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_7

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    .line 355
    .local v22, "maxY1":D
    :goto_7
    cmpl-double v32, v24, v26

    if-lez v32, :cond_8

    move-wide/from16 v12, v24

    .line 356
    .local v12, "intMinX":D
    :goto_8
    cmpg-double v32, v16, v18

    if-gez v32, :cond_9

    move-wide/from16 v4, v16

    .line 357
    .local v4, "intMaxX":D
    :goto_9
    cmpl-double v32, v28, v30

    if-lez v32, :cond_a

    move-wide/from16 v14, v28

    .line 358
    .local v14, "intMinY":D
    :goto_a
    cmpg-double v32, v20, v22

    if-gez v32, :cond_b

    move-wide/from16 v6, v20

    .line 360
    .local v6, "intMaxY":D
    :goto_b
    add-double v32, v12, v4

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v8, v32, v34

    .line 361
    .local v8, "intMidX":D
    add-double v32, v14, v6

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v10, v32, v34

    .line 362
    .local v10, "intMidY":D
    move-object/from16 v0, p5

    iput-wide v8, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 363
    move-object/from16 v0, p5

    iput-wide v10, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 376
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 377
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p2

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p2

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 378
    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p3

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p3

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 379
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p4

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v32, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p4

    iput-wide v0, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 380
    return-void

    .line 345
    .end local v4    # "intMaxX":D
    .end local v6    # "intMaxY":D
    .end local v8    # "intMidX":D
    .end local v10    # "intMidY":D
    .end local v12    # "intMinX":D
    .end local v14    # "intMinY":D
    .end local v16    # "maxX0":D
    .end local v18    # "maxX1":D
    .end local v20    # "maxY0":D
    .end local v22    # "maxY1":D
    .end local v24    # "minX0":D
    .end local v26    # "minX1":D
    .end local v28    # "minY0":D
    .end local v30    # "minY1":D
    :cond_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v24, v0

    goto/16 :goto_0

    .line 346
    .restart local v24    # "minX0":D
    :cond_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v28, v0

    goto/16 :goto_1

    .line 347
    .restart local v28    # "minY0":D
    :cond_2
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    goto/16 :goto_2

    .line 348
    .restart local v16    # "maxX0":D
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v20, v0

    goto/16 :goto_3

    .line 350
    .restart local v20    # "maxY0":D
    :cond_4
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v26, v0

    goto/16 :goto_4

    .line 351
    .restart local v26    # "minX1":D
    :cond_5
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v30, v0

    goto/16 :goto_5

    .line 352
    .restart local v30    # "minY1":D
    :cond_6
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    goto/16 :goto_6

    .line 353
    .restart local v18    # "maxX1":D
    :cond_7
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v22, v0

    goto/16 :goto_7

    .restart local v22    # "maxY1":D
    :cond_8
    move-wide/from16 v12, v26

    .line 355
    goto/16 :goto_8

    .restart local v12    # "intMinX":D
    :cond_9
    move-wide/from16 v4, v18

    .line 356
    goto/16 :goto_9

    .restart local v4    # "intMaxX":D
    :cond_a
    move-wide/from16 v14, v30

    .line 357
    goto/16 :goto_a

    .restart local v14    # "intMinY":D
    :cond_b
    move-wide/from16 v6, v22

    .line 358
    goto/16 :goto_b
.end method

.method private normalizeToMinimum(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 10
    .param p1, "n1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "n2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "n3"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "n4"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p5, "normPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 319
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->smallestInAbsValue(DDDD)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 320
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v6, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->smallestInAbsValue(DDDD)D

    move-result-wide v0

    iput-wide v0, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 321
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 322
    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 323
    iget-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 324
    iget-wide v0, p4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, p4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v2, p5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 325
    return-void
.end method

.method private safeHCoordinateIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/HCoordinate;->intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;
    :try_end_0
    .catch Lorg/locationtech/jts/algorithm/NotRepresentableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Lorg/locationtech/jts/algorithm/NotRepresentableException;
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->nearestEndpoint(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0
.end method

.method private smallestInAbsValue(DDDD)D
    .locals 7
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # D

    .prologue
    .line 384
    move-wide v0, p1

    .line 385
    .local v0, "x":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 386
    .local v2, "xabs":D
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    .line 387
    move-wide v0, p3

    .line 388
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 390
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    .line 391
    move-wide v0, p5

    .line 392
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 394
    :cond_1
    invoke-static {p7, p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_2

    .line 395
    move-wide v0, p7

    .line 397
    :cond_2
    return-wide v0
.end method


# virtual methods
.method protected computeIntersect(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 9
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "q1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "q2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    iput-boolean v5, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 58
    invoke-static {p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v5

    .line 64
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    .line 65
    .local v0, "Pq1":I
    invoke-static {p1, p2, p4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    .line 67
    .local v1, "Pq2":I
    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    :cond_2
    if-gez v0, :cond_3

    if-ltz v1, :cond_0

    .line 71
    :cond_3
    invoke-static {p3, p4, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    .line 72
    .local v2, "Qp1":I
    invoke-static {p3, p4, p2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v3

    .line 74
    .local v3, "Qp2":I
    if-lez v2, :cond_4

    if-gtz v3, :cond_0

    :cond_4
    if-gez v2, :cond_5

    if-ltz v3, :cond_0

    .line 78
    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    move v4, v6

    .line 82
    .local v4, "collinear":Z
    :goto_1
    if-eqz v4, :cond_7

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->computeCollinearIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v5

    goto :goto_0

    .end local v4    # "collinear":Z
    :cond_6
    move v4, v5

    .line 78
    goto :goto_1

    .line 99
    .restart local v4    # "collinear":Z
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_11

    .line 100
    :cond_8
    iput-boolean v5, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 118
    invoke-virtual {p1, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 119
    invoke-virtual {p1, p4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 120
    :cond_9
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p1, v7, v5

    :cond_a
    :goto_2
    move v5, v6

    .line 147
    goto :goto_0

    .line 122
    :cond_b
    invoke-virtual {p2, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 123
    invoke-virtual {p2, p4}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 124
    :cond_c
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    aput-object p2, v7, v5

    goto :goto_2

    .line 130
    :cond_d
    if-nez v0, :cond_e

    .line 131
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, p3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v5

    goto :goto_2

    .line 133
    :cond_e
    if-nez v1, :cond_f

    .line 134
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v5

    goto :goto_2

    .line 136
    :cond_f
    if-nez v2, :cond_10

    .line 137
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v5

    goto :goto_2

    .line 139
    :cond_10
    if-nez v3, :cond_a

    .line 140
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    new-instance v8, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v8, p2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v8, v7, v5

    goto :goto_2

    .line 144
    :cond_11
    iput-boolean v6, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 145
    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intPt:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->intersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    aput-object v8, v7, v5

    goto :goto_2
.end method

.method public computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 38
    invoke-static {p2, p3, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {p2, p3, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-static {p3, p2, p1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    iput-boolean v2, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 42
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iput-boolean v1, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->isProper:Z

    .line 45
    :cond_1
    iput v2, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->result:I

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_2
    iput v1, p0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;->result:I

    goto :goto_0
.end method
