.class Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;
.super Ljava/lang/Object;
.source "MapFeatureContainerBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method
