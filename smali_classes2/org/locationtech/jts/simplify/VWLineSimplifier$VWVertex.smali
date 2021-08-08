.class Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
.super Ljava/lang/Object;
.source "VWLineSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/simplify/VWLineSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VWVertex"
.end annotation


# static fields
.field public static MAX_AREA:D


# instance fields
.field private area:D

.field private isLive:Z

.field private next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

.field private prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

.field private pt:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    sput-wide v0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->MAX_AREA:D

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-wide v0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->MAX_AREA:D

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->area:D

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->isLive:Z

    .line 114
    iput-object p1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    return-object v0
.end method

.method public static buildLine([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    .locals 5
    .param p0, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "first":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    const/4 v2, 0x0

    .line 90
    .local v2, "prev":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 91
    new-instance v3, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 92
    .local v3, "v":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    if-nez v0, :cond_0

    .line 93
    move-object v0, v3

    .line 94
    :cond_0
    invoke-virtual {v3, v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->setPrev(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V

    .line 95
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->setNext(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V

    .line 97
    invoke-virtual {v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->updateArea()V

    .line 99
    :cond_1
    move-object v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "v":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getArea()D
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->area:D

    return-wide v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 166
    .local v0, "coords":Lorg/locationtech/jts/geom/CoordinateList;
    move-object v1, p0

    .line 168
    .local v1, "curr":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    :cond_0
    iget-object v2, v1, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->pt:Lorg/locationtech/jts/geom/Coordinate;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 169
    iget-object v1, v1, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 170
    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->isLive:Z

    return v0
.end method

.method public remove()Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 147
    .local v2, "tmpPrev":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    iget-object v1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 148
    .local v1, "tmpNext":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    const/4 v0, 0x0

    .line 149
    .local v0, "result":Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    invoke-virtual {v3, v1}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->setNext(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V

    .line 151
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    invoke-virtual {v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->updateArea()V

    .line 152
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 154
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    invoke-virtual {v3, v2}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->setPrev(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V

    .line 156
    iget-object v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    invoke-virtual {v3}, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->updateArea()V

    .line 157
    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 160
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->isLive:Z

    .line 161
    return-object v0
.end method

.method public setNext(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V
    .locals 0
    .param p1, "next"    # Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 125
    return-void
.end method

.method public setPrev(Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;)V
    .locals 0
    .param p1, "prev"    # Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    .line 120
    return-void
.end method

.method public updateArea()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    sget-wide v0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->MAX_AREA:D

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->area:D

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->prev:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    iget-object v0, v0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v1, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->next:Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;

    iget-object v2, v2, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v0, v1, v2}, Lorg/locationtech/jts/geom/Triangle;->area(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/simplify/VWLineSimplifier$VWVertex;->area:D

    goto :goto_0
.end method
