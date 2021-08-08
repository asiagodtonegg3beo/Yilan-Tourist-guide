.class public Lgnu/xquery/util/ItemAt;
.super Lgnu/mapping/Procedure2;
.source "ItemAt.java"


# static fields
.field public static final itemAt:Lgnu/xquery/util/ItemAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lgnu/xquery/util/ItemAt;

    invoke-direct {v0}, Lgnu/xquery/util/ItemAt;-><init>()V

    sput-object v0, Lgnu/xquery/util/ItemAt;->itemAt:Lgnu/xquery/util/ItemAt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static itemAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "seq"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 16
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 18
    check-cast v0, Lgnu/mapping/Values;

    .line 19
    .local v0, "vals":Lgnu/mapping/Values;
    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 27
    .end local v0    # "vals":Lgnu/mapping/Values;
    .end local p0    # "seq":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 21
    .restart local v0    # "vals":Lgnu/mapping/Values;
    .restart local p0    # "seq":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 25
    .end local v0    # "vals":Lgnu/mapping/Values;
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "arg2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lgnu/xquery/util/ItemAt;->itemAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
