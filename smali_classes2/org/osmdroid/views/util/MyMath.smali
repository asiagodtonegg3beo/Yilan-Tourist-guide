.class public Lorg/osmdroid/views/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getNextSquareNumberAbove(F)I
    .locals 4
    .param p0, "factor"    # F

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "out":I
    const/4 v0, 0x1

    .line 59
    .local v0, "cur":I
    const/4 v1, 0x1

    .line 61
    .local v1, "i":I
    :goto_0
    int-to-float v3, v0

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    .line 62
    return v2

    .line 64
    :cond_0
    move v2, v1

    .line 65
    mul-int/lit8 v0, v0, 0x2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
