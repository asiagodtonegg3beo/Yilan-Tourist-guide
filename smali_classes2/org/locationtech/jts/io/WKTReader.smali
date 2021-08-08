.class public Lorg/locationtech/jts/io/WKTReader;
.super Ljava/lang/Object;
.source "WKTReader.java"


# static fields
.field private static final ALLOW_OLD_JTS_MULTIPOINT_SYNTAX:Z = true

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final EMPTY:Ljava/lang/String; = "EMPTY"

.field private static final L_PAREN:Ljava/lang/String; = "("

.field private static final NAN_SYMBOL:Ljava/lang/String; = "NaN"

.field private static final R_PAREN:Ljava/lang/String; = ")"


# instance fields
.field private geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private m:Z

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field private tokenizer:Ljava/io/StreamTokenizer;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/io/WKTReader;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "geometryFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 150
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTReader;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 151
    return-void
.end method

.method private getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "nextToken":Ljava/lang/String;
    const-string v3, "EMPTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 232
    :goto_0
    return-object v3

    .line 224
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "coordinates":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v2

    .line 227
    :goto_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 232
    .local v0, "array":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    goto :goto_0
.end method

.method private getCoordinatesNoLeftParen()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "nextToken":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "coordinates":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v2

    .line 240
    :goto_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 245
    .local v0, "array":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v3
.end method

