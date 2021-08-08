.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0
    .param p1, "isNegative"    # Z
    .param p2, "value"    # J
    .param p4, "pos"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    .line 37
    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 38
    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 39
    return-void
.end method

.method public static parseHex(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "len"    # I

    .prologue
    .line 137
    move v1, p1

    .line 138
    .local v1, "pos":I
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "value":J
    if-lt v1, p2, :cond_1

    .line 143
    const/4 v4, 0x0

    .line 174
    :goto_0
    return-object v4

    .line 166
    .local v0, "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 145
    .end local v0    # "ch":C
    :cond_1
    if-ge v1, p2, :cond_4

    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .restart local v0    # "ch":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 150
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x30

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 163
    :goto_1
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 164
    const/4 v4, 0x0

    goto :goto_0

    .line 152
    :cond_2
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    const/16 v4, 0x46

    if-gt v0, v4, :cond_3

    .line 154
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x41

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_1

    .line 156
    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x66

    if-gt v0, v4, :cond_4

    .line 158
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x61

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_1

    .line 170
    .end local v0    # "ch":C
    :cond_4
    if-ne v1, p1, :cond_5

    .line 171
    const/4 v4, 0x0

    goto :goto_0

    .line 174
    :cond_5
    new-instance v4, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "len"    # I

    .prologue
    .line 66
    move v2, p1

    .line 67
    .local v2, "pos":I
    const/4 v1, 0x0

    .line 68
    .local v1, "isNegative":Z
    const-wide/16 v4, 0x0

    .line 69
    .local v4, "value":J
    const/4 v3, 0x0

    .line 72
    .local v3, "sigStart":I
    if-lt v2, p2, :cond_0

    .line 73
    const/4 v6, 0x0

    .line 109
    :goto_0
    return-object v6

    .line 75
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_1
    :pswitch_0
    move v3, v2

    .line 84
    :goto_2
    if-ge v2, p2, :cond_3

    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 87
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    .line 89
    if-eqz v1, :cond_1

    .line 90
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    sub-long v4, v6, v8

    .line 91
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 92
    const/4 v6, 0x0

    goto :goto_0

    .line 77
    :pswitch_1
    const/4 v1, 0x1

    .line 79
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 95
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 96
    const/4 v6, 0x0

    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_3
    if-ne v2, v3, :cond_4

    .line 106
    const/4 v6, 0x0

    goto :goto_0

    .line 109
    :cond_4
    new-instance v6, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v6, v1, v4, v5, v2}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
