.class public Lorg/locationtech/jts/algorithm/RobustDeterminant;
.super Ljava/lang/Object;
.source "RobustDeterminant.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static orientationIndex(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 12
    .param p0, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 395
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v0, v8, v10

    .line 396
    .local v0, "dx1":D
    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v2, v8, v10

    .line 397
    .local v2, "dy1":D
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double v4, v8, v10

    .line 398
    .local v4, "dx2":D
    iget-wide v8, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double v6, v8, v10

    .line 399
    .local v6, "dy2":D
    invoke-static/range {v0 .. v7}, Lorg/locationtech/jts/algorithm/RobustDeterminant;->signOfDet2x2(DDDD)I

    move-result v8

    return v8
.end method

.method public static signOfDet2x2(DDDD)I
    .locals 12
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D

    .prologue
    .line 101
    const-wide/16 v2, 0x0

    .line 105
    .local v2, "count":J
    const/4 v6, 0x1

    .line 110
    .local v6, "sign":I
    const-wide/16 v10, 0x0

    cmpl-double v7, p0, v10

    if-eqz v7, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v7, p6, v10

    if-nez v7, :cond_6

    .line 111
    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v7, p2, v10

    if-eqz v7, :cond_1

    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-nez v7, :cond_2

    .line 112
    :cond_1
    const/4 v7, 0x0

    .line 356
    :goto_0
    return v7

    .line 114
    :cond_2
    const-wide/16 v10, 0x0

    cmpl-double v7, p2, v10

    if-lez v7, :cond_4

    .line 115
    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-lez v7, :cond_3

    .line 116
    neg-int v7, v6

    goto :goto_0

    :cond_3
    move v7, v6

    .line 119
    goto :goto_0

    .line 123
    :cond_4
    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-lez v7, :cond_5

    move v7, v6

    .line 124
    goto :goto_0

    .line 127
    :cond_5
    neg-int v7, v6

    goto :goto_0

    .line 131
    :cond_6
    const-wide/16 v10, 0x0

    cmpl-double v7, p2, v10

    if-eqz v7, :cond_7

    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-nez v7, :cond_b

    .line 132
    :cond_7
    const-wide/16 v10, 0x0

    cmpl-double v7, p6, v10

    if-lez v7, :cond_9

    .line 133
    const-wide/16 v10, 0x0

    cmpl-double v7, p0, v10

    if-lez v7, :cond_8

    move v7, v6

    .line 134
    goto :goto_0

    .line 137
    :cond_8
    neg-int v7, v6

    goto :goto_0

    .line 141
    :cond_9
    const-wide/16 v10, 0x0

    cmpl-double v7, p0, v10

    if-lez v7, :cond_a

    .line 142
    neg-int v7, v6

    goto :goto_0

    :cond_a
    move v7, v6

    .line 145
    goto :goto_0

    .line 156
    :cond_b
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p2

    if-gez v7, :cond_10

    .line 157
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p6

    if-gez v7, :cond_e

    .line 158
    cmpg-double v7, p2, p6

    if-gtz v7, :cond_d

    .line 229
    :goto_1
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p0

    if-gez v7, :cond_16

    .line 230
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p4

    if-gez v7, :cond_15

    .line 231
    cmpg-double v7, p0, p4

    if-gtz v7, :cond_14

    .line 263
    :cond_c
    :goto_2
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 266
    div-double v10, p4, p0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 267
    .local v4, "k":D
    mul-double v10, v4, p0

    sub-double p4, p4, v10

    .line 268
    mul-double v10, v4, p2

    sub-double p6, p6, v10

    .line 273
    const-wide/16 v10, 0x0

    cmpg-double v7, p6, v10

    if-gez v7, :cond_19

    .line 274
    neg-int v7, v6

    goto :goto_0

    .line 162
    .end local v4    # "k":D
    :cond_d
    neg-int v6, v6

    .line 163
    move-wide v8, p0

    .line 164
    .local v8, "swap":D
    move-wide/from16 p0, p4

    .line 165
    move-wide/from16 p4, v8

    .line 166
    move-wide v8, p2

    .line 167
    move-wide/from16 p2, p6

    .line 168
    move-wide/from16 p6, v8

    goto :goto_1

    .line 172
    .end local v8    # "swap":D
    :cond_e
    move-wide/from16 v0, p6

    neg-double v10, v0

    cmpg-double v7, p2, v10

    if-gtz v7, :cond_f

    .line 173
    neg-int v6, v6

    .line 174
    move-wide/from16 v0, p4

    neg-double v0, v0

    move-wide/from16 p4, v0

    .line 175
    move-wide/from16 v0, p6

    neg-double v0, v0

    move-wide/from16 p6, v0

    goto :goto_1

    .line 178
    :cond_f
    move-wide v8, p0

    .line 179
    .restart local v8    # "swap":D
    move-wide/from16 v0, p4

    neg-double p0, v0

    .line 180
    move-wide/from16 p4, v8

    .line 181
    move-wide v8, p2

    .line 182
    move-wide/from16 v0, p6

    neg-double p2, v0

    .line 183
    move-wide/from16 p6, v8

    goto :goto_1

    .line 188
    .end local v8    # "swap":D
    :cond_10
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p6

    if-gez v7, :cond_12

    .line 189
    neg-double v10, p2

    cmpg-double v7, v10, p6

    if-gtz v7, :cond_11

    .line 190
    neg-int v6, v6

    .line 191
    neg-double p0, p0

    .line 192
    neg-double p2, p2

    goto :goto_1

    .line 195
    :cond_11
    neg-double v8, p0

    .line 196
    .restart local v8    # "swap":D
    move-wide/from16 p0, p4

    .line 197
    move-wide/from16 p4, v8

    .line 198
    neg-double v8, p2

    .line 199
    move-wide/from16 p2, p6

    .line 200
    move-wide/from16 p6, v8

    goto :goto_1

    .line 204
    .end local v8    # "swap":D
    :cond_12
    cmpl-double v7, p2, p6

    if-ltz v7, :cond_13

    .line 205
    neg-double p0, p0

    .line 206
    neg-double p2, p2

    .line 207
    move-wide/from16 v0, p4

    neg-double v0, v0

    move-wide/from16 p4, v0

    .line 208
    move-wide/from16 v0, p6

    neg-double v0, v0

    move-wide/from16 p6, v0

    goto :goto_1

    .line 212
    :cond_13
    neg-int v6, v6

    .line 213
    neg-double v8, p0

    .line 214
    .restart local v8    # "swap":D
    move-wide/from16 v0, p4

    neg-double p0, v0

    .line 215
    move-wide/from16 p4, v8

    .line 216
    neg-double v8, p2

    .line 217
    move-wide/from16 v0, p6

    neg-double p2, v0

    .line 218
    move-wide/from16 p6, v8

    goto/16 :goto_1

    .end local v8    # "swap":D
    :cond_14
    move v7, v6

    .line 235
    goto/16 :goto_0

    :cond_15
    move v7, v6

    .line 239
    goto/16 :goto_0

    .line 243
    :cond_16
    const-wide/16 v10, 0x0

    cmpg-double v7, v10, p4

    if-gez v7, :cond_17

    .line 244
    neg-int v7, v6

    goto/16 :goto_0

    .line 247
    :cond_17
    cmpl-double v7, p0, p4

    if-ltz v7, :cond_18

    .line 248
    neg-int v6, v6

    .line 249
    neg-double p0, p0

    .line 250
    move-wide/from16 v0, p4

    neg-double v0, v0

    move-wide/from16 p4, v0

    goto/16 :goto_2

    .line 254
    :cond_18
    neg-int v7, v6

    goto/16 :goto_0

    .line 276
    .restart local v4    # "k":D
    :cond_19
    cmpl-double v7, p6, p2

    if-lez v7, :cond_1a

    move v7, v6

    .line 277
    goto/16 :goto_0

    .line 283
    :cond_1a
    add-double v10, p4, p4

    cmpl-double v7, p0, v10

    if-lez v7, :cond_1b

    .line 284
    add-double v10, p6, p6

    cmpg-double v7, p2, v10

    if-gez v7, :cond_1d

    move v7, v6

    .line 285
    goto/16 :goto_0

    .line 289
    :cond_1b
    add-double v10, p6, p6

    cmpl-double v7, p2, v10

    if-lez v7, :cond_1c

    .line 290
    neg-int v7, v6

    goto/16 :goto_0

    .line 293
    :cond_1c
    sub-double p4, p0, p4

    .line 294
    sub-double p6, p2, p6

    .line 295
    neg-int v6, v6

    .line 298
    :cond_1d
    const-wide/16 v10, 0x0

    cmpl-double v7, p6, v10

    if-nez v7, :cond_1f

    .line 299
    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-nez v7, :cond_1e

    .line 300
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 303
    :cond_1e
    neg-int v7, v6

    goto/16 :goto_0

    .line 306
    :cond_1f
    const-wide/16 v10, 0x0

    cmpl-double v7, p4, v10

    if-nez v7, :cond_20

    move v7, v6

    .line 307
    goto/16 :goto_0

    .line 315
    :cond_20
    div-double v10, p0, p4

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 316
    mul-double v10, v4, p4

    sub-double/2addr p0, v10

    .line 317
    mul-double v10, v4, p6

    sub-double/2addr p2, v10

    .line 322
    const-wide/16 v10, 0x0

    cmpg-double v7, p2, v10

    if-gez v7, :cond_21

    move v7, v6

    .line 323
    goto/16 :goto_0

    .line 325
    :cond_21
    cmpl-double v7, p2, p6

    if-lez v7, :cond_22

    .line 326
    neg-int v7, v6

    goto/16 :goto_0

    .line 332
    :cond_22
    add-double v10, p0, p0

    cmpl-double v7, p4, v10

    if-lez v7, :cond_23

    .line 333
    add-double v10, p2, p2

    cmpg-double v7, p6, v10

    if-gez v7, :cond_25

    .line 334
    neg-int v7, v6

    goto/16 :goto_0

    .line 338
    :cond_23
    add-double v10, p2, p2

    cmpl-double v7, p6, v10

    if-lez v7, :cond_24

    move v7, v6

    .line 339
    goto/16 :goto_0

    .line 342
    :cond_24
    sub-double p0, p4, p0

    .line 343
    sub-double p2, p6, p2

    .line 344
    neg-int v6, v6

    .line 347
    :cond_25
    const-wide/16 v10, 0x0

    cmpl-double v7, p2, v10

    if-nez v7, :cond_27

    .line 348
    const-wide/16 v10, 0x0

    cmpl-double v7, p0, v10

    if-nez v7, :cond_26

    .line 349
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_26
    move v7, v6

    .line 352
    goto/16 :goto_0

    .line 355
    :cond_27
    const-wide/16 v10, 0x0

    cmpl-double v7, p0, v10

    if-nez v7, :cond_c

    .line 356
    neg-int v7, v6

    goto/16 :goto_0
.end method
