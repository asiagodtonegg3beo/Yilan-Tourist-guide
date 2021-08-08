.class public Lorg/locationtech/jts/util/ObjectCounter;
.super Ljava/lang/Object;
.source "ObjectCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/util/ObjectCounter$Counter;
    }
.end annotation


# instance fields
.field private counts:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/util/ObjectCounter;->counts:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v1, p0, Lorg/locationtech/jts/util/ObjectCounter;->counts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/util/ObjectCounter$Counter;

    .line 34
    .local v0, "counter":Lorg/locationtech/jts/util/ObjectCounter$Counter;
    if-nez v0, :cond_0

    .line 35
    iget-object v1, p0, Lorg/locationtech/jts/util/ObjectCounter;->counts:Ljava/util/Map;

    new-instance v2, Lorg/locationtech/jts/util/ObjectCounter$Counter;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/locationtech/jts/util/ObjectCounter$Counter;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/util/ObjectCounter$Counter;->increment()V

    goto :goto_0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v1, p0, Lorg/locationtech/jts/util/ObjectCounter;->counts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/util/ObjectCounter$Counter;

    .line 45
    .local v0, "counter":Lorg/locationtech/jts/util/ObjectCounter$Counter;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/util/ObjectCounter$Counter;->count()I

    move-result v1

    goto :goto_0
.end method
