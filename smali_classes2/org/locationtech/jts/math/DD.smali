.class public final Lorg/locationtech/jts/math/DD;
.super Ljava/lang/Object;
.source "DD.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final E:Lorg/locationtech/jts/math/DD;

.field public static final EPS:D = 1.23259516440783E-32

.field private static final MAX_PRINT_DIGITS:I = 0x20

.field public static final NaN:Lorg/locationtech/jts/math/DD;

.field private static final ONE:Lorg/locationtech/jts/math/DD;

.field public static final PI:Lorg/locationtech/jts/math/DD;

.field public static final PI_2:Lorg/locationtech/jts/math/DD;

.field private static final SCI_NOT_EXPONENT_CHAR:Ljava/lang/String; = "E"

.field private static final SCI_NOT_ZERO:Ljava/lang/String; = "0.0E0"

.field private static final SPLIT:D = 1.34217729E8

.field private static final TEN:Lorg/locationtech/jts/math/DD;

.field public static final TWO_PI:Lorg/locationtech/jts/math/DD;


# instance fields
.field private hi:D

.field private lo:D


# direct methods
.method static strictfp constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 99
    new-instance v0, Lorg/locationtech/jts/math/DD;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/math/DD;->PI:Lorg/locationtech/jts/math/DD;

    .line 106
    new-instance v0, Lorg/locationtech/jts/math/DD;

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v4, 0x3cb1a62633145c07L    # 2.4492935982947064E-16

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/math/DD;->TWO_PI:Lorg/locationtech/jts/math/DD;

    .line 113
    new-instance v0, Lorg/locationtech/jts/math/DD;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v4, 0x3c91a62633145c07L    # 6.123233995736766E-17

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/math/DD;->PI_2:Lorg/locationtech/jts/math/DD;

    .line 120
    new-instance v0, Lorg/locationtech/jts/math/DD;

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const-wide v4, 0x3ca4d57ee2b1013aL

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/math/DD;->E:Lorg/locationtech/jts/math/DD;

    .line 127
    new-instance v0, Lorg/locationtech/jts/math/DD;

    invoke-direct {v0, v6, v7, v6, v7}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    sput-object v0, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    .line 1026
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    sput-object v0, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    .line 1027
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    sput-object v0, Lorg/locationtech/jts/math/DD;->ONE:Lorg/locationtech/jts/math/DD;

    return-void
.end method

.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 173
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 180
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/math/DD;->init(D)V

    .line 181
    return-void
.end method

