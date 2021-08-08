.class public Lorg/locationtech/jts/geomgraph/Position;
.super Ljava/lang/Object;
.source "Position.java"


# static fields
.field public static final LEFT:I = 0x1

.field public static final ON:I = 0x0

.field public static final RIGHT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final opposite(I)I
    .locals 2
    .param p0, "position"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 36
    if-ne p0, v1, :cond_1

    move p0, v0

    .line 38
    .end local p0    # "position":I
    :cond_0
    :goto_0
    return p0

    .line 37
    .restart local p0    # "position":I
    :cond_1
    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0
.end method
