.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 31
    const/16 v0, 0x45

    iput-char v0, p0, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "digStart"    # I
    .param p2, "digEnd"    # I

    .prologue
    .line 47
    move v1, p2

    .line 49
    .local v1, "j":I
    :goto_0
    if-ne v1, p1, :cond_0

    .line 51
    const/16 v2, 0x31

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 52
    const/4 v2, 0x1

    .line 58
    :goto_1
    return v2

    .line 54
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 55
    .local v0, "ch":C
    const/16 v2, 0x39

    if-eq v0, v2, :cond_1

    .line 57
    add-int/lit8 v2, v0, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 58
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 39
    .param p1, "value"    # D
    .param p3, "dstr"    # Ljava/lang/String;
    .param p4, "sbuf"    # Ljava/lang/StringBuffer;
    .param p5, "fpos"    # Ljava/text/FieldPosition;

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    move/from16 v20, v0

    .line 82
    .local v20, "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 83
    .local v6, "d":I
    const-wide/16 v34, 0x0

    cmpg-double v33, p1, v34

    if-gez v33, :cond_5

    const/16 v23, 0x1

    .line 84
    .local v23, "negative":Z
    :goto_0
    if-eqz v23, :cond_0

    .line 85
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    .line 86
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    .line 87
    .local v28, "oldLen":I
    const/16 v31, 0x1

    .line 88
    .local v31, "signLen":I
    if-eqz v23, :cond_6

    .line 90
    if-ltz v6, :cond_1

    .line 91
    const/16 v33, 0x2d

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_1
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 102
    .local v9, "digStart":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v33

    if-nez v33, :cond_2

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v33

    if-eqz v33, :cond_8

    :cond_2
    const/16 v27, 0x1

    .line 103
    .local v27, "nonFinite":Z
    :goto_2
    if-ltz v6, :cond_3

    if-eqz v27, :cond_14

    .line 105
    :cond_3
    if-nez p3, :cond_4

    .line 106
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    .line 107
    :cond_4
    const/16 v33, 0x45

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 108
    .local v18, "indexE":I
    if-ltz v18, :cond_13

    .line 110
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int v18, v18, v9

    .line 112
    add-int/lit8 v33, v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    const/16 v24, 0x1

    .line 113
    .local v24, "negexp":Z
    :goto_3
    const/4 v13, 0x0

    .line 114
    .local v13, "exponent":I
    if-eqz v24, :cond_a

    const/16 v33, 0x2

    :goto_4
    add-int v17, v18, v33

    .local v17, "i":I
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 115
    mul-int/lit8 v33, v13, 0xa

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v34

    add-int/lit8 v34, v34, -0x30

    add-int v13, v33, v34

    .line 114
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 83
    .end local v9    # "digStart":I
    .end local v13    # "exponent":I
    .end local v17    # "i":I
    .end local v18    # "indexE":I
    .end local v23    # "negative":Z
    .end local v24    # "negexp":Z
    .end local v27    # "nonFinite":Z
    .end local v28    # "oldLen":I
    .end local v31    # "signLen":I
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 94
    .restart local v23    # "negative":Z
    .restart local v28    # "oldLen":I
    .restart local v31    # "signLen":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 95
    const/16 v33, 0x2b

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    :cond_7
    const/16 v31, 0x0

    goto :goto_1

    .line 102
    .restart local v9    # "digStart":I
    :cond_8
    const/16 v27, 0x0

    goto :goto_2

    .line 112
    .restart local v18    # "indexE":I
    .restart local v27    # "nonFinite":Z
    :cond_9
    const/16 v24, 0x0

    goto :goto_3

    .line 114
    .restart local v13    # "exponent":I
    .restart local v24    # "negexp":Z
    :cond_a
    const/16 v33, 0x1

    goto :goto_4

    .line 116
    .restart local v17    # "i":I
    :cond_b
    if-eqz v24, :cond_c

    .line 117
    neg-int v13, v13

    .line 118
    :cond_c
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 122
    .end local v17    # "i":I
    .end local v24    # "negexp":Z
    :goto_6
    if-eqz v23, :cond_d

    .line 123
    add-int/lit8 v9, v9, 0x1

    .line 124
    :cond_d
    add-int/lit8 v11, v9, 0x1

    .line 126
    .local v11, "dot":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    sub-int v10, v33, v9

    .line 134
    .local v10, "digits":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-le v10, v0, :cond_e

    add-int v33, v9, v10

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v33

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 135
    add-int/lit8 v10, v10, -0x1

    add-int v33, v9, v10

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    :cond_e
    sub-int v33, v10, v13

    add-int/lit8 v29, v33, -0x1

    .line 151
    .end local v11    # "dot":I
    .end local v18    # "indexE":I
    .local v29, "scale":I
    :goto_7
    add-int/lit8 v33, v20, -0x1

    sub-int v13, v13, v33

    .line 152
    if-gez v13, :cond_17

    neg-int v14, v13

    .line 153
    .local v14, "exponentAbs":I
    :goto_8
    const/16 v33, 0x3e8

    move/from16 v0, v33

    if-lt v14, v0, :cond_18

    const/4 v15, 0x4

    .line 155
    .local v15, "exponentLen":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-le v0, v15, :cond_f

    .line 156
    move-object/from16 v0, p0

    iget v15, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 157
    :cond_f
    const/16 v30, 0x1

    .line 158
    .local v30, "showExponent":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v33, v0

    if-nez v33, :cond_1b

    const/4 v12, 0x0

    .line 159
    .local v12, "ee":I
    :goto_a
    if-gez v6, :cond_1d

    const/16 v16, 0x1

    .line 160
    .local v16, "fracUnspecified":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v33, v0

    if-nez v33, :cond_10

    if-eqz v16, :cond_12

    .line 162
    :cond_10
    sub-int v22, v10, v29

    .line 163
    .local v22, "n":I
    if-eqz v16, :cond_11

    .line 165
    const/16 v33, 0x7

    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v6, v22

    .line 166
    :goto_c
    if-le v10, v6, :cond_11

    .line 167
    move v6, v10

    .line 169
    :cond_11
    sub-int v7, v6, v22

    .line 170
    .local v7, "dd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->general:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1f

    if-ltz v22, :cond_1f

    if-ltz v7, :cond_1f

    .line 174
    move v10, v6

    .line 175
    move/from16 v20, v22

    .line 176
    const/16 v30, 0x0

    .line 196
    .end local v7    # "dd":I
    .end local v22    # "n":I
    :cond_12
    :goto_d
    add-int v8, v9, v10

    .line 197
    .local v8, "digEnd":I
    :goto_e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v0, v8, :cond_23

    .line 198
    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 121
    .end local v8    # "digEnd":I
    .end local v10    # "digits":I
    .end local v12    # "ee":I
    .end local v13    # "exponent":I
    .end local v14    # "exponentAbs":I
    .end local v15    # "exponentLen":I
    .end local v16    # "fracUnspecified":Z
    .end local v29    # "scale":I
    .end local v30    # "showExponent":Z
    .restart local v18    # "indexE":I
    :cond_13
    invoke-static/range {p3 .. p4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v13

    .restart local v13    # "exponent":I
    goto/16 :goto_6

    .line 140
    .end local v13    # "exponent":I
    .end local v18    # "indexE":I
    :cond_14
    if-lez v20, :cond_15

    const/16 v33, 0x1

    :goto_f
    add-int v10, v6, v33

    .line 141
    .restart local v10    # "digits":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v34

    sget-wide v36, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v34, v34, v36

    const-wide v36, 0x408f400000000000L    # 1000.0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v21, v0

    .line 142
    .local v21, "log":I
    const/high16 v33, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 143
    const/16 v21, 0x0

    .line 146
    :goto_10
    sub-int v33, v10, v21

    add-int/lit8 v29, v33, -0x1

    .line 147
    .restart local v29    # "scale":I
    move-wide/from16 v0, p1

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v33

    const/16 v34, 0xa

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    .line 148
    add-int/lit8 v33, v10, -0x1

    sub-int v13, v33, v29

    .restart local v13    # "exponent":I
    goto/16 :goto_7

    .end local v10    # "digits":I
    .end local v13    # "exponent":I
    .end local v21    # "log":I
    .end local v29    # "scale":I
    :cond_15
    move/from16 v33, v20

    .line 140
    goto :goto_f

    .line 145
    .restart local v10    # "digits":I
    .restart local v21    # "log":I
    :cond_16
    move/from16 v0, v21

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v21, v0

    goto :goto_10

    .end local v21    # "log":I
    .restart local v13    # "exponent":I
    .restart local v29    # "scale":I
    :cond_17
    move v14, v13

    .line 152
    goto/16 :goto_8

    .line 153
    .restart local v14    # "exponentAbs":I
    :cond_18
    const/16 v33, 0x64

    move/from16 v0, v33

    if-lt v14, v0, :cond_19

    const/4 v15, 0x3

    goto/16 :goto_9

    :cond_19
    const/16 v33, 0xa

    move/from16 v0, v33

    if-lt v14, v0, :cond_1a

    const/4 v15, 0x2

    goto/16 :goto_9

    :cond_1a
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 158
    .restart local v15    # "exponentLen":I
    .restart local v30    # "showExponent":Z
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    if-lez v33, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    add-int/lit8 v12, v33, 0x2

    goto/16 :goto_a

    :cond_1c
    const/4 v12, 0x4

    goto/16 :goto_a

    .line 159
    .restart local v12    # "ee":I
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 165
    .restart local v16    # "fracUnspecified":Z
    .restart local v22    # "n":I
    :cond_1e
    const/4 v6, 0x7

    goto/16 :goto_c

    .line 178
    .restart local v7    # "dd":I
    :cond_1f
    if-eqz v16, :cond_12

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    if-gtz v33, :cond_21

    .line 181
    move v10, v6

    .line 191
    :cond_20
    :goto_11
    if-gtz v10, :cond_12

    .line 192
    const/4 v10, 0x1

    goto/16 :goto_d

    .line 184
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    sub-int v33, v33, v31

    sub-int v33, v33, v15

    add-int/lit8 v5, v33, -0x3

    .line 185
    .local v5, "avail":I
    move v10, v5

    .line 186
    if-gez v20, :cond_22

    .line 187
    sub-int v10, v10, v20

    .line 188
    :cond_22
    if-le v10, v6, :cond_20

    .line 189
    move v10, v6

    goto :goto_11

    .line 201
    .end local v5    # "avail":I
    .end local v7    # "dd":I
    .end local v22    # "n":I
    .restart local v8    # "digEnd":I
    :cond_23
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    move/from16 v0, v33

    if-ne v8, v0, :cond_25

    const/16 v26, 0x30

    .line 202
    .local v26, "nextDigit":C
    :goto_12
    const/16 v33, 0x35

    move/from16 v0, v26

    move/from16 v1, v33

    if-lt v0, v1, :cond_26

    const/4 v4, 0x1

    .line 205
    .local v4, "addOne":Z
    :goto_13
    if-eqz v4, :cond_24

    move-object/from16 v0, p4

    invoke-static {v0, v9, v8}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v33

    if-eqz v33, :cond_24

    .line 206
    add-int/lit8 v29, v29, 0x1

    .line 208
    :cond_24
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    sub-int v33, v33, v8

    sub-int v29, v29, v33

    .line 209
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    move v11, v9

    .line 212
    .restart local v11    # "dot":I
    if-gez v20, :cond_27

    .line 215
    move/from16 v19, v20

    .local v19, "j":I
    :goto_14
    add-int/lit8 v19, v19, 0x1

    if-gtz v19, :cond_29

    .line 216
    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 201
    .end local v4    # "addOne":Z
    .end local v11    # "dot":I
    .end local v19    # "j":I
    .end local v26    # "nextDigit":C
    :cond_25
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v26

    goto :goto_12

    .line 202
    .restart local v26    # "nextDigit":C
    :cond_26
    const/4 v4, 0x0

    goto :goto_13

    .line 221
    .restart local v4    # "addOne":Z
    .restart local v11    # "dot":I
    :cond_27
    :goto_15
    add-int v33, v9, v20

    move/from16 v0, v33

    if-le v0, v8, :cond_28

    .line 222
    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 223
    :cond_28
    add-int v11, v11, v20

    .line 225
    :cond_29
    if-eqz v27, :cond_2c

    .line 226
    const/16 v30, 0x0

    .line 231
    :goto_16
    if-eqz v30, :cond_2e

    .line 234
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v33, v0

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    move/from16 v33, v0

    if-nez v33, :cond_2a

    if-gez v13, :cond_2b

    .line 236
    :cond_2a
    if-ltz v13, :cond_2d

    const/16 v33, 0x2b

    :goto_17
    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :cond_2b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    .line 238
    .restart local v17    # "i":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    .line 240
    .local v25, "newLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    sub-int v34, v25, v17

    sub-int v19, v33, v34

    .line 241
    .restart local v19    # "j":I
    if-lez v19, :cond_2f

    .line 243
    add-int v25, v25, v19

    .line 244
    :goto_18
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_2f

    .line 245
    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 228
    .end local v17    # "i":I
    .end local v19    # "j":I
    .end local v25    # "newLen":I
    :cond_2c
    const/16 v33, 0x2e

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 236
    :cond_2d
    const/16 v33, 0x2d

    goto :goto_17

    .line 250
    :cond_2e
    const/4 v15, 0x0

    .line 252
    :cond_2f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    .line 253
    .restart local v25    # "newLen":I
    sub-int v32, v25, v28

    .line 254
    .local v32, "used":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    sub-int v17, v33, v32

    .line 257
    .restart local v17    # "i":I
    if-eqz v16, :cond_32

    add-int/lit8 v33, v11, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_30

    add-int/lit8 v33, v11, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v33

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    if-lez v33, :cond_31

    if-lez v17, :cond_32

    .line 261
    :cond_31
    add-int/lit8 v17, v17, -0x1

    .line 262
    add-int/lit8 v33, v11, 0x1

    const/16 v34, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 265
    :cond_32
    if-gez v17, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    if-gtz v33, :cond_38

    :cond_33
    if-eqz v30, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-le v15, v0, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    move/from16 v33, v0

    if-lez v33, :cond_34

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v33, v0

    if-nez v33, :cond_38

    .line 270
    :cond_34
    if-gtz v20, :cond_36

    if-gtz v17, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    if-gtz v33, :cond_36

    .line 272
    :cond_35
    const/16 v33, 0x30

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 273
    add-int/lit8 v17, v17, -0x1

    .line 275
    :cond_36
    if-nez v30, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v33, v0

    if-lez v33, :cond_37

    .line 282
    :goto_19
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_37

    .line 283
    const/16 v33, 0x20

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    add-int/lit8 v17, v17, -0x1

    goto :goto_19

    .line 286
    :cond_37
    :goto_1a
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_39

    .line 287
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->padChar:C

    move/from16 v33, v0

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 289
    :cond_38
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v33, v0

    if-eqz v33, :cond_39

    .line 291
    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/ExponentialFormat;->width:I

    move/from16 v17, v0

    :goto_1b
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_39

    .line 293
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    move/from16 v33, v0

    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 295
    :cond_39
    return-object p4
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "value"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .prologue
    .line 74
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "value"    # F
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .prologue
    .line 67
    float-to-double v2, p1

    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .prologue
    .line 300
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "num"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .prologue
    .line 306
    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "num":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
