.class public Lgnu/xquery/util/RelativeStepFilter;
.super Lgnu/lists/FilterConsumer;
.source "RelativeStepFilter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field seen:C

.field snodes:Lgnu/kawa/xml/SortedNodes;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 0
    .param p1, "base"    # Lgnu/lists/Consumer;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected beforeContent()V
    .locals 2

    .prologue
    .line 48
    iget-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/Error;

    const-string v1, "path returns mix of atoms and nodes"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const/16 v0, 0x41

    iput-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    .line 51
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 2
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 32
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 33
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    iget-object v1, p0, Lgnu/xquery/util/RelativeStepFilter;->base:Lgnu/lists/Consumer;

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/SortedNodes;->consume(Lgnu/lists/Consumer;)V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    .line 68
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 37
    instance-of v1, p1, Lgnu/lists/SeqPosition;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lgnu/lists/SeqPosition;

    .line 40
    .local v0, "n":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v1, v2}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 44
    .end local v0    # "n":Lgnu/lists/SeqPosition;
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .prologue
    .line 55
    iget-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/Error;

    const-string v1, "path returns mix of atoms and nodes"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const/16 v0, 0x4e

    iput-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    .line 58
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    iput-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    .line 60
    :cond_1
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 61
    return-void
.end method
