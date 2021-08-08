.class public Lorg/locationtech/jts/geom/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# static fields
.field public static final A:I = 0x2

.field public static final DONTCARE:I = -0x3

.field public static final FALSE:I = -0x1

.field public static final L:I = 0x1

.field public static final P:I = 0x0

.field public static final SYM_A:C = '2'

.field public static final SYM_DONTCARE:C = '*'

.field public static final SYM_FALSE:C = 'F'

.field public static final SYM_L:C = '1'

.field public static final SYM_P:C = '0'

.field public static final SYM_TRUE:C = 'T'

.field public static final TRUE:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDimensionSymbol(I)C
    .locals 3
    .param p0, "dimensionValue"    # I

    .prologue
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dimension value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    const/16 v0, 0x46

    .line 109
    :goto_0
    return v0

    .line 101
    :pswitch_1
    const/16 v0, 0x54

    goto :goto_0

    .line 103
    :pswitch_2
    const/16 v0, 0x2a

    goto :goto_0

    .line 105
    :pswitch_3
    const/16 v0, 0x30

    goto :goto_0

    .line 107
    :pswitch_4
    const/16 v0, 0x31

    goto :goto_0

    .line 109
    :pswitch_5
    const/16 v0, 0x32

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toDimensionValue(C)I
    .locals 3
    .param p0, "dimensionSymbol"    # C

    .prologue
    .line 125
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dimension symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :sswitch_0
    const/4 v0, -0x1

    .line 137
    :goto_0
    return v0

    .line 129
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 131
    :sswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 133
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x30 -> :sswitch_3
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x46 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
