.class Lgnu/xquery/util/DistinctValuesHashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "DistinctValues.java"


# instance fields
.field collator:Lgnu/xquery/util/NamedCollator;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;)V
    .locals 0
    .param p1, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 78
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 79
    iput-object p1, p0, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    .line 80
    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 96
    .end local p1    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 86
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lgnu/math/RealNum;

    if-nez v1, :cond_2

    instance-of v1, p1, Lgnu/math/Numeric;

    if-nez v1, :cond_3

    .line 89
    :cond_2
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 90
    .local v0, "hash":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    .end local v0    # "hash":I
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 101
    if-ne p1, p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_2
    const/16 v0, 0x48

    iget-object v1, p0, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    invoke-static {v0, p1, p2, v1}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    goto :goto_0
.end method
