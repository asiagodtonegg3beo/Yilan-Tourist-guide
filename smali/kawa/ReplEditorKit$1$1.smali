.class Lkawa/ReplEditorKit$1$1;
.super Ljavax/swing/text/ComponentView;
.source "ReplPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit$1;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkawa/ReplEditorKit$1;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V
    .locals 0
    .param p2, "x0"    # Ljavax/swing/text/Element;

    .prologue
    .line 191
    iput-object p1, p0, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    invoke-direct {p0, p2}, Ljavax/swing/text/ComponentView;-><init>(Ljavax/swing/text/Element;)V

    return-void
.end method


# virtual methods
.method protected createComponent()Ljava/awt/Component;
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lkawa/ReplEditorKit$1$1;->getElement()Ljavax/swing/text/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    .line 195
    .local v0, "attr":Ljavax/swing/text/AttributeSet;
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    .line 196
    .local v2, "panel":Ljavax/swing/JPanel;
    sget-object v4, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/models/Viewable;

    .line 201
    .local v3, "v":Lgnu/kawa/models/Viewable;
    invoke-static {}, Lgnu/kawa/swingviews/SwingDisplay;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v2}, Ljavax/swing/JPanel;->getComponentCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->getComponent(I)Ljava/awt/Component;

    move-result-object v1

    .line 205
    .local v1, "comp":Ljava/awt/Component;
    invoke-virtual {v2}, Ljavax/swing/JPanel;->removeAll()V

    .line 212
    :goto_0
    return-object v1

    .line 209
    .end local v1    # "comp":Ljava/awt/Component;
    :cond_0
    iget-object v4, p0, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    iget-object v4, v4, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    invoke-virtual {v4}, Lkawa/ReplPane;->getBackground()Ljava/awt/Color;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 210
    move-object v1, v2

    .restart local v1    # "comp":Ljava/awt/Component;
    goto :goto_0
.end method
