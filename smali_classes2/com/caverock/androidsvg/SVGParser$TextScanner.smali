.class public Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TextScanner"
.end annotation


# instance fields
.field protected input:Ljava/lang/String;

.field protected inputLength:I

.field private numberParser:Lcom/caverock/androidsvg/NumberParser;

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2209
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2210
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 2212
    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/NumberParser;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    .line 2217
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2218
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 2219
    return-void
.end method


# virtual methods
.method protected advanceChar()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2375
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return v0

    .line 2377
    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2378
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v1, v2, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public ahead()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2448
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2449
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2450
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2451
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2452
    .local v1, "str":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2453
    return-object v1
.end method

.method public checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "lastRead"    # Ljava/lang/Object;

    .prologue
    .line 2347
    if-nez p1, :cond_0

    .line 2348
    const/4 v0, 0x0

    .line 2351
    :goto_0
    return-object v0

    .line 2350
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2351
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public checkedNextFloat(F)F
    .locals 1
    .param p1, "lastRead"    # F

    .prologue
    .line 2292
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2293
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2296
    :goto_0
    return v0

    .line 2295
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2296
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    goto :goto_0
.end method

.method public consume(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 2356
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    .line 2357
    .local v0, "found":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2358
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2359
    :cond_0
    return v0

    .line 2356
    .end local v0    # "found":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2366
    .local v1, "len":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2367
    .local v0, "found":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2368
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2369
    :cond_0
    return v0

    .line 2366
    .end local v0    # "found":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 2226
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLetter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2481
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v2, v3, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return v1

    .line 2483
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2484
    .local v0, "ch":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isEOL(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2245
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWhitespace(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2231
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextChar()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2310
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    .line 2311
    const/4 v0, 0x0

    .line 2312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public nextFlag()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x31

    .line 2332
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v2, v3, :cond_1

    .line 2339
    :cond_0
    :goto_0
    return-object v1

    .line 2334
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2335
    .local v0, "ch":C
    const/16 v2, 0x30

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_0

    .line 2336
    :cond_2
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2337
    if-ne v0, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public nextFloat()F
    .locals 5

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2266
    .local v0, "val":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2267
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2268
    :cond_0
    return v0
.end method

.method public nextFunction()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2425
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2440
    :goto_0
    return-object v3

    .line 2427
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2429
    .local v2, "start":I
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2430
    .local v0, "ch":I
    :goto_1
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7a

    if-le v0, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_3

    .line 2431
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2432
    :cond_3
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2433
    .local v1, "end":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2434
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_2

    .line 2435
    :cond_4
    const/16 v4, 0x28

    if-ne v0, v4, :cond_5

    .line 2436
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2437
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2439
    :cond_5
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method

.method public nextInteger()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 2301
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v1, v2, v3}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    .line 2302
    .local v0, "ip":Lcom/caverock/androidsvg/IntegerParser;
    if-nez v0, :cond_0

    .line 2303
    const/4 v1, 0x0

    .line 2305
    :goto_0
    return-object v1

    .line 2304
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2305
    invoke-virtual {v0}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 4

    .prologue
    .line 2317
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    .line 2318
    .local v0, "scalar":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2319
    const/4 v2, 0x0

    .line 2324
    :goto_0
    return-object v2

    .line 2320
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    .line 2321
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-nez v1, :cond_1

    .line 2322
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_0

    .line 2324
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_0
.end method

.method public nextQuotedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 2492
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2507
    :cond_0
    :goto_0
    return-object v3

    .line 2494
    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2495
    .local v2, "start":I
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2496
    .local v0, "ch":I
    move v1, v0

    .line 2497
    .local v1, "endQuote":I
    const/16 v4, 0x27

    if-eq v0, v4, :cond_2

    const/16 v4, 0x22

    if-ne v0, v4, :cond_0

    .line 2499
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2500
    :goto_1
    if-eq v0, v6, :cond_3

    if-eq v0, v1, :cond_3

    .line 2501
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2502
    :cond_3
    if-ne v0, v6, :cond_4

    .line 2503
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2506
    :cond_4
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2507
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2393
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken(C)Ljava/lang/String;
    .locals 5
    .param p1, "terminator"    # C

    .prologue
    const/4 v2, 0x0

    .line 2403
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-object v2

    .line 2406
    :cond_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2407
    .local v0, "ch":I
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v0, p1, :cond_0

    .line 2410
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2411
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2412
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2413
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2415
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2458
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 2472
    :goto_0
    return-object v2

    .line 2460
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2461
    .local v0, "ch":I
    const/16 v4, 0x25

    if-ne v0, v4, :cond_1

    .line 2462
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2463
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    .line 2465
    :cond_1
    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    add-int/lit8 v5, v5, -0x2

    if-le v4, v5, :cond_2

    move-object v2, v3

    .line 2466
    goto :goto_0

    .line 2468
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v6, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    .line 2469
    .local v2, "result":Lcom/caverock/androidsvg/SVG$Unit;
    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2471
    .end local v2    # "result":Lcom/caverock/androidsvg/SVG$Unit;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 2472
    goto :goto_0
.end method

.method public possibleNextFloat()F
    .locals 5

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2279
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2280
    .local v0, "val":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2281
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2282
    :cond_0
    return v0
.end method

.method public restOfText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2516
    const/4 v1, 0x0

    .line 2520
    :goto_0
    return-object v1

    .line 2518
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2519
    .local v0, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2520
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public skipCommaWhitespace()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2252
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2253
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return v0

    .line 2255
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 2257
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2258
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skipWhitespace()V
    .locals 2

    .prologue
    .line 2236
    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2241
    :cond_0
    return-void

    .line 2239
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method
