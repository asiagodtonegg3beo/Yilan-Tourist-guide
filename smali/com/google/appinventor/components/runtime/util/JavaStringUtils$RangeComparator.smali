.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;)I
    .locals 4
    .param p1, "r1"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    .param p2, "r2"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    .prologue
    .line 141
    iget v2, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    iget v3, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    .local v0, "maxStart":I
    iget v2, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    iget v3, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    .local v1, "minEnd":I
    if-ge v0, v1, :cond_0

    .line 149
    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2

    :cond_0
    iget v2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    iget v3, p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    check-cast p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;->compare(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;)I

    move-result v0

    return v0
.end method
