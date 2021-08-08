.class Lorg/locationtech/jts/util/ObjectCounter$Counter;
.super Ljava/lang/Object;
.source "ObjectCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/util/ObjectCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Counter"
.end annotation


# instance fields
.field count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    .line 62
    iput p1, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    .line 63
    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count:I

    .line 73
    return-void
.end method
