.class public Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;
.super Ljava/lang/Object;
.source "BoundablePairDistanceComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/locationtech/jts/index/strtree/BoundablePair;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field normalOrder:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "normalOrder"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;->normalOrder:Z

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lorg/locationtech/jts/index/strtree/BoundablePair;

    check-cast p2, Lorg/locationtech/jts/index/strtree/BoundablePair;

    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;->compare(Lorg/locationtech/jts/index/strtree/BoundablePair;Lorg/locationtech/jts/index/strtree/BoundablePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/locationtech/jts/index/strtree/BoundablePair;Lorg/locationtech/jts/index/strtree/BoundablePair;)I
    .locals 8
    .param p1, "p1"    # Lorg/locationtech/jts/index/strtree/BoundablePair;
    .param p2, "p2"    # Lorg/locationtech/jts/index/strtree/BoundablePair;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 43
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v0

    .line 44
    .local v0, "distance1":D
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/BoundablePair;->getDistance()D

    move-result-wide v2

    .line 45
    .local v2, "distance2":D
    iget-boolean v7, p0, Lorg/locationtech/jts/index/strtree/BoundablePairDistanceComparator;->normalOrder:Z

    if-eqz v7, :cond_3

    .line 47
    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v4

    .line 49
    :cond_1
    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    move v4, v5

    .line 50
    goto :goto_0

    :cond_2
    move v4, v6

    .line 52
    goto :goto_0

    .line 56
    :cond_3
    cmpl-double v7, v0, v2

    if-lez v7, :cond_4

    move v4, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    cmpl-double v6, v0, v2

    if-nez v6, :cond_0

    move v4, v5

    .line 59
    goto :goto_0
.end method
