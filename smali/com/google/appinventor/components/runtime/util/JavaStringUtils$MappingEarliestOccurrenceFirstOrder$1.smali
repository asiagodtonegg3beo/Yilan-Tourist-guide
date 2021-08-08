.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;->changeOrder(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

.field final synthetic val$occurrenceIndices:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;->this$0:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;->val$occurrenceIndices:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t1"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;->val$occurrenceIndices:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "id1":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;->val$occurrenceIndices:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 98
    .local v1, "id2":I
    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 103
    :goto_0
    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    goto :goto_0
.end method
