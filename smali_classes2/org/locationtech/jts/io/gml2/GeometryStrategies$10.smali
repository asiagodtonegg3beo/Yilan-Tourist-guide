.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"

# interfaces
.implements Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/io/gml2/GeometryStrategies;->loadStrategies()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private patterns:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;->patterns:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 25
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 313
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    const-string v22, ""

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 314
    :cond_0
    new-instance v22, Lorg/xml/sax/SAXException;

    const-string v23, "Cannot create a coordinate sequence without text to parse"

    invoke-direct/range {v22 .. v23}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 316
    :cond_1
    const-string v7, "."

    .line 317
    .local v7, "decimal":Ljava/lang/String;
    const-string v4, ","

    .line 318
    .local v4, "coordSeperator":Ljava/lang/String;
    const-string v19, " "

    .line 321
    .local v19, "toupleSeperator":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "decimal"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_8

    .line 322
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "decimal"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    :cond_2
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "cs"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_9

    .line 327
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "cs"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "ts"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_a

    .line 332
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "ts"

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 337
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->text:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 338
    .local v18, "t":Ljava/lang/String;
    const-string v22, "\\s"

    const-string v23, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;->patterns:Ljava/util/WeakHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/regex/Pattern;

    .line 341
    .local v16, "ptn":Ljava/util/regex/Pattern;
    if-nez v16, :cond_7

    .line 342
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 343
    .local v21, "ts":Ljava/lang/String;
    const/16 v22, 0x5c

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 345
    const-string v22, "\\"

    const-string v23, "\\\\"

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 347
    :cond_5
    const/16 v22, 0x2e

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 349
    const-string v22, "\\."

    const-string v23, "\\\\."

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 351
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;->patterns:Ljava/util/WeakHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v21    # "ts":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, "touples":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 357
    new-instance v22, Lorg/xml/sax/SAXException;

    const-string v23, "Cannot create a coordinate sequence without a touple to parse"

    invoke-direct/range {v22 .. v23}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 323
    .end local v16    # "ptn":Ljava/util/regex/Pattern;
    .end local v18    # "t":Ljava/lang/String;
    .end local v20    # "touples":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "decimal"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_2

    .line 324
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "decimal"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "cs"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_3

    .line 329
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "cs"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 333
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "ts"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_4

    .line 334
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->attrs:Lorg/xml/sax/Attributes;

    move-object/from16 v22, v0

    const-string v23, "http://www.opengis.net/gml"

    const-string v24, "ts"

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 360
    .restart local v16    # "ptn":Ljava/util/regex/Pattern;
    .restart local v18    # "t":Ljava/lang/String;
    .restart local v20    # "touples":[Ljava/lang/String;
    :cond_b
    const/4 v13, 0x0

    .line 361
    .local v13, "numNonNullTouples":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 362
    aget-object v22, v20, v11

    if-eqz v22, :cond_d

    const-string v22, ""

    aget-object v23, v20, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 363
    if-eq v11, v13, :cond_c

    .line 364
    aget-object v22, v20, v11

    aput-object v22, v20, v13

    .line 366
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 361
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 369
    :cond_e
    move v11, v13

    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_f

    .line 370
    const/16 v22, 0x0

    aput-object v22, v20, v11

    .line 369
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 373
    :cond_f
    if-nez v13, :cond_10

    .line 374
    new-instance v22, Lorg/xml/sax/SAXException;

    const-string v23, "Cannot create a coordinate sequence without a non-null touple to parse"

    invoke-direct/range {v22 .. v23}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 376
    :cond_10
    const/16 v22, 0x0

    aget-object v22, v20, v22

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/locationtech/jts/util/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v8, v0

    .line 377
    .local v8, "dim":I
    invoke-virtual/range {p2 .. p2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13, v8}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(II)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v6

    .line 378
    .local v6, "cs":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-interface {v6}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v8

    .line 380
    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    const/16 v17, 0x1

    .line 382
    .local v17, "replaceDec":Z
    :goto_5
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v13, :cond_18

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;->patterns:Ljava/util/WeakHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "ptn":Ljava/util/regex/Pattern;
    check-cast v16, Ljava/util/regex/Pattern;

    .line 386
    .restart local v16    # "ptn":Ljava/util/regex/Pattern;
    if-nez v16, :cond_13

    .line 387
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v21    # "ts":Ljava/lang/String;
    const/16 v22, 0x5c

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 390
    const-string v22, "\\"

    const-string v23, "\\\\"

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 392
    :cond_11
    const/16 v22, 0x2e

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 394
    const-string v22, "\\."

    const-string v23, "\\\\."

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 396
    :cond_12
    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;->patterns:Ljava/util/WeakHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v21    # "ts":Ljava/lang/String;
    :cond_13
    aget-object v22, v20, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "coords":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 402
    .local v9, "dimIndex":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_19

    if-ge v12, v8, :cond_19

    .line 403
    aget-object v22, v5, v12

    if-eqz v22, :cond_14

    const-string v22, ""

    aget-object v23, v5, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 404
    if-eqz v17, :cond_16

    aget-object v22, v5, v12

    const-string v23, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :goto_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 405
    .local v14, "ordinate":D
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "dimIndex":I
    .local v10, "dimIndex":I
    invoke-interface {v6, v11, v9, v14, v15}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    move v9, v10

    .line 402
    .end local v10    # "dimIndex":I
    .end local v14    # "ordinate":D
    .restart local v9    # "dimIndex":I
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 380
    .end local v5    # "coords":[Ljava/lang/String;
    .end local v9    # "dimIndex":I
    .end local v12    # "j":I
    .end local v17    # "replaceDec":Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 404
    .restart local v5    # "coords":[Ljava/lang/String;
    .restart local v9    # "dimIndex":I
    .restart local v12    # "j":I
    .restart local v17    # "replaceDec":Z
    :cond_16
    aget-object v22, v5, v12

    goto :goto_8

    .line 409
    .end local v9    # "dimIndex":I
    .restart local v10    # "dimIndex":I
    :goto_9
    if-ge v10, v8, :cond_17

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "dimIndex":I
    .restart local v9    # "dimIndex":I
    const-wide/high16 v22, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v22

    invoke-interface {v6, v11, v10, v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->setOrdinate(IID)V

    move v10, v9

    .end local v9    # "dimIndex":I
    .restart local v10    # "dimIndex":I
    goto :goto_9

    .line 382
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 412
    .end local v5    # "coords":[Ljava/lang/String;
    .end local v10    # "dimIndex":I
    .end local v12    # "j":I
    :cond_18
    return-object v6

    .restart local v5    # "coords":[Ljava/lang/String;
    .restart local v9    # "dimIndex":I
    .restart local v12    # "j":I
    :cond_19
    move v10, v9

    .end local v9    # "dimIndex":I
    .restart local v10    # "dimIndex":I
    goto :goto_9
.end method
