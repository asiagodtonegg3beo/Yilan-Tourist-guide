.class Lgnu/xquery/util/DistinctValuesConsumer;
.super Lgnu/lists/FilterConsumer;
.source "DistinctValues.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field table:Lgnu/xquery/util/DistinctValuesHashTable;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "collator"    # Lgnu/xquery/util/NamedCollator;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 115
    invoke-direct {p0, p2}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 116
    new-instance v0, Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-direct {v0, p1}, Lgnu/xquery/util/DistinctValuesHashTable;-><init>(Lgnu/xquery/util/NamedCollator;)V

    iput-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    .line 117
    return-void
.end method


# virtual methods
.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 0
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 132
    return-void

    .line 131
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 136
    instance-of v2, p1, Lgnu/mapping/Values;

    if-eqz v2, :cond_1

    .line 138
    invoke-static {p1, p0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    instance-of v2, p1, Lgnu/kawa/xml/KNode;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 143
    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 144
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v2, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    iget v3, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    :cond_2
    iget-object v2, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lgnu/xquery/util/DistinctValuesHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "old":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 150
    iget-object v2, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-virtual {v2, p1, p1}, Lgnu/xquery/util/DistinctValuesHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lgnu/xquery/util/DistinctValuesConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 1
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .prologue
    .line 126
    check-cast p1, Lgnu/xml/NodeTree;

    .end local p1    # "seq":Lgnu/lists/AbstractSequence;
    invoke-virtual {p1, p2}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
