.class public Lgnu/xquery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static ERROR_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "<error>"

    sput-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p0, "code"    # Ljava/lang/Object;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/high16 v3, 0x10000

    .line 339
    sget-object v2, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v2, p0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    .line 340
    .local v0, "I":Lgnu/math/IntNum;
    invoke-virtual {v0}, Lgnu/math/IntNum;->intValue()I

    move-result v1

    .line 341
    .local v1, "i":I
    if-lez v1, :cond_1

    const v2, 0xd7ff

    if-le v1, v2, :cond_2

    const v2, 0xe000

    if-lt v1, v2, :cond_1

    const v2, 0xfffd

    if-le v1, v2, :cond_0

    if-lt v1, v3, :cond_1

    :cond_0
    const v2, 0x10ffff

    if-le v1, v2, :cond_2

    .line 344
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codepoints-to-string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid XML character [FOCH0001]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_2
    if-lt v1, v3, :cond_3

    .line 347
    sub-int v2, v1, v3

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    and-int/lit16 v2, v1, 0x3ff

    const v3, 0xdc00

    add-int v1, v2, v3

    .line 350
    :cond_3
    int-to-char v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    return-void
.end method

.method static asDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static codepointEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 577
    const-string v2, "codepoint-equal"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "str1":Ljava/lang/String;
    const-string v2, "codepoint-equal"

    const/4 v3, 0x2

    invoke-static {p1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 580
    :cond_0
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 581
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static codepointsToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    const-string v3, ""

    .line 367
    :goto_0
    return-object v3

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    instance-of v3, p0, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 360
    check-cast v2, Lgnu/mapping/Values;

    .line 361
    .local v2, "vals":Lgnu/mapping/Values;
    invoke-virtual {v2}, Lgnu/mapping/Values;->startPos()I

    move-result v0

    .line 362
    .local v0, "ipos":I
    :goto_1
    invoke-virtual {v2, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v2, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 366
    .end local v0    # "ipos":I
    .end local v2    # "vals":Lgnu/mapping/Values;
    :cond_1
    invoke-static {p0, v1}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 367
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I
    .param p3, "onEmpty"    # Ljava/lang/String;

    .prologue
    .line 27
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    sget-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-eq p3, v0, :cond_2

    .line 41
    .end local p3    # "onEmpty":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 31
    .restart local p3    # "onEmpty":Ljava/lang/String;
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_3

    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_4

    .line 41
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 42
    :cond_4
    new-instance v1, Lgnu/mapping/WrongType;

    sget-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-ne p3, v0, :cond_5

    const-string v0, "xs:string"

    :goto_1
    invoke-direct {v1, p1, p2, p0, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "xs:string?"

    goto :goto_1
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 3
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "val2"    # Ljava/lang/Object;
    .param p2, "coll"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 314
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 316
    :cond_0
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 320
    :goto_0
    return-object v1

    .line 317
    :cond_1
    if-nez p2, :cond_2

    .line 318
    sget-object p2, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 319
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "ret":I
    if-gez v0, :cond_3

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static concat$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 292
    const-string v6, "concat"

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "str1":Ljava/lang/String;
    const-string v6, "concat"

    const/4 v7, 0x2

    invoke-static {p1, v6, v7}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "str2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    array-length v1, p2

    .line 303
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 305
    aget-object v6, p2, v2

    const-string v7, "concat"

    add-int/lit8 v8, v2, 0x2

    invoke-static {v6, v7, v8}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "contain"    # Ljava/lang/Object;

    .prologue
    .line 246
    const-string v2, "contains"

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "s":Ljava/lang/String;
    const-string v2, "contains"

    const/4 v3, 0x2

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static encodeForUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 372
    const-string v1, "encode-for-uri"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x55

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .prologue
    .line 262
    const-string v2, "ends-with"

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "s":Ljava/lang/String;
    const-string v2, "ends-with"

    const/4 v3, 0x2

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "w":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static escapeHtmlUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 384
    const-string v1, "escape-html-uri"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x48

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static iriToUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 378
    const-string v1, "iri-to-uru"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x49

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lowerCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 48
    const-string v0, "lower-case"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 14
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "flags"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x7b

    const/16 v12, 0x5c

    const/16 v11, 0x49

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "fl":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 426
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 427
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 461
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "unknown \'replace\' flag"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 430
    :sswitch_0
    or-int/lit8 v1, v1, 0x42

    .line 431
    goto :goto_0

    .line 433
    :sswitch_1
    or-int/lit8 v1, v1, 0x20

    .line 434
    goto :goto_0

    .line 436
    :sswitch_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    .local v8, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 438
    .local v7, "plen":I
    const/4 v3, 0x0

    .line 439
    .local v3, "inBracket":I
    const/4 v4, 0x0

    .local v4, "j":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 441
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 442
    .local v6, "pch":C
    if-ne v6, v12, :cond_1

    if-ge v4, v7, :cond_1

    .line 444
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v5

    .line 453
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_0
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v4

    .line 454
    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_1

    .line 447
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_1
    const/16 v9, 0x5b

    if-ne v6, v9, :cond_2

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 449
    :cond_2
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_3

    .line 450
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 451
    :cond_3
    if-nez v3, :cond_0

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v4

    .line 452
    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_1

    .line 455
    .end local v6    # "pch":C
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    goto :goto_0

    .line 458
    .end local v3    # "inBracket":I
    .end local v5    # "j":I
    .end local v7    # "plen":I
    .end local v8    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_3
    or-int/lit8 v1, v1, 0x8

    .line 459
    goto :goto_0

    .line 465
    .end local v0    # "ch":C
    :cond_5
    const-string v9, "{Is"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_9

    .line 467
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    .restart local v8    # "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 469
    .restart local v7    # "plen":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    move v5, v4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    :goto_3
    if-ge v5, v7, :cond_8

    .line 471
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 472
    .restart local v6    # "pch":C
    if-ne v6, v12, :cond_7

    add-int/lit8 v9, v4, 0x4

    if-ge v9, v7, :cond_7

    .line 474
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 476
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const/16 v9, 0x70

    if-eq v6, v9, :cond_6

    const/16 v9, 0x50

    if-ne v6, v9, :cond_a

    :cond_6
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_a

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_a

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x73

    if-ne v9, v10, :cond_a

    .line 482
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    const/16 v9, 0x6e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v4, v5, 0x3

    .end local v5    # "j":I
    .restart local v4    # "j":I
    :goto_4
    move v5, v4

    .line 490
    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_3

    .line 489
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 491
    .end local v4    # "j":I
    .end local v6    # "pch":C
    .restart local v5    # "j":I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    .end local v5    # "j":I
    .end local v7    # "plen":I
    .end local v8    # "sbuf":Ljava/lang/StringBuffer;
    :cond_9
    invoke-static {p0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    return-object v9

    .restart local v5    # "j":I
    .restart local v6    # "pch":C
    .restart local v7    # "plen":I
    .restart local v8    # "sbuf":Ljava/lang/StringBuffer;
    :cond_a
    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_4

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_3
        0x73 -> :sswitch_1
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/StringUtils;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string v1, "matches"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method

.method public static normalizeSpace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 390
    const-string v6, "normalize-space"

    const-string v7, ""

    invoke-static {p0, v6, v8, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 392
    .local v2, "len":I
    const/4 v3, 0x0

    .line 393
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 394
    .local v4, "skipped":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 396
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 397
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 399
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-lez v1, :cond_0

    .line 400
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v3    # "sbuf":Ljava/lang/StringBuffer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 394
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_2
    if-lez v4, :cond_4

    .line 407
    if-eqz v3, :cond_5

    .line 408
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 413
    :cond_4
    if-eqz v3, :cond_1

    .line 414
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 409
    :cond_5
    if-gt v4, v8, :cond_6

    if-eq v1, v8, :cond_6

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_3

    .line 410
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v3    # "sbuf":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 417
    .end local v0    # "ch":C
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "str":Ljava/lang/String;
    :cond_8
    :goto_3
    return-object v5

    .restart local v5    # "str":Ljava/lang/String;
    :cond_9
    if-lez v4, :cond_8

    const-string v5, ""

    goto :goto_3
.end method

.method public static normalizeUnicode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 586
    const-string v0, "NFC"

    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "form"    # Ljava/lang/String;

    .prologue
    .line 591
    const-string v1, "normalize-unicode"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 593
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    return-object v0

    .line 620
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "normalize-unicode: unicode string normalization not available"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lgnu/xquery/util/StringUtils;->replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5c

    .line 522
    const-string v5, "replace"

    const/4 v6, 0x1

    const-string v7, ""

    invoke-static {p0, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 524
    .local v3, "rlen":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 526
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 527
    .local v2, "rch":C
    if-ne v2, v8, :cond_2

    .line 529
    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_1

    const/16 v5, 0x24

    if-eq v2, v5, :cond_1

    move v0, v1

    .line 531
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid replacement string [FORX0004]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    move v1, v0

    .line 533
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 534
    .end local v2    # "rch":C
    :cond_3
    invoke-static {p1, p3}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static startsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .prologue
    .line 254
    const-string v2, "starts-with"

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "s":Ljava/lang/String;
    const-string v2, "starts-with"

    const/4 v3, 0x2

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "w":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static stringJoin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "strseq"    # Ljava/lang/Object;
    .param p1, "join"    # Ljava/lang/Object;

    .prologue
    .line 269
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v5, "s":Ljava/lang/StringBuffer;
    const-string v7, "string-join"

    const/4 v8, 0x2

    sget-object v9, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    invoke-static {p1, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "glue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .local v0, "glen":I
    const/4 v2, 0x0

    .line 273
    .local v2, "index":I
    const/4 v6, 0x0

    .line 275
    .local v6, "started":Z
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lgnu/mapping/Values;->nextIndex(Ljava/lang/Object;I)I

    move-result v3

    .local v3, "next":I
    if-ltz v3, :cond_2

    .line 277
    invoke-static {p0, v2}, Lgnu/mapping/Values;->nextValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "obj":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v7, :cond_0

    .line 280
    if-eqz v6, :cond_1

    if-lez v0, :cond_1

    .line 281
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_1
    invoke-static {v4}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/4 v6, 0x1

    .line 284
    move v2, v3

    .line 285
    goto :goto_0

    .line 287
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "str"    # Ljava/lang/Object;

    .prologue
    .line 125
    const-string v6, "string-length"

    const/4 v7, 0x1

    const-string v8, ""

    invoke-static {p0, v6, v7, v8}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 127
    .local v5, "slen":I
    const/4 v3, 0x0

    .line 128
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 130
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, "ch":C
    const v6, 0xd800

    if-lt v0, v6, :cond_0

    const v6, 0xdc00

    if-ge v0, v6, :cond_0

    if-ge v1, v5, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .line 134
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 135
    .end local v0    # "ch":C
    :cond_1
    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    return-object v6
.end method

.method public static stringPad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "padcount"    # Ljava/lang/Object;

    .prologue
    .line 228
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 229
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 231
    if-nez v0, :cond_0

    .line 232
    const-string v5, ""

    .line 241
    :goto_0
    return-object v5

    .line 233
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "Invalid string-pad count"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_1
    const-string v5, "string-pad"

    const/4 v6, 0x1

    const-string v7, ""

    invoke-static {p0, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "sv":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 238
    .local v3, "slen":I
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int v5, v0, v3

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 239
    .local v2, "s":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static stringToCodepoints$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 11
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const v10, 0xdc00

    const v9, 0xd800

    .line 325
    const-string v6, "string-to-codepoints"

    const/4 v7, 0x1

    const-string v8, ""

    invoke-static {p0, v6, v7, v8}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 327
    .local v3, "len":I
    iget-object v4, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 328
    .local v4, "out":Lgnu/lists/Consumer;
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 330
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 331
    .local v0, "ch":I
    if-lt v0, v9, :cond_0

    if-ge v0, v10, :cond_0

    if-ge v1, v3, :cond_0

    .line 332
    sub-int v6, v0, v9

    mul-int/lit16 v6, v6, 0x400

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v10

    add-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int v0, v6, v7

    move v1, v2

    .line 333
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {v4, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    move v2, v1

    .line 334
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 335
    .end local v0    # "ch":I
    :cond_1
    return-void
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 66
    .local v2, "d1":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const-string v8, ""

    .line 82
    :goto_0
    return-object v8

    .line 68
    :cond_0
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double v8, v2, v8

    double-to-int v1, v8

    .line 69
    .local v1, "i":I
    if-gez v1, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 71
    :cond_1
    const-string v8, "substring"

    const/4 v9, 0x1

    const-string v10, ""

    invoke-static {p0, v8, v9, v10}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 73
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "offset":I
    move v6, v5

    .line 74
    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 76
    if-lt v6, v4, :cond_2

    .line 77
    const-string v8, ""

    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 79
    .local v0, "ch":C
    const v8, 0xd800

    if-lt v0, v8, :cond_3

    const v8, 0xdc00

    if-ge v0, v8, :cond_3

    if-ge v5, v4, :cond_3

    .line 80
    add-int/lit8 v5, v5, 0x1

    :cond_3
    move v6, v5

    .line 81
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 82
    .end local v0    # "ch":C
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "length"    # Ljava/lang/Object;

    .prologue
    .line 87
    const-string v13, "substring"

    const/4 v14, 0x1

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 91
    .local v9, "len":I
    invoke-static/range {p1 .. p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 92
    .local v4, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    add-double v6, v4, v14

    .line 93
    .local v6, "d2":D
    const-wide/16 v14, 0x0

    cmpg-double v13, v4, v14

    if-gtz v13, :cond_0

    .line 94
    const-wide/16 v4, 0x0

    .line 95
    :cond_0
    int-to-double v14, v9

    cmpl-double v13, v6, v14

    if-lez v13, :cond_1

    .line 96
    int-to-double v6, v9

    .line 97
    :cond_1
    cmpg-double v13, v6, v4

    if-gtz v13, :cond_2

    .line 98
    const-string v13, ""

    .line 120
    :goto_0
    return-object v13

    .line 99
    :cond_2
    double-to-int v3, v4

    .line 100
    .local v3, "i1":I
    double-to-int v13, v6

    sub-int v8, v13, v3

    .line 101
    .local v8, "i2":I
    const/4 v10, 0x0

    .local v10, "offset":I
    move v11, v10

    .line 102
    .end local v10    # "offset":I
    .local v11, "offset":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 104
    if-lt v11, v9, :cond_3

    .line 105
    const-string v13, ""

    goto :goto_0

    .line 106
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 107
    .local v2, "ch":C
    const v13, 0xd800

    if-lt v2, v13, :cond_4

    const v13, 0xdc00

    if-ge v2, v13, :cond_4

    if-ge v10, v9, :cond_4

    .line 108
    add-int/lit8 v10, v10, 0x1

    :cond_4
    move v11, v10

    .line 109
    .end local v10    # "offset":I
    .restart local v11    # "offset":I
    goto :goto_1

    .line 110
    .end local v2    # "ch":C
    :cond_5
    move v3, v11

    .line 111
    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_8

    .line 113
    if-lt v11, v9, :cond_6

    .line 114
    const-string v13, ""

    goto :goto_0

    .line 115
    :cond_6
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 116
    .restart local v2    # "ch":C
    const v13, 0xd800

    if-lt v2, v13, :cond_7

    const v13, 0xdc00

    if-ge v2, v13, :cond_7

    if-ge v10, v9, :cond_7

    .line 117
    add-int/lit8 v10, v10, 0x1

    :cond_7
    move v11, v10

    .line 118
    .end local v10    # "offset":I
    .restart local v11    # "offset":I
    goto :goto_2

    .line 119
    .end local v2    # "ch":C
    :cond_8
    move v8, v11

    .line 120
    invoke-virtual {v12, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .prologue
    .line 152
    const-string v4, "substring-after"

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {p0, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "s":Ljava/lang/String;
    const-string v4, "substring-after"

    const/4 v5, 0x2

    const-string v6, ""

    invoke-static {p1, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 156
    .local v1, "flen":I
    if-nez v1, :cond_0

    .line 160
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 159
    .restart local v2    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 160
    .local v3, "start":I
    if-ltz v3, :cond_1

    add-int v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v2, v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method public static substringBefore(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .prologue
    .line 140
    const-string v4, "substring-before"

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static {p0, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "s":Ljava/lang/String;
    const-string v4, "substring-before"

    const/4 v5, 0x2

    const-string v6, ""

    invoke-static {p1, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 144
    .local v1, "flen":I
    if-nez v1, :cond_0

    .line 145
    const-string v4, ""

    .line 147
    :goto_0
    return-object v4

    .line 146
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, "start":I
    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 542
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lgnu/xquery/util/StringUtils;->tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V

    .line 543
    return-void
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 10
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 549
    const-string v7, "tokenize"

    const/4 v8, 0x1

    const-string v9, ""

    invoke-static {p0, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "str":Ljava/lang/String;
    iget-object v4, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 551
    .local v4, "out":Lgnu/lists/Consumer;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 552
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 553
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v5, 0x0

    .line 558
    .local v5, "start":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 559
    .local v2, "matched":Z
    if-nez v2, :cond_2

    .line 561
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 565
    .local v0, "end":I
    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 567
    if-ne v5, v0, :cond_1

    .line 568
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "pattern matches empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static translate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "trans"    # Ljava/lang/Object;

    .prologue
    .line 165
    const-string v25, "translate"

    const/16 v26, 0x1

    const-string v27, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, "sv":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v25, v0

    if-nez v25, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 168
    new-instance v25, Lgnu/mapping/WrongType;

    const-string v26, "translate"

    const/16 v27, 0x2

    const-string v28, "xs:string"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p0

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v25

    .line 169
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, "m":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    .line 172
    .local v15, "mlen":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 173
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v25, v0

    if-nez v25, :cond_1

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 174
    new-instance v25, Lgnu/mapping/WrongType;

    const-string v26, "translate"

    const/16 v27, 0x3

    const-string v28, "xs:string"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p0

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v25

    .line 175
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, "t":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 223
    .end local v18    # "sv":Ljava/lang/String;
    :goto_0
    return-object v18

    .line 179
    .restart local v18    # "sv":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v17

    .line 180
    .local v17, "slen":I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    .local v16, "s":Ljava/lang/StringBuffer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    .line 184
    .local v24, "tlen":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 186
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 187
    .local v5, "c1":C
    const/4 v6, 0x0

    .line 188
    .local v6, "c2":C
    const v25, 0xd800

    move/from16 v0, v25

    if-lt v5, v0, :cond_3

    const v25, 0xdc00

    move/from16 v0, v25

    if-ge v5, v0, :cond_3

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 189
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .restart local v8    # "i":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v8

    .line 190
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_3
    const/4 v9, 0x0

    .line 191
    .local v9, "j":I
    const/4 v13, 0x0

    .local v13, "mi":I
    move v14, v13

    .end local v13    # "mi":I
    .local v14, "mi":I
    :goto_2
    if-ge v14, v15, :cond_b

    .line 193
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "mi":I
    .restart local v13    # "mi":I
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 194
    .local v11, "m1":C
    const/4 v12, 0x0

    .line 195
    .local v12, "m2":C
    const v25, 0xd800

    move/from16 v0, v25

    if-lt v11, v0, :cond_4

    const v25, 0xdc00

    move/from16 v0, v25

    if-ge v11, v0, :cond_4

    if-ge v13, v15, :cond_4

    .line 196
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "mi":I
    .restart local v14    # "mi":I
    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v14

    .line 197
    .end local v14    # "mi":I
    .restart local v13    # "mi":I
    :cond_4
    if-ne v11, v5, :cond_9

    if-ne v12, v6, :cond_9

    .line 199
    const/16 v22, 0x0

    .local v22, "ti":I
    move/from16 v23, v22

    .line 201
    .end local v22    # "ti":I
    .local v23, "ti":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    move v8, v7

    .line 202
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 203
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_5
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "ti":I
    .restart local v22    # "ti":I
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 204
    .local v20, "t1":C
    const/16 v21, 0x0

    .line 205
    .local v21, "t2":C
    const v25, 0xd800

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    const v25, 0xdc00

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 206
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "ti":I
    .restart local v23    # "ti":I
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v22, v23

    .line 207
    .end local v23    # "ti":I
    .restart local v22    # "ti":I
    :cond_6
    if-nez v9, :cond_8

    .line 209
    move/from16 v5, v20

    .line 210
    move/from16 v6, v21

    .line 218
    .end local v11    # "m1":C
    .end local v12    # "m2":C
    .end local v20    # "t1":C
    .end local v21    # "t2":C
    .end local v22    # "ti":I
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    if-eqz v6, :cond_7

    .line 220
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    move v8, v7

    .line 221
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_1

    .line 199
    .end local v8    # "i":I
    .restart local v7    # "i":I
    .restart local v11    # "m1":C
    .restart local v12    # "m2":C
    .restart local v20    # "t1":C
    .restart local v21    # "t2":C
    .restart local v22    # "ti":I
    :cond_8
    add-int/lit8 v9, v9, -0x1

    move/from16 v23, v22

    .end local v22    # "ti":I
    .restart local v23    # "ti":I
    goto :goto_3

    .line 216
    .end local v20    # "t1":C
    .end local v21    # "t2":C
    .end local v23    # "ti":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    move v14, v13

    .line 217
    .end local v13    # "mi":I
    .restart local v14    # "mi":I
    goto :goto_2

    .line 223
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v11    # "m1":C
    .end local v12    # "m2":C
    .end local v14    # "mi":I
    .restart local v8    # "i":I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .end local v8    # "i":I
    .restart local v5    # "c1":C
    .restart local v6    # "c2":C
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v14    # "mi":I
    :cond_b
    move v13, v14

    .end local v14    # "mi":I
    .restart local v13    # "mi":I
    goto :goto_4
.end method

.method public static upperCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 53
    const-string v0, "upper-case"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
