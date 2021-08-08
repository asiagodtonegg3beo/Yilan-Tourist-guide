.class public Lorg/locationtech/jts/index/kdtree/KdNode;
.super Ljava/lang/Object;
.source "KdNode.java"


# instance fields
.field private count:I

.field private data:Ljava/lang/Object;

.field private left:Lorg/locationtech/jts/index/kdtree/KdNode;

.field private p:Lorg/locationtech/jts/geom/Coordinate;

.field private right:Lorg/locationtech/jts/index/kdtree/KdNode;


# direct methods
.method public constructor <init>(DDLjava/lang/Object;)V
    .locals 3
    .param p1, "_x"    # D
    .param p3, "_y"    # D
    .param p5, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 38
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 39
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->left:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 40
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->right:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    .line 42
    iput-object p5, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->data:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 52
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    .line 53
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->left:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 54
    iput-object v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->right:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    .line 56
    iput-object p2, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->data:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getLeft()Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->left:Lorg/locationtech/jts/index/kdtree/KdNode;

    return-object v0
.end method

.method public getRight()Lorg/locationtech/jts/index/kdtree/KdNode;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->right:Lorg/locationtech/jts/index/kdtree/KdNode;

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->p:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v0
.end method

.method increment()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    .line 115
    return-void
.end method

.method public isRepeated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    iget v1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->count:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLeft(Lorg/locationtech/jts/index/kdtree/KdNode;)V
    .locals 0
    .param p1, "_left"    # Lorg/locationtech/jts/index/kdtree/KdNode;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->left:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 138
    return-void
.end method

.method setRight(Lorg/locationtech/jts/index/kdtree/KdNode;)V
    .locals 0
    .param p1, "_right"    # Lorg/locationtech/jts/index/kdtree/KdNode;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/locationtech/jts/index/kdtree/KdNode;->right:Lorg/locationtech/jts/index/kdtree/KdNode;

    .line 143
    return-void
.end method
