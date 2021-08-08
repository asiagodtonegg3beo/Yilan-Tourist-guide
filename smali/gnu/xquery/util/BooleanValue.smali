.class public Lgnu/xquery/util/BooleanValue;
.super Lgnu/mapping/Procedure1;
.source "BooleanValue.java"


# static fields
.field public static final booleanValue:Lgnu/xquery/util/BooleanValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lgnu/xquery/util/BooleanValue;

    const-string v1, "boolean-value"

    invoke-direct {v0, v1}, Lgnu/xquery/util/BooleanValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/BooleanValue;->booleanValue:Lgnu/xquery/util/BooleanValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateBooleanValue"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/BooleanValue;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 10
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 26
    instance-of v7, p0, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    .line 27
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 50
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 28
    :cond_1
    instance-of v7, p0, Ljava/lang/Number;

    if-eqz v7, :cond_4

    instance-of v7, p0, Lgnu/math/RealNum;

    if-nez v7, :cond_2

    instance-of v7, p0, Lgnu/math/Numeric;

    if-nez v7, :cond_4

    .line 31
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 32
    .local v0, "d":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v0, v8

    if-eqz v7, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0

    .line 34
    .end local v0    # "d":D
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v7, p0, Lgnu/lists/SeqPosition;

    if-nez v7, :cond_0

    .line 36
    instance-of v7, p0, Ljava/lang/String;

    if-nez v7, :cond_5

    instance-of v7, p0, Lgnu/text/Path;

    if-nez v7, :cond_5

    instance-of v7, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v7, :cond_6

    .line 39
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 40
    :cond_6
    instance-of v7, p0, Lgnu/mapping/Values;

    if-eqz v7, :cond_9

    move-object v4, p0

    .line 42
    check-cast v4, Lgnu/mapping/Values;

    .line 43
    .local v4, "values":Lgnu/mapping/Values;
    invoke-virtual {v4, v6}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 44
    .local v3, "value1":Ljava/lang/Object;
    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v7, :cond_7

    move v5, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_7
    invoke-virtual {v4, v6}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v2

    .line 47
    .local v2, "next":I
    if-gez v2, :cond_8

    .line 48
    invoke-static {v3}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 49
    :cond_8
    instance-of v6, v3, Lgnu/lists/SeqPosition;

    if-nez v6, :cond_0

    .line 52
    .end local v2    # "next":I
    .end local v3    # "value1":Ljava/lang/Object;
    .end local v4    # "values":Lgnu/mapping/Values;
    :cond_9
    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "fn:boolean"

    const-string v8, "boolean-convertible-value"

    invoke-direct {v6, v7, v5, p0, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v6
.end method

.method public static not(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