.method private getNextCloser()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "nextWord":Ljava/lang/String;
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    .end local v0    # "nextWord":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 368
    .restart local v0    # "nextWord":Ljava/lang/String;
    :cond_0
    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKTReader;->parseErrorExpected(Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextCloserOrComma()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "nextWord":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    .end local v0    # "nextWord":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 350
    .restart local v0    # "nextWord":Ljava/lang/String;
    :cond_1
    const-string v1, ", or )"

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKTReader;->parseErrorExpected(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextEmptyOrOpener()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "nextWord":Ljava/lang/String;
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iput-boolean v2, p0, Lorg/locationtech/jts/io/WKTReader;->z:Z

    .line 318
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    .end local v0    # "nextWord":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 320
    .restart local v0    # "nextWord":Ljava/lang/String;
    :cond_2
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    iput-boolean v2, p0, Lorg/locationtech/jts/io/WKTReader;->m:Z

    .line 322
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_3
    const-string v1, "ZM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iput-boolean v2, p0, Lorg/locationtech/jts/io/WKTReader;->z:Z

    .line 326
    iput-boolean v2, p0, Lorg/locationtech/jts/io/WKTReader;->m:Z

    .line 327
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_4
    const-string v1, "EMPTY or ("

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKTReader;->parseErrorExpected(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNextNumber()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v2}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 285
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    const-string v2, "number"

    invoke-direct {p0, v2}, Lorg/locationtech/jts/io/WKTReader;->parseErrorExpected(Ljava/lang/String;)V

    .line 302
    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2

    .line 288
    :pswitch_0
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    const-string v3, "NaN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    .line 293
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget-object v3, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/locationtech/jts/io/WKTReader;->parseErrorWithLine(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private getNextWord()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v2}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    .line 383
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 395
    const-string v2, "word"

    invoke-direct {p0, v2}, Lorg/locationtech/jts/io/WKTReader;->parseErrorExpected(Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    .line 386
    :sswitch_0
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget-object v1, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 387
    .local v1, "word":Ljava/lang/String;
    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const-string v1, "EMPTY"

    goto :goto_0

    .line 391
    .end local v1    # "word":Ljava/lang/String;
    :sswitch_1
    const-string v1, "("

    goto :goto_0

    .line 392
    :sswitch_2
    const-string v1, ")"

    goto :goto_0

    .line 393
    :sswitch_3
    const-string v1, ","

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_2
        0x2c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 252
    .local v0, "coord":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextNumber()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 253
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextNumber()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 254
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->isNumberNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextNumber()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 257
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->isNumberNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextNumber()D

    .line 260
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 261
    return-object v0
.end method

.method private isNumberNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    .line 266
    .local v0, "type":I
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->pushBack()V

    .line 267
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookaheadWord()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "nextWord":Ljava/lang/String;
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->pushBack()V

    .line 411
    return-object v0
.end method

.method private parseErrorExpected(Ljava/lang/String;)V
    .locals 3
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget v1, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 427
    const-string v1, "Unexpected NUMBER token"

    invoke-static {v1}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget v1, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 429
    const-string v1, "Unexpected EOL token"

    invoke-static {v1}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    .line 431
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->tokenString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "tokenStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKTReader;->parseErrorWithLine(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private parseErrorWithLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lorg/locationtech/jts/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v2}, Ljava/io/StreamTokenizer;->lineno()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGeometryCollectionText()Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "nextToken":Ljava/lang/String;
    const-string v4, "EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    iget-object v4, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v4

    .line 744
    :goto_0
    return-object v4

    .line 734
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v1, "geometries":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readGeometryTaggedText()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 736
    .local v2, "geometry":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    .line 738
    :goto_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 739
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readGeometryTaggedText()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    .line 740
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 743
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lorg/locationtech/jts/geom/Geometry;

    .line 744
    .local v0, "array":[Lorg/locationtech/jts/geom/Geometry;
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/Geometry;

    check-cast v4, [Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v4

    goto :goto_0
.end method

.method private readGeometryTaggedText()Lorg/locationtech/jts/geom/Geometry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 475
    :try_start_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "type":Ljava/lang/String;
    const-string v3, "Z"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/locationtech/jts/io/WKTReader;->z:Z

    .line 477
    :cond_0
    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/locationtech/jts/io/WKTReader;->m:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/locationtech/jts/io/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    :cond_1
    const-string v3, "POINT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPointText()Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    .line 510
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "e":Lorg/locationtech/jts/io/ParseException;
    goto :goto_0

    .line 487
    .end local v0    # "e":Lorg/locationtech/jts/io/ParseException;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    const-string v3, "LINESTRING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 488
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLineStringText()Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    goto :goto_0

    .line 490
    :cond_3
    const-string v3, "LINEARRING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 491
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLinearRingText()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    goto :goto_0

    .line 493
    :cond_4
    const-string v3, "POLYGON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 494
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPolygonText()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    goto :goto_0

    .line 496
    :cond_5
    const-string v3, "MULTIPOINT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readMultiPointText()Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v2

    goto :goto_0

    .line 499
    :cond_6
    const-string v3, "MULTILINESTRING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 500
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readMultiLineStringText()Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v2

    goto :goto_0

    .line 502
    :cond_7
    const-string v3, "MULTIPOLYGON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 503
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readMultiPolygonText()Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v2

    goto :goto_0

    .line 505
    :cond_8
    const-string v3, "GEOMETRYCOLLECTION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 506
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readGeometryCollectionText()Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v2

    goto :goto_0

    .line 508
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown geometry type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/io/WKTReader;->parseErrorWithLine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readLineStringText()Lorg/locationtech/jts/geom/LineString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method private readLinearRingText()Lorg/locationtech/jts/geom/LinearRing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0
.end method

.method private readMultiLineStringText()Lorg/locationtech/jts/geom/MultiLineString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "nextToken":Ljava/lang/String;
    const-string v4, "EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    iget-object v4, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v4

    .line 684
    :goto_0
    return-object v4

    .line 674
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v2, "lineStrings":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLineStringText()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 676
    .local v1, "lineString":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    .line 678
    :goto_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 679
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLineStringText()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 680
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 683
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lorg/locationtech/jts/geom/LineString;

    .line 684
    .local v0, "array":[Lorg/locationtech/jts/geom/LineString;
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/LineString;

    check-cast v4, [Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v4

    goto :goto_0
.end method

.method private readMultiPointText()Lorg/locationtech/jts/geom/MultiPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "nextToken":Ljava/lang/String;
    const-string v5, "EMPTY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 587
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v5

    .line 609
    :goto_0
    return-object v5

    .line 593
    :cond_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->lookaheadWord()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "nextWord":Ljava/lang/String;
    const-string v5, "("

    if-eq v2, v5, :cond_1

    .line 595
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getCoordinatesNoLeftParen()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/locationtech/jts/io/WKTReader;->toPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v5

    goto :goto_0

    .line 599
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v4, "points":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPointText()Lorg/locationtech/jts/geom/Point;

    move-result-object v3

    .line 601
    .local v3, "point":Lorg/locationtech/jts/geom/Point;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v1

    .line 603
    :goto_1
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPointText()Lorg/locationtech/jts/geom/Point;

    move-result-object v3

    .line 605
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 608
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lorg/locationtech/jts/geom/Point;

    .line 609
    .local v0, "array":[Lorg/locationtech/jts/geom/Point;
    iget-object v6, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/locationtech/jts/geom/Point;

    check-cast v5, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v6, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v5

    goto :goto_0
.end method

.method private readMultiPolygonText()Lorg/locationtech/jts/geom/MultiPolygon;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "nextToken":Ljava/lang/String;
    const-string v4, "EMPTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    iget-object v4, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v4

    .line 713
    :goto_0
    return-object v4

    .line 703
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v3, "polygons":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPolygonText()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 705
    .local v2, "polygon":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v1

    .line 707
    :goto_1
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 708
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readPolygonText()Lorg/locationtech/jts/geom/Polygon;

    move-result-object v2

    .line 709
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 712
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lorg/locationtech/jts/geom/Polygon;

    .line 713
    .local v0, "array":[Lorg/locationtech/jts/geom/Polygon;
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/locationtech/jts/geom/Polygon;

    check-cast v4, [Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v4

    goto :goto_0
.end method

.method private readPointText()Lorg/locationtech/jts/geom/Point;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "nextToken":Ljava/lang/String;
    const-string v2, "EMPTY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    iget-object v3, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v2, 0x0

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    .line 530
    :goto_0
    return-object v1

    .line 528
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getPreciseCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    .line 529
    .local v1, "point":Lorg/locationtech/jts/geom/Point;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloser()Ljava/lang/String;

    goto :goto_0
.end method

.method private readPolygonText()Lorg/locationtech/jts/geom/Polygon;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 642
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextEmptyOrOpener()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "nextToken":Ljava/lang/String;
    const-string v5, "EMPTY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    iget-object v5, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v6, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    new-array v7, v8, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    new-array v7, v8, [Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v5, v6, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    .line 656
    :goto_0
    return-object v5

    .line 647
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v2, "holes":Ljava/util/ArrayList;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLinearRingText()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v4

    .line 649
    .local v4, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    .line 650
    :goto_1
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 651
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readLinearRingText()Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    .line 652
    .local v1, "hole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->getNextCloserOrComma()Ljava/lang/String;

    move-result-object v3

    .line 654
    goto :goto_1

    .line 655
    .end local v1    # "hole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lorg/locationtech/jts/geom/LinearRing;

    .line 656
    .local v0, "array":[Lorg/locationtech/jts/geom/LinearRing;
    iget-object v6, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    check-cast v5, [Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v6, v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    goto :goto_0
.end method

.method private toPoints([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Point;
    .locals 4
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v1, "points":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 624
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTReader;->geometryFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/locationtech/jts/geom/Point;

    check-cast v2, [Lorg/locationtech/jts/geom/Point;

    return-object v2
.end method

.method private tokenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v0, :sswitch_data_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget v1, v1, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 450
    :sswitch_0
    const-string v0, "<NUMBER>"

    goto :goto_0

    .line 452
    :sswitch_1
    const-string v0, "End-of-Line"

    goto :goto_0

    .line 453
    :sswitch_2
    const-string v0, "End-of-Stream"

    goto :goto_0

    .line 454
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    iget-object v1, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public read(Ljava/io/Reader;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x2d

    const/16 v5, 0x2b

    const/4 v4, 0x0

    .line 184
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    .line 186
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 187
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 188
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 189
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0xa0

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 190
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0x30

    const/16 v3, 0x39

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 191
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v6, v6}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 192
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v5, v5}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 193
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v7, v7}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 194
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0x20

    invoke-virtual {v1, v4, v2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 195
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTReader;->tokenizer:Ljava/io/StreamTokenizer;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 196
    iput-boolean v4, p0, Lorg/locationtech/jts/io/WKTReader;->z:Z

    .line 197
    iput-boolean v4, p0, Lorg/locationtech/jts/io/WKTReader;->m:Z

    .line 200
    :try_start_0
    invoke-direct {p0}, Lorg/locationtech/jts/io/WKTReader;->readGeometryTaggedText()Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/locationtech/jts/io/ParseException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/locationtech/jts/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/lang/String;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "wellKnownText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "reader":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/io/WKTReader;->read(Ljava/io/Reader;)Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    .line 167
    return-object v1

    .line 170
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    throw v1
.end method
