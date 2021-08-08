.class Lgnu/kawa/swingviews/GapUndoableEdit;
.super Ljavax/swing/undo/AbstractUndoableEdit;
.source "SwingContent.java"


# instance fields
.field content:Lgnu/kawa/swingviews/SwingContent;

.field data:Ljava/lang/String;

.field isInsertion:Z

.field nitems:I

.field startOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Ljavax/swing/undo/AbstractUndoableEdit;-><init>()V

    .line 136
    iput p1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    .line 137
    return-void
.end method

.method private doit(Z)V
    .locals 3
    .param p1, "isInsertion"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget-object v2, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget v2, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/swingviews/SwingContent;->remove(II)Ljavax/swing/undo/UndoableEdit;

    goto :goto_0
.end method


# virtual methods
.method public redo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->redo()V

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    invoke-direct {p0, v1}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljavax/swing/undo/CannotRedoException;

    invoke-direct {v1}, Ljavax/swing/undo/CannotRedoException;-><init>()V

    throw v1
.end method

.method public undo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->undo()V

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljavax/swing/undo/CannotUndoException;

    invoke-direct {v1}, Ljavax/swing/undo/CannotUndoException;-><init>()V

    throw v1
.end method
