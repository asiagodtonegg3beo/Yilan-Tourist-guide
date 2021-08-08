.class public final Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;
.super Ljava/lang/Object;
.source "SimplePointTheme.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;


# instance fields
.field private mLabelled:Z

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .param p2, "labelled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "pPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/api/IGeoPoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    .line 23
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mLabelled:Z

    .line 24
    return-void
.end method


# virtual methods
.method public get(I)Lorg/osmdroid/api/IGeoPoint;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method public isLabelled()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mLabelled:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
