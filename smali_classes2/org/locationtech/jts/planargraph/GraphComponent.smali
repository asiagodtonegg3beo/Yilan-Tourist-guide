.class public abstract Lorg/locationtech/jts/planargraph/GraphComponent;
.super Ljava/lang/Object;
.source "GraphComponent.java"


# instance fields
.field private data:Ljava/lang/Object;

.field protected isMarked:Z

.field protected isVisited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isMarked:Z

    .line 86
    iput-boolean v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isVisited:Z

    .line 90
    return-void
.end method

.method public static getComponentWithVisitedState(Ljava/util/Iterator;Z)Lorg/locationtech/jts/planargraph/GraphComponent;
    .locals 2
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "visitedState"    # Z

    .prologue
    .line 77
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/GraphComponent;

    .line 79
    .local v0, "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    invoke-virtual {v0}, Lorg/locationtech/jts/planargraph/GraphComponent;->isVisited()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 82
    .end local v0    # "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMarked(Ljava/util/Iterator;Z)V
    .locals 2
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "marked"    # Z

    .prologue
    .line 61
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/GraphComponent;

    .line 63
    .local v0, "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/GraphComponent;->setMarked(Z)V

    goto :goto_0

    .line 65
    .end local v0    # "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    :cond_0
    return-void
.end method

.method public static setVisited(Ljava/util/Iterator;Z)V
    .locals 2
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "visited"    # Z

    .prologue
    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/planargraph/GraphComponent;

    .line 49
    .local v0, "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/planargraph/GraphComponent;->setVisited(Z)V

    goto :goto_0

    .line 51
    .end local v0    # "comp":Lorg/locationtech/jts/planargraph/GraphComponent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isMarked()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isMarked:Z

    return v0
.end method

.method public abstract isRemoved()Z
.end method

.method public isVisited()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isVisited:Z

    return v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->data:Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMarked(Z)V
    .locals 0
    .param p1, "isMarked"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isMarked:Z

    return-void
.end method

.method public setVisited(Z)V
    .locals 0
    .param p1, "isVisited"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/locationtech/jts/planargraph/GraphComponent;->isVisited:Z

    return-void
.end method
