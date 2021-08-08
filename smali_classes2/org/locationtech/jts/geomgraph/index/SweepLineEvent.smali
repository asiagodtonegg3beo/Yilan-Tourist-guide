.class public Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
.super Ljava/lang/Object;
.source "SweepLineEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final DELETE:I = 0x2

.field private static final INSERT:I = 0x1


# instance fields
.field private deleteEventIndex:I

.field private eventType:I

.field private insertEvent:Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

.field private label:Ljava/lang/Object;

.field private obj:Ljava/lang/Object;

.field private xValue:D


# direct methods
.method public constructor <init>(DLorg/locationtech/jts/geomgraph/index/SweepLineEvent;)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "insertEvent"    # Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    .line 57
    iput-wide p1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    .line 58
    iput-object p3, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;DLjava/lang/Object;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/Object;
    .param p2, "x"    # D
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->label:Ljava/lang/Object;

    .line 44
    iput-wide p2, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    .line 45
    iput-object p4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->obj:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 82
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .line 83
    .local v0, "pe":Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    iget-wide v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    iget-wide v6, v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    iget-wide v6, v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->xValue:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 85
    :cond_2
    iget v3, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    iget v4, v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    if-lt v3, v4, :cond_0

    .line 86
    iget v1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    iget v3, v0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    if-le v1, v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeleteEventIndex()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->deleteEventIndex:I

    return v0
.end method

.method public getInsertEvent()Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->insertEvent:Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public isDelete()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->eventType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameLabel(Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;)Z
    .locals 3
    .param p1, "ev"    # Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->label:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->label:Ljava/lang/Object;

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->label:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDeleteEventIndex(I)V
    .locals 0
    .param p1, "deleteEventIndex"    # I

    .prologue
    .line 65
    iput p1, p0, Lorg/locationtech/jts/geomgraph/index/SweepLineEvent;->deleteEventIndex:I

    return-void
.end method