.method public strictfp constructor <init>(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 173
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/math/DD;->init(D)V

    .line 191
    return-void
.end method

.method public strictfp constructor <init>(DD)V
    .locals 3
    .param p1, "hi"    # D
    .param p3, "lo"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 173
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/locationtech/jts/math/DD;->init(DD)V

    .line 202
    return-void
.end method

.method public strictfp constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Lorg/locationtech/jts/math/DD;->parse(Ljava/lang/String;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/math/DD;-><init>(Lorg/locationtech/jts/math/DD;)V

    .line 224
    return-void
.end method

.method public strictfp constructor <init>(Lorg/locationtech/jts/math/DD;)V
    .locals 2
    .param p1, "dd"    # Lorg/locationtech/jts/math/DD;

    .prologue
    const-wide/16 v0, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 173
    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 211
    invoke-direct {p0, p1}, Lorg/locationtech/jts/math/DD;->init(Lorg/locationtech/jts/math/DD;)V

    .line 212
    return-void
.end method

.method public static strictfp copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p0, "dd"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 234
    new-instance v0, Lorg/locationtech/jts/math/DD;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/DD;-><init>(Lorg/locationtech/jts/math/DD;)V

    return-object v0
.end method

.method private static strictfp createNaN()Lorg/locationtech/jts/math/DD;
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 136
    new-instance v0, Lorg/locationtech/jts/math/DD;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    return-object v0
.end method

.method private strictfp extractSignificantDigits(Z[I)Ljava/lang/String;
    .locals 14
    .param p1, "insertDecimalPoint"    # Z
    .param p2, "magnitude"    # [I

    .prologue
    .line 1141
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->abs()Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 1143
    .local v11, "y":Lorg/locationtech/jts/math/DD;
    iget-wide v12, v11, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v12, v13}, Lorg/locationtech/jts/math/DD;->magnitude(D)I

    move-result v6

    .line 1144
    .local v6, "mag":I
    sget-object v12, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v12, v6}, Lorg/locationtech/jts/math/DD;->pow(I)Lorg/locationtech/jts/math/DD;

    move-result-object v10

    .line 1145
    .local v10, "scale":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v11, v10}, Lorg/locationtech/jts/math/DD;->divide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 1148
    sget-object v12, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->gt(Lorg/locationtech/jts/math/DD;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1149
    sget-object v12, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->divide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 1150
    add-int/lit8 v6, v6, 0x1

    .line 1157
    :cond_0
    :goto_0
    add-int/lit8 v2, v6, 0x1

    .line 1158
    .local v2, "decimalPointPos":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1159
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v7, 0x1f

    .line 1160
    .local v7, "numDigits":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-gt v5, v7, :cond_3

    .line 1161
    if-eqz p1, :cond_1

    if-ne v5, v2, :cond_1

    .line 1162
    const/16 v12, 0x2e

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1164
    :cond_1
    iget-wide v12, v11, Lorg/locationtech/jts/math/DD;->hi:D

    double-to-int v3, v12

    .line 1170
    .local v3, "digit":I
    if-ltz v3, :cond_2

    const/16 v12, 0x9

    if-le v3, v12, :cond_2

    .line 1180
    :cond_2
    if-gez v3, :cond_5

    .line 1219
    .end local v3    # "digit":I
    :cond_3
    const/4 v12, 0x0

    aput v6, p2, v12

    .line 1220
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 1152
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "decimalPointPos":I
    .end local v5    # "i":I
    .end local v7    # "numDigits":I
    :cond_4
    sget-object v12, Lorg/locationtech/jts/math/DD;->ONE:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->lt(Lorg/locationtech/jts/math/DD;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1153
    sget-object v12, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 1154
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1184
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "decimalPointPos":I
    .restart local v3    # "digit":I
    .restart local v5    # "i":I
    .restart local v7    # "numDigits":I
    :cond_5
    const/4 v8, 0x0

    .line 1185
    .local v8, "rebiasBy10":Z
    const/4 v4, 0x0

    .line 1186
    .local v4, "digitChar":C
    const/16 v12, 0x9

    if-le v3, v12, :cond_8

    .line 1188
    const/4 v8, 0x1

    .line 1190
    const/16 v4, 0x39

    .line 1195
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1196
    int-to-double v12, v3

    invoke-static {v12, v13}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v12

    sget-object v13, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    .line 1197
    invoke-virtual {v12, v13}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v11

    .line 1198
    if-eqz v8, :cond_6

    .line 1199
    sget-object v12, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    invoke-virtual {v11, v12}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    .line 1201
    :cond_6
    const/4 v1, 0x1

    .line 1213
    .local v1, "continueExtractingDigits":Z
    iget-wide v12, v11, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v12, v13}, Lorg/locationtech/jts/math/DD;->magnitude(D)I

    move-result v9

    .line 1214
    .local v9, "remMag":I
    if-gez v9, :cond_7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int v13, v7, v5

    if-lt v12, v13, :cond_7

    .line 1215
    const/4 v1, 0x0

    .line 1216
    :cond_7
    if-eqz v1, :cond_3

    .line 1160
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1193
    .end local v1    # "continueExtractingDigits":Z
    .end local v9    # "remMag":I
    :cond_8
    add-int/lit8 v12, v3, 0x30

    int-to-char v4, v12

    goto :goto_2
.end method

.method private strictfp getSpecialNumberString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0"

    .line 1251
    :goto_0
    return-object v0

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NaN "

    goto :goto_0

    .line 1251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final strictfp init(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 255
    iput-wide p1, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 257
    return-void
.end method

.method private final strictfp init(DD)V
    .locals 1
    .param p1, "hi"    # D
    .param p3, "lo"    # D

    .prologue
    .line 261
    iput-wide p1, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 262
    iput-wide p3, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 263
    return-void
.end method

.method private final strictfp init(Lorg/locationtech/jts/math/DD;)V
    .locals 2
    .param p1, "dd"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 267
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->hi:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 268
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->lo:D

    iput-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 269
    return-void
.end method

.method private static strictfp magnitude(D)I
    .locals 14
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 1266
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1267
    .local v0, "xAbs":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v4, v8, v10

    .line 1268
    .local v4, "xLog10":D
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 1274
    .local v6, "xMag":I
    int-to-double v8, v6

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1275
    .local v2, "xApprox":D
    mul-double v8, v2, v12

    cmpg-double v7, v8, v0

    if-gtz v7, :cond_0

    .line 1276
    add-int/lit8 v6, v6, 0x1

    .line 1278
    :cond_0
    return v6
.end method

.method public static strictfp parse(Ljava/lang/String;)Lorg/locationtech/jts/math/DD;
    .locals 21
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1302
    const/4 v8, 0x0

    .line 1303
    .local v8, "i":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    .line 1306
    .local v15, "strlen":I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1307
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1310
    :cond_0
    const/4 v9, 0x0

    .line 1311
    .local v9, "isNegative":Z
    if-ge v8, v15, :cond_2

    .line 1312
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1313
    .local v14, "signCh":C
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    .line 1314
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 1315
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    const/4 v9, 0x1

    .line 1321
    .end local v14    # "signCh":C
    :cond_2
    new-instance v16, Lorg/locationtech/jts/math/DD;

    invoke-direct/range {v16 .. v16}, Lorg/locationtech/jts/math/DD;-><init>()V

    .line 1323
    .local v16, "val":Lorg/locationtech/jts/math/DD;
    const/4 v12, 0x0

    .line 1324
    .local v12, "numDigits":I
    const/4 v10, 0x0

    .line 1325
    .local v10, "numBeforeDec":I
    const/4 v6, 0x0

    .line 1327
    .local v6, "exp":I
    :goto_1
    if-lt v8, v15, :cond_5

    .line 1358
    :goto_2
    move-object/from16 v17, v16

    .line 1361
    .local v17, "val2":Lorg/locationtech/jts/math/DD;
    sub-int v18, v12, v10

    sub-int v11, v18, v6

    .line 1362
    .local v11, "numDecPlaces":I
    if-nez v11, :cond_a

    .line 1363
    move-object/from16 v17, v16

    .line 1374
    :cond_3
    :goto_3
    if-eqz v9, :cond_4

    .line 1375
    invoke-virtual/range {v17 .. v17}, Lorg/locationtech/jts/math/DD;->negate()Lorg/locationtech/jts/math/DD;

    move-result-object v17

    .line 1377
    .end local v17    # "val2":Lorg/locationtech/jts/math/DD;
    :cond_4
    return-object v17

    .line 1329
    .end local v11    # "numDecPlaces":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1330
    .local v2, "ch":C
    add-int/lit8 v8, v8, 0x1

    .line 1331
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1332
    add-int/lit8 v18, v2, -0x30

    move/from16 v0, v18

    int-to-double v4, v0

    .line 1333
    .local v4, "d":D
    sget-object v18, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    .line 1335
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    .line 1336
    add-int/lit8 v12, v12, 0x1

    .line 1337
    goto :goto_1

    .line 1339
    .end local v4    # "d":D
    :cond_6
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_7

    .line 1340
    move v10, v12

    .line 1341
    goto :goto_1

    .line 1343
    :cond_7
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v2, v0, :cond_8

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    .line 1344
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1347
    .local v7, "expStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_2

    .line 1349
    :catch_0
    move-exception v3

    .line 1350
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/NumberFormatException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid exponent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in string "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1354
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "expStr":Ljava/lang/String;
    :cond_9
    new-instance v18, Ljava/lang/NumberFormatException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected character \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' at position "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in string "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1365
    .end local v2    # "ch":C
    .restart local v11    # "numDecPlaces":I
    .restart local v17    # "val2":Lorg/locationtech/jts/math/DD;
    :cond_a
    if-lez v11, :cond_b

    .line 1366
    sget-object v18, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/locationtech/jts/math/DD;->pow(I)Lorg/locationtech/jts/math/DD;

    move-result-object v13

    .line 1367
    .local v13, "scale":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/locationtech/jts/math/DD;->divide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    .line 1368
    goto/16 :goto_3

    .line 1369
    .end local v13    # "scale":Lorg/locationtech/jts/math/DD;
    :cond_b
    if-gez v11, :cond_3

    .line 1370
    sget-object v18, Lorg/locationtech/jts/math/DD;->TEN:Lorg/locationtech/jts/math/DD;

    neg-int v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/locationtech/jts/math/DD;->pow(I)Lorg/locationtech/jts/math/DD;

    move-result-object v13

    .line 1371
    .restart local v13    # "scale":Lorg/locationtech/jts/math/DD;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v17

    goto/16 :goto_3
.end method

.method private final strictfp selfAdd(DD)Lorg/locationtech/jts/math/DD;
    .locals 29
    .param p1, "yhi"    # D
    .param p3, "ylo"    # D

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v24, v0

    add-double v6, v24, p1

    .line 376
    .local v6, "S":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v24, v0

    add-double v8, v24, p3

    .line 377
    .local v8, "T":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v24, v0

    sub-double v10, v6, v24

    .line 378
    .local v10, "e":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v24, v0

    sub-double v12, v8, v24

    .line 379
    .local v12, "f":D
    sub-double v16, v6, v10

    .line 380
    .local v16, "s":D
    sub-double v18, v8, v12

    .line 381
    .local v18, "t":D
    sub-double v24, p1, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v26, v26, v16

    add-double v16, v24, v26

    .line 382
    sub-double v24, p3, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v26, v0

    sub-double v26, v26, v18

    add-double v18, v24, v26

    .line 383
    add-double v10, v16, v8

    add-double v4, v6, v10

    .local v4, "H":D
    sub-double v24, v6, v4

    add-double v14, v10, v24

    .local v14, "h":D
    add-double v10, v18, v14

    .line 385
    add-double v20, v4, v10

    .line 386
    .local v20, "zhi":D
    sub-double v24, v4, v20

    add-double v22, v10, v24

    .line 387
    .local v22, "zlo":D
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->hi:D

    .line 388
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->lo:D

    .line 389
    return-object p0
.end method

.method private final strictfp selfDivide(DD)Lorg/locationtech/jts/math/DD;
    .locals 25
    .param p1, "yhi"    # D
    .param p3, "ylo"    # D

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v20, v0

    div-double v4, v20, p1

    .local v4, "C":D
    const-wide v20, 0x41a0000002000000L    # 1.34217729E8

    mul-double v8, v20, v4

    .local v8, "c":D
    sub-double v10, v8, v4

    .local v10, "hc":D
    const-wide v20, 0x41a0000002000000L    # 1.34217729E8

    mul-double v18, v20, p1

    .local v18, "u":D
    sub-double v10, v8, v10

    .line 586
    sub-double v14, v4, v10

    .local v14, "tc":D
    sub-double v12, v18, p1

    .local v12, "hy":D
    mul-double v6, v4, p1

    .local v6, "U":D
    sub-double v12, v18, v12

    sub-double v16, p1, v12

    .line 587
    .local v16, "ty":D
    mul-double v20, v10, v12

    sub-double v20, v20, v6

    mul-double v22, v10, v16

    add-double v20, v20, v22

    mul-double v22, v14, v12

    add-double v20, v20, v22

    mul-double v22, v14, v16

    add-double v18, v20, v22

    .line 588
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v20, v0

    sub-double v20, v20, v6

    sub-double v20, v20, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    mul-double v22, v4, p3

    sub-double v20, v20, v22

    div-double v8, v20, p1

    .line 589
    add-double v18, v4, v8

    .line 591
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->hi:D

    .line 592
    sub-double v20, v4, v18

    add-double v20, v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->lo:D

    .line 593
    return-object p0
.end method

.method private final strictfp selfMultiply(DD)Lorg/locationtech/jts/math/DD;
    .locals 27
    .param p1, "yhi"    # D
    .param p3, "ylo"    # D

    .prologue
    .line 511
    const-wide v20, 0x41a0000002000000L    # 1.34217729E8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v22, v0

    mul-double v4, v20, v22

    .local v4, "C":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v20, v0

    sub-double v8, v4, v20

    .local v8, "hx":D
    const-wide v20, 0x41a0000002000000L    # 1.34217729E8

    mul-double v6, v20, p1

    .line 512
    .local v6, "c":D
    sub-double v8, v4, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v20, v0

    sub-double v12, v20, v8

    .local v12, "tx":D
    sub-double v10, v6, p1

    .line 513
    .local v10, "hy":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v20, v0

    mul-double v4, v20, p1

    sub-double v10, v6, v10

    sub-double v14, p1, v10

    .line 514
    .local v14, "ty":D
    mul-double v20, v8, v10

    sub-double v20, v20, v4

    mul-double v22, v8, v14

    add-double v20, v20, v22

    mul-double v22, v12, v10

    add-double v20, v20, v22

    mul-double v22, v12, v14

    add-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v22, v0

    mul-double v22, v22, p3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v24, v0

    mul-double v24, v24, p1

    add-double v22, v22, v24

    add-double v6, v20, v22

    .line 515
    add-double v16, v4, v6

    .local v16, "zhi":D
    sub-double v8, v4, v16

    .line 516
    add-double v18, v6, v8

    .line 517
    .local v18, "zlo":D
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->hi:D

    .line 518
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/locationtech/jts/math/DD;->lo:D

    .line 519
    return-object p0
.end method

.method public static strictfp sqr(D)Lorg/locationtech/jts/math/DD;
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 771
    invoke-static {p0, p1}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/locationtech/jts/math/DD;->selfMultiply(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public static strictfp sqrt(D)Lorg/locationtech/jts/math/DD;
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 812
    invoke-static {p0, p1}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/math/DD;->sqrt()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method private static strictfp stringOfChar(CI)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C
    .param p1, "len"    # I

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1234
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static strictfp valueOf(D)Lorg/locationtech/jts/math/DD;
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 158
    new-instance v0, Lorg/locationtech/jts/math/DD;

    invoke-direct {v0, p0, p1}, Lorg/locationtech/jts/math/DD;-><init>(D)V

    return-object v0
.end method

.method public static strictfp valueOf(Ljava/lang/String;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->parse(Ljava/lang/String;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public strictfp abs()Lorg/locationtech/jts/math/DD;
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    .line 738
    :goto_0
    return-object v0

    .line 736
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->negate()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_1
    new-instance v0, Lorg/locationtech/jts/math/DD;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/math/DD;-><init>(Lorg/locationtech/jts/math/DD;)V

    goto :goto_0
.end method

.method public final strictfp add(D)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "y"    # D

    .prologue
    .line 330
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/math/DD;->selfAdd(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 319
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/math/DD;->selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public strictfp ceil()Lorg/locationtech/jts/math/DD;
    .locals 6

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    .line 664
    :goto_0
    return-object v4

    .line 657
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 658
    .local v0, "fhi":D
    const-wide/16 v2, 0x0

    .line 660
    .local v2, "flo":D
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v4, v0, v4

    if-nez v4, :cond_1

    .line 661
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 664
    :cond_1
    new-instance v4, Lorg/locationtech/jts/math/DD;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    goto :goto_0
.end method

.method public strictfp clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public strictfp compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1010
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/math/DD;

    .line 1012
    .local v0, "other":Lorg/locationtech/jts/math/DD;
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v6, v0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v1

    .line 1013
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v6, v0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1014
    :cond_2
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v6, v0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 1015
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v6, v0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 1016
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final strictfp divide(D)Lorg/locationtech/jts/math/DD;
    .locals 5
    .param p1, "y"    # D

    .prologue
    .line 550
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/math/DD;->createNaN()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/locationtech/jts/math/DD;->selfDivide(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0
.end method

.method public final strictfp divide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 30
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    div-double v6, v26, v28

    .local v6, "C":D
    const-wide v26, 0x41a0000002000000L    # 1.34217729E8

    mul-double v10, v26, v6

    .local v10, "c":D
    sub-double v12, v10, v6

    .local v12, "hc":D
    const-wide v26, 0x41a0000002000000L    # 1.34217729E8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    mul-double v20, v26, v28

    .local v20, "u":D
    sub-double v12, v10, v12

    .line 532
    sub-double v16, v6, v12

    .local v16, "tc":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v14, v20, v26

    .local v14, "hy":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    mul-double v8, v6, v26

    .local v8, "U":D
    sub-double v14, v20, v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v18, v26, v14

    .line 533
    .local v18, "ty":D
    mul-double v26, v12, v14

    sub-double v26, v26, v8

    mul-double v28, v12, v18

    add-double v26, v26, v28

    mul-double v28, v16, v14

    add-double v26, v26, v28

    mul-double v28, v16, v18

    add-double v20, v26, v28

    .line 534
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v26, v26, v8

    sub-double v26, v26, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    sub-double v26, v26, v28

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    div-double v10, v26, v28

    .line 535
    add-double v20, v6, v10

    .line 537
    move-wide/from16 v22, v20

    .line 538
    .local v22, "zhi":D
    sub-double v26, v6, v20

    add-double v24, v26, v10

    .line 539
    .local v24, "zlo":D
    new-instance v26, Lorg/locationtech/jts/math/DD;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    return-object v26
.end method

.method public strictfp doubleValue()D
    .locals 4

    .prologue
    .line 899
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->lo:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public strictfp dump()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public strictfp equals(Lorg/locationtech/jts/math/DD;)Z
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 962
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp floor()Lorg/locationtech/jts/math/DD;
    .locals 6

    .prologue
    .line 632
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    .line 640
    :goto_0
    return-object v4

    .line 633
    :cond_0
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 634
    .local v0, "fhi":D
    const-wide/16 v2, 0x0

    .line 636
    .local v2, "flo":D
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v4, v0, v4

    if-nez v4, :cond_1

    .line 637
    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 640
    :cond_1
    new-instance v4, Lorg/locationtech/jts/math/DD;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    goto :goto_0
.end method

.method public strictfp ge(Lorg/locationtech/jts/math/DD;)Z
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 981
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp gt(Lorg/locationtech/jts/math/DD;)Z
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 972
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp intValue()I
    .locals 2

    .prologue
    .line 909
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    double-to-int v0, v0

    return v0
.end method

.method public strictfp isNaN()Z
    .locals 2

    .prologue
    .line 952
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public strictfp isNegative()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 934
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp isPositive()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 944
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp isZero()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 924
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp le(Lorg/locationtech/jts/math/DD;)Z
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 999
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp lt(Lorg/locationtech/jts/math/DD;)Z
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 990
    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/math/DD;->lo:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp max(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "x"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/math/DD;->ge(Lorg/locationtech/jts/math/DD;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public strictfp min(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "x"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/math/DD;->le(Lorg/locationtech/jts/math/DD;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public final strictfp multiply(D)Lorg/locationtech/jts/math/DD;
    .locals 5
    .param p1, "y"    # D

    .prologue
    .line 476
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/math/DD;->createNaN()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v3}, Lorg/locationtech/jts/math/DD;->selfMultiply(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0
.end method

.method public final strictfp multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 464
    invoke-virtual {p1}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/math/DD;->createNaN()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/locationtech/jts/math/DD;->copy(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0
.end method

.method public final strictfp negate()Lorg/locationtech/jts/math/DD;
    .locals 6

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    new-instance v0, Lorg/locationtech/jts/math/DD;

    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->hi:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/locationtech/jts/math/DD;->lo:D

    neg-double v4, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    move-object p0, v0

    goto :goto_0
.end method

.method public strictfp pow(I)Lorg/locationtech/jts/math/DD;
    .locals 11
    .param p1, "exp"    # I

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 824
    int-to-double v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    .line 825
    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 848
    :cond_0
    :goto_0
    return-object v2

    .line 827
    :cond_1
    new-instance v1, Lorg/locationtech/jts/math/DD;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/math/DD;-><init>(Lorg/locationtech/jts/math/DD;)V

    .line 828
    .local v1, "r":Lorg/locationtech/jts/math/DD;
    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 829
    .local v2, "s":Lorg/locationtech/jts/math/DD;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 831
    .local v0, "n":I
    if-le v0, v10, :cond_4

    .line 833
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 834
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v10, :cond_3

    .line 835
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    .line 837
    :cond_3
    div-int/lit8 v0, v0, 0x2

    .line 838
    if-lez v0, :cond_2

    .line 839
    invoke-virtual {v1}, Lorg/locationtech/jts/math/DD;->sqr()Lorg/locationtech/jts/math/DD;

    move-result-object v1

    goto :goto_1

    .line 842
    :cond_4
    move-object v2, v1

    .line 846
    :cond_5
    if-gez p1, :cond_0

    .line 847
    invoke-virtual {v2}, Lorg/locationtech/jts/math/DD;->reciprocal()Lorg/locationtech/jts/math/DD;

    move-result-object v2

    goto :goto_0
.end method

.method public final strictfp reciprocal()Lorg/locationtech/jts/math/DD;
    .locals 30

    .prologue
    .line 604
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    div-double v6, v26, v28

    .line 605
    .local v6, "C":D
    const-wide v26, 0x41a0000002000000L    # 1.34217729E8

    mul-double v10, v26, v6

    .line 606
    .local v10, "c":D
    sub-double v12, v10, v6

    .line 607
    .local v12, "hc":D
    const-wide v26, 0x41a0000002000000L    # 1.34217729E8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    mul-double v20, v26, v28

    .line 608
    .local v20, "u":D
    sub-double v12, v10, v12

    sub-double v16, v6, v12

    .local v16, "tc":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v14, v20, v26

    .local v14, "hy":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    mul-double v8, v6, v26

    .local v8, "U":D
    sub-double v14, v20, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v26, v0

    sub-double v18, v26, v14

    .line 609
    .local v18, "ty":D
    mul-double v26, v12, v14

    sub-double v26, v26, v8

    mul-double v28, v12, v18

    add-double v26, v26, v28

    mul-double v28, v16, v14

    add-double v26, v26, v28

    mul-double v28, v16, v18

    add-double v20, v26, v28

    .line 610
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v8

    sub-double v26, v26, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->lo:D

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v28, v0

    div-double v10, v26, v28

    .line 612
    add-double v22, v6, v10

    .line 613
    .local v22, "zhi":D
    sub-double v26, v6, v22

    add-double v24, v26, v10

    .line 614
    .local v24, "zlo":D
    new-instance v26, Lorg/locationtech/jts/math/DD;

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/math/DD;-><init>(DD)V

    return-object v26
.end method

.method public strictfp rint()Lorg/locationtech/jts/math/DD;
    .locals 4

    .prologue
    .line 699
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .line 701
    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v2, v3}, Lorg/locationtech/jts/math/DD;->add(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    .line 702
    .local v0, "plus5":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v0}, Lorg/locationtech/jts/math/DD;->floor()Lorg/locationtech/jts/math/DD;

    move-result-object p0

    goto :goto_0
.end method

.method public final strictfp selfAdd(D)Lorg/locationtech/jts/math/DD;
    .locals 19
    .param p1, "y"    # D

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/math/DD;->hi:D

    add-double v4, v14, p1

    .line 360
    .local v4, "S":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/math/DD;->hi:D

    sub-double v6, v4, v14

    .line 361
    .local v6, "e":D
    sub-double v12, v4, v6

    .line 362
    .local v12, "s":D
    sub-double v14, p1, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/math/DD;->hi:D

    move-wide/from16 v16, v0

    sub-double v16, v16, v12

    add-double v12, v14, v16

    .line 363
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/math/DD;->lo:D

    add-double v8, v12, v14

    .line 364
    .local v8, "f":D
    add-double v2, v4, v8

    .line 365
    .local v2, "H":D
    sub-double v14, v4, v2

    add-double v10, v8, v14

    .line 366
    .local v10, "h":D
    add-double v14, v2, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/locationtech/jts/math/DD;->hi:D

    .line 367
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/locationtech/jts/math/DD;->hi:D

    sub-double v14, v2, v14

    add-double/2addr v14, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/locationtech/jts/math/DD;->lo:D

    .line 368
    return-object p0
.end method

.method public final strictfp selfAdd(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 344
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;->selfAdd(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp selfDivide(D)Lorg/locationtech/jts/math/DD;
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 579
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/math/DD;->selfDivide(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp selfDivide(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 565
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;->selfDivide(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp selfMultiply(D)Lorg/locationtech/jts/math/DD;
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 505
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/locationtech/jts/math/DD;->selfMultiply(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 491
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->hi:D

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;->selfMultiply(DD)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public strictfp selfSqr()Lorg/locationtech/jts/math/DD;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/math/DD;->selfMultiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp selfSubtract(D)Lorg/locationtech/jts/math/DD;
    .locals 5
    .param p1, "y"    # D

    .prologue
    .line 441
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    neg-double v0, p1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;->selfAdd(DD)Lorg/locationtech/jts/math/DD;

    move-result-object p0

    goto :goto_0
.end method

.method public final strictfp selfSubtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 4
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    .end local p0    # "this":Lorg/locationtech/jts/math/DD;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/math/DD;
    :cond_0
    iget-wide v0, p1, Lorg/locationtech/jts/math/DD;->hi:D

    neg-double v0, v0

    iget-wide v2, p1, Lorg/locationtech/jts/math/DD;->lo:D

    neg-double v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/math/DD;->selfAdd(DD)Lorg/locationtech/jts/math/DD;

    move-result-object p0

    goto :goto_0
.end method

.method public strictfp setValue(D)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/math/DD;->init(D)V

    .line 307
    return-object p0
.end method

.method public strictfp setValue(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 0
    .param p1, "value"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lorg/locationtech/jts/math/DD;->init(Lorg/locationtech/jts/math/DD;)V

    .line 296
    return-object p0
.end method

.method public strictfp signum()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    .line 680
    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->hi:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 682
    :cond_2
    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 683
    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->lo:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 684
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public strictfp sqr()Lorg/locationtech/jts/math/DD;
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0, p0}, Lorg/locationtech/jts/math/DD;->multiply(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public strictfp sqrt()Lorg/locationtech/jts/math/DD;
    .locals 12

    .prologue
    .line 793
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 794
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v8

    .line 807
    :goto_0
    return-object v8

    .line 796
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNegative()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 797
    sget-object v8, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    goto :goto_0

    .line 800
    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v6, v8, v10

    .line 801
    .local v6, "x":D
    iget-wide v8, p0, Lorg/locationtech/jts/math/DD;->hi:D

    mul-double v0, v8, v6

    .line 803
    .local v0, "ax":D
    invoke-static {v0, v1}, Lorg/locationtech/jts/math/DD;->valueOf(D)Lorg/locationtech/jts/math/DD;

    move-result-object v2

    .line 804
    .local v2, "axdd":Lorg/locationtech/jts/math/DD;
    invoke-virtual {v2}, Lorg/locationtech/jts/math/DD;->sqr()Lorg/locationtech/jts/math/DD;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/math/DD;->subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v3

    .line 805
    .local v3, "diffSq":Lorg/locationtech/jts/math/DD;
    iget-wide v8, v3, Lorg/locationtech/jts/math/DD;->hi:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v6

    mul-double v4, v8, v10

    .line 807
    .local v4, "d2":D
    invoke-virtual {v2, v4, v5}, Lorg/locationtech/jts/math/DD;->add(D)Lorg/locationtech/jts/math/DD;

    move-result-object v8

    goto :goto_0
.end method

.method public final strictfp subtract(D)Lorg/locationtech/jts/math/DD;
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 411
    neg-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/math/DD;->add(D)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp subtract(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;
    .locals 1
    .param p1, "y"    # Lorg/locationtech/jts/math/DD;

    .prologue
    .line 400
    invoke-virtual {p1}, Lorg/locationtech/jts/math/DD;->negate()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/math/DD;->add(Lorg/locationtech/jts/math/DD;)Lorg/locationtech/jts/math/DD;

    move-result-object v0

    return-object v0
.end method

.method public strictfp toSciNotation()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1100
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1101
    const-string v4, "0.0E0"

    .line 1125
    :cond_0
    :goto_0
    return-object v4

    .line 1103
    :cond_1
    invoke-direct {p0}, Lorg/locationtech/jts/math/DD;->getSpecialNumberString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, "specialStr":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1107
    new-array v3, v9, [I

    .line 1108
    .local v3, "magnitude":[I
    invoke-direct {p0, v8, v3}, Lorg/locationtech/jts/math/DD;->extractSignificantDigits(Z[I)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, "digits":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, "expStr":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_2

    .line 1114
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found leading zero: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1118
    :cond_2
    const-string v5, ""

    .line 1119
    .local v5, "trailingDigits":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 1120
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1121
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "digitsWithDecimal":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1125
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public strictfp toStandardNotation()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1063
    invoke-direct {p0}, Lorg/locationtech/jts/math/DD;->getSpecialNumberString()Ljava/lang/String;

    move-result-object v5

    .line 1064
    .local v5, "specialStr":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1089
    .end local v5    # "specialStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1067
    .restart local v5    # "specialStr":Ljava/lang/String;
    :cond_0
    new-array v1, v7, [I

    .line 1068
    .local v1, "magnitude":[I
    invoke-direct {p0, v7, v1}, Lorg/locationtech/jts/math/DD;->extractSignificantDigits(Z[I)Ljava/lang/String;

    move-result-object v4

    .line 1069
    .local v4, "sigDigits":Ljava/lang/String;
    aget v7, v1, v8

    add-int/lit8 v0, v7, 0x1

    .line 1071
    .local v0, "decimalPointPos":I
    move-object v2, v4

    .line 1073
    .local v2, "num":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2

    .line 1074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1087
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNegative()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1076
    :cond_2
    if-gez v0, :cond_3

    .line 1077
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    neg-int v8, v0

    invoke-static {v10, v8}, Lorg/locationtech/jts/math/DD;->stringOfChar(CI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1079
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1082
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v3, v0, v7

    .line 1083
    .local v3, "numZeroes":I
    invoke-static {v10, v3}, Lorg/locationtech/jts/math/DD;->stringOfChar(CI)Ljava/lang/String;

    move-result-object v6

    .line 1084
    .local v6, "zeroes":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v3    # "numZeroes":I
    .end local v6    # "zeroes":Ljava/lang/String;
    :cond_4
    move-object v5, v2

    .line 1089
    goto/16 :goto_0
.end method

.method public strictfp toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1050
    iget-wide v2, p0, Lorg/locationtech/jts/math/DD;->hi:D

    invoke-static {v2, v3}, Lorg/locationtech/jts/math/DD;->magnitude(D)I

    move-result v0

    .line 1051
    .local v0, "mag":I
    const/4 v1, -0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 1052
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->toStandardNotation()Ljava/lang/String;

    move-result-object v1

    .line 1053
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->toSciNotation()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public strictfp trunc()Lorg/locationtech/jts/math/DD;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/locationtech/jts/math/DD;->NaN:Lorg/locationtech/jts/math/DD;

    .line 721
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->floor()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/math/DD;->ceil()Lorg/locationtech/jts/math/DD;

    move-result-object v0

    goto :goto_0
.end method
