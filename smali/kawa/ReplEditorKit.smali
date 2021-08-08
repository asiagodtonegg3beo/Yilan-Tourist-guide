.class Lkawa/ReplEditorKit;
.super Ljavax/swing/text/StyledEditorKit;
.source "ReplPane.java"


# instance fields
.field factory:Ljavax/swing/text/ViewFactory;

.field final pane:Lkawa/ReplPane;

.field styledFactory:Ljavax/swing/text/ViewFactory;


# direct methods
.method public constructor <init>(Lkawa/ReplPane;)V
    .locals 1
    .param p1, "pane"    # Lkawa/ReplPane;

    .prologue
    .line 180
    invoke-direct {p0}, Ljavax/swing/text/StyledEditorKit;-><init>()V

    .line 181
    iput-object p1, p0, Lkawa/ReplEditorKit;->pane:Lkawa/ReplPane;

    .line 182
    invoke-super {p0}, Ljavax/swing/text/StyledEditorKit;->getViewFactory()Ljavax/swing/text/ViewFactory;

    move-result-object v0

    iput-object v0, p0, Lkawa/ReplEditorKit;->styledFactory:Ljavax/swing/text/ViewFactory;

    .line 183
    new-instance v0, Lkawa/ReplEditorKit$1;

    invoke-direct {v0, p0, p1}, Lkawa/ReplEditorKit$1;-><init>(Lkawa/ReplEditorKit;Lkawa/ReplPane;)V

    iput-object v0, p0, Lkawa/ReplEditorKit;->factory:Ljavax/swing/text/ViewFactory;

    .line 224
    return-void
.end method


# virtual methods
.method public getViewFactory()Ljavax/swing/text/ViewFactory;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lkawa/ReplEditorKit;->factory:Ljavax/swing/text/ViewFactory;

    return-object v0
.end method
