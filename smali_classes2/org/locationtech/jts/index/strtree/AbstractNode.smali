.class public abstract Lorg/locationtech/jts/index/strtree/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/Boundable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a1e55ec4136984cL


# instance fields
.field private bounds:Ljava/lang/Object;

.field private childBoundables:Ljava/util/ArrayList;

.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    .line 54
    iput p1, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->level:I

    .line 55
    return-void
.end method


# virtual methods
.method public addChildBoundable(Lorg/locationtech/jts/index/strtree/Boundable;)V
    .locals 1
    .param p1, "childBoundable"    # Lorg/locationtech/jts/index/strtree/Boundable;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/locationtech/jts/util/Assert;->isTrue(Z)V

    .line 123
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract computeBounds()Ljava/lang/Object;
.end method

.method public getBounds()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/locationtech/jts/index/strtree/AbstractNode;->computeBounds()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->bounds:Ljava/lang/Object;

    return-object v0
.end method

.method public getChildBoundables()Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->level:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/locationtech/jts/index/strtree/AbstractNode;->childBoundables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
