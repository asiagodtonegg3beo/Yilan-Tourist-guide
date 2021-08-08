.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder$1;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;->changeOrder(Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder$1;->this$0:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
