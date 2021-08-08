.class public Lorg/osmdroid/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static gudermann(D)D
    .locals 4
    .param p0, "y"    # D

    .prologue
    .line 47
    const-wide v0, 0x404ca5dc20000000L    # 57.295780181884766

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static gudermannInverse(D)D
    .locals 6
    .param p0, "aLatitude"    # D

    .prologue
    .line 43
    const-wide v0, 0x3fe921fb60000000L    # 0.7853981852531433

    const-wide v2, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mod(II)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "modulus"    # I

    .prologue
    .line 51
    if-lez p0, :cond_1

    .line 52
    rem-int/2addr p0, p1

    .line 57
    .end local p0    # "number":I
    :cond_0
    return p0

    .line 54
    .restart local p0    # "number":I
    :cond_1
    :goto_0
    if-gez p0, :cond_0

    .line 55
    add-int/2addr p0, p1

    goto :goto_0
.end method
