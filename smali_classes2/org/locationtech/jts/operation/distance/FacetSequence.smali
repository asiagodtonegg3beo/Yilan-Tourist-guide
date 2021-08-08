.class public Lorg/locationtech/jts/operation/distance/FacetSequence;
.super Ljava/lang/Object;
.source "FacetSequence.java"


# instance fields
.field private end:I

.field private p0:Lorg/locationtech/jts/geom/Coordinate;

.field private p1:Lorg/locationtech/jts/geom/Coordinate;

.field private pt:Lorg/locationtech/jts/geom/Coordinate;

.field private pts:Lorg/locationtech/jts/geom/CoordinateSequence;

.field private q0:Lorg/locationtech/jts/geom/Coordinate;

.field private q1:Lorg/locationtech/jts/geom/Coordinate;

.field private seqPt:Lorg/locationtech/jts/geom/Coordinate;

.field private start:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 1
    .param p1, "pts"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "start"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 37
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 114
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 115
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 116
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    .line 117
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    .line 61
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 62
    iput p2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .line 63
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;II)V
    .locals 1
    .param p1, "pts"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 37
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    .line 114
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 115
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 116
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    .line 117
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    .line 48
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 49
    iput p2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .line 50
    iput p3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    .line 51
    return-void
.end method

.method private computeLineLineDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 12
    .param p1, "facetSeq"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    const-wide/16 v6, 0x0

    .line 122
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 124
    .local v4, "minDistance":D
    iget v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_3

    .line 125
    iget v3, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .local v3, "j":I
    :goto_1
    iget v8, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_2

    .line 126
    iget-object v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v9, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v8, v2, v9}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 127
    iget-object v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v8, v9, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 128
    iget-object v8, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v9, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v8, v3, v9}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 129
    iget-object v8, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v8, v9, v10}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 131
    iget-object v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v9, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v10, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v11, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v8, v9, v10, v11}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distanceLineLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 132
    .local v0, "dist":D
    cmpl-double v8, v0, v6

    if-nez v8, :cond_0

    .line 139
    .end local v0    # "dist":D
    .end local v3    # "j":I
    :goto_2
    return-wide v6

    .line 134
    .restart local v0    # "dist":D
    .restart local v3    # "j":I
    :cond_0
    cmpg-double v8, v0, v4

    if-gez v8, :cond_1

    .line 135
    move-wide v4, v0

    .line 125
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "dist":D
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_3
    move-wide v6, v4

    .line 139
    goto :goto_2
.end method

.method private computePointLineDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 10
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "facetSeq"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    const-wide/16 v6, 0x0

    .line 144
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 146
    .local v4, "minDistance":D
    iget v2, p2, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .local v2, "i":I
    :goto_0
    iget v3, p2, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 147
    iget-object v3, p2, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v3, v2, v8}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 148
    iget-object v3, p2, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v3, v8, v9}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 149
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v8, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->q1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {p1, v3, v8}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 150
    .local v0, "dist":D
    cmpl-double v3, v0, v6

    if-nez v3, :cond_1

    move-wide v4, v6

    .line 155
    .end local v0    # "dist":D
    .end local v4    # "minDistance":D
    :cond_0
    return-wide v4

    .line 151
    .restart local v0    # "dist":D
    .restart local v4    # "minDistance":D
    :cond_1
    cmpg-double v3, v0, v4

    if-gez v3, :cond_2

    .line 152
    move-wide v4, v0

    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public distance(Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 5
    .param p1, "facetSeq"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/distance/FacetSequence;->isPoint()Z

    move-result v0

    .line 94
    .local v0, "isPoint":Z
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->isPoint()Z

    move-result v1

    .line 96
    .local v1, "isPointOther":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    iget-object v4, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v2, v3, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 98
    iget-object v2, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget v3, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    iget-object v4, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v2, v3, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 99
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 109
    :goto_0
    return-wide v2

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    iget-object v4, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v2, v3, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 103
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v2, p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->computePointLineDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    goto :goto_0

    .line 105
    :cond_1
    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget v3, p1, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    iget-object v4, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v2, v3, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 107
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->seqPt:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v2, p0}, Lorg/locationtech/jts/operation/distance/FacetSequence;->computePointLineDistance(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->computeLineLineDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 69
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    iget v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    if-ge v1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v2, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v2

    iget-object v4, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(DD)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v0
.end method

.method public isPoint()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    iget v2, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    iget v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v3, "LINESTRING ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 163
    .local v2, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget v1, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->end:I

    if-ge v1, v3, :cond_1

    .line 164
    iget v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->start:I

    if-le v1, v3, :cond_0

    .line 165
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    iget-object v3, p0, Lorg/locationtech/jts/operation/distance/FacetSequence;->pts:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3, v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
