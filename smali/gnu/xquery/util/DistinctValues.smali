.class public Lgnu/xquery/util/DistinctValues;
.super Ljava/lang/Object;
.source "DistinctValues.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distinctValues$X(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .locals 2
    .param p0, "values"    # Ljava/lang/Object;
    .param p1, "coll"    # Lgnu/xquery/util/NamedCollator;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 14
    new-instance v0, Lgnu/xquery/util/DistinctValuesConsumer;

    iget-object v1, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-direct {v0, p1, v1}, Lgnu/xquery/util/DistinctValuesConsumer;-><init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V

    .line 16
    .local v0, "out":Lgnu/xquery/util/DistinctValuesConsumer;
    invoke-static {p0, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 17
    return-void
.end method
