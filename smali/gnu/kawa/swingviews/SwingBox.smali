.class Lgnu/kawa/swingviews/SwingBox;
.super Ljavax/swing/Box;
.source "SwingDisplay.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Box;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V
    .locals 4
    .param p1, "model"    # Lgnu/kawa/models/Box;
    .param p2, "display"    # Lgnu/kawa/models/Display;

    .prologue
    .line 127
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v3

    invoke-direct {p0, v3}, Ljavax/swing/Box;-><init>(I)V

    .line 128
    invoke-virtual {p1, p0}, Lgnu/kawa/models/Box;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 129
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getCellSpacing()Lgnu/kawa/models/Viewable;

    move-result-object v0

    .line 130
    .local v0, "cellSpacing":Lgnu/kawa/models/Viewable;
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getComponentCount()I

    move-result v2

    .line 131
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 133
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p2, p0}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 135
    :cond_0
    invoke-virtual {p1, v1}, Lgnu/kawa/models/Box;->getComponent(I)Lgnu/kawa/models/Viewable;

    move-result-object v3

    invoke-interface {v3, p2, p0}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 0
    .param p1, "model"    # Lgnu/kawa/models/Model;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 141
    return-void
.end method
