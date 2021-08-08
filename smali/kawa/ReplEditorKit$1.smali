.class Lkawa/ReplEditorKit$1;
.super Ljava/lang/Object;
.source "ReplPane.java"

# interfaces
.implements Ljavax/swing/text/ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplEditorKit;

.field final synthetic val$pane:Lkawa/ReplPane;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit;Lkawa/ReplPane;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    iput-object p2, p0, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
    .locals 4
    .param p1, "elem"    # Ljavax/swing/text/Element;

    .prologue
    .line 187
    invoke-interface {p1}, Ljavax/swing/text/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "kind":Ljava/lang/String;
    const-string v2, "Viewable"

    if-ne v1, v2, :cond_0

    .line 190
    new-instance v2, Lkawa/ReplEditorKit$1$1;

    invoke-direct {v2, p0, p1}, Lkawa/ReplEditorKit$1$1;-><init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V

    .line 221
    :goto_0
    return-object v2

    .line 216
    :cond_0
    const-string v2, "Paintable"

    if-ne v1, v2, :cond_1

    .line 218
    invoke-interface {p1}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    .line 219
    .local v0, "attr":Ljavax/swing/text/AttributeSet;
    new-instance v3, Lkawa/PaintableView;

    sget-object v2, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/models/Paintable;

    invoke-direct {v3, p1, v2}, Lkawa/PaintableView;-><init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V

    move-object v2, v3

    goto :goto_0

    .line 221
    .end local v0    # "attr":Ljavax/swing/text/AttributeSet;
    :cond_1
    iget-object v2, p0, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    iget-object v2, v2, Lkawa/ReplEditorKit;->styledFactory:Ljavax/swing/text/ViewFactory;

    invoke-interface {v2, p1}, Ljavax/swing/text/ViewFactory;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;

    move-result-object v2

    goto :goto_0
.end method
