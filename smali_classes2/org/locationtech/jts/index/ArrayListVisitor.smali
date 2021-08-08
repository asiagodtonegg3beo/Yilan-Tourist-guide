.class public Lorg/locationtech/jts/index/ArrayListVisitor;
.super Ljava/lang/Object;
.source "ArrayListVisitor.java"

# interfaces
.implements Lorg/locationtech/jts/index/ItemVisitor;


# instance fields
.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/ArrayListVisitor;->items:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/locationtech/jts/index/ArrayListVisitor;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public visitItem(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/locationtech/jts/index/ArrayListVisitor;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
