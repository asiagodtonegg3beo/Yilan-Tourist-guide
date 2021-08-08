.class public Lkawa/ReplDocument;
.super Ljavax/swing/text/DefaultStyledDocument;
.source "ReplDocument.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;
.implements Ljava/awt/event/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/ReplDocument$DocumentCloseListener;
    }
.end annotation


# static fields
.field static blueStyle:Ljavax/swing/text/Style;

.field public static defaultStyle:Ljavax/swing/text/Style;

.field public static inputStyle:Ljavax/swing/text/Style;

.field static promptStyle:Ljavax/swing/text/Style;

.field public static redStyle:Ljavax/swing/text/Style;

.field public static styles:Ljavax/swing/text/StyleContext;


# instance fields
.field closeListeners:Ljava/lang/Object;

.field content:Lgnu/kawa/swingviews/SwingContent;

.field public endMark:I

.field environment:Lgnu/mapping/Environment;

.field final err_stream:Lkawa/ReplPaneOutPort;

.field final in_p:Lkawa/GuiInPort;

.field final in_r:Lgnu/text/QueueReader;

.field language:Lgnu/expr/Language;

.field length:I

.field final out_stream:Lkawa/ReplPaneOutPort;

.field public outputMark:I

.field pane:Ljavax/swing/JTextPane;

.field paneCount:I

.field thread:Lgnu/mapping/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Ljavax/swing/text/StyleContext;

    invoke-direct {v0}, Ljavax/swing/text/StyleContext;-><init>()V

    sput-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    .line 24
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "default"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    .line 25
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "input"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    .line 26
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "red"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    .line 27
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "blue"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    .line 28
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "prompt"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    .line 30
    sget-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 31
    sget-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 32
    sget-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 33
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 1
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "penvironment"    # Lgnu/mapping/Environment;
    .param p3, "shared"    # Z

    .prologue
    .line 62
    new-instance v0, Lgnu/kawa/swingviews/SwingContent;

    invoke-direct {v0}, Lgnu/kawa/swingviews/SwingContent;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 63
    return-void
.end method

.method private constructor <init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 4
    .param p1, "content"    # Lgnu/kawa/swingviews/SwingContent;
    .param p2, "language"    # Lgnu/expr/Language;
    .param p3, "penvironment"    # Lgnu/mapping/Environment;
    .param p4, "shared"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    invoke-direct {p0, p1, v0}, Ljavax/swing/text/DefaultStyledDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;Ljavax/swing/text/StyleContext;)V

    .line 51
    iput v1, p0, Lkawa/ReplDocument;->outputMark:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lkawa/ReplDocument;->endMark:I

    .line 58
    iput v1, p0, Lkawa/ReplDocument;->length:I

    .line 68
    iput-object p1, p0, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    invoke-static {}, Lgnu/expr/ModuleBody;->exitIncrement()V

    .line 71
    invoke-virtual {p0, p0}, Lkawa/ReplDocument;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 73
    iput-object p2, p0, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    .line 75
    new-instance v0, Lkawa/ReplDocument$1;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$1;-><init>(Lkawa/ReplDocument;)V

    iput-object v0, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    .line 79
    new-instance v0, Lkawa/ReplPaneOutPort;

    const-string v1, "/dev/stdout"

    sget-object v2, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    invoke-direct {v0, p0, v1, v2}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v0, p0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    .line 80
    new-instance v0, Lkawa/ReplPaneOutPort;

    const-string v1, "/dev/stderr"

    sget-object v2, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    invoke-direct {v0, p0, v1, v2}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v0, p0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    .line 81
    new-instance v0, Lkawa/GuiInPort;

    iget-object v1, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    const-string v2, "/dev/stdin"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    iget-object v3, p0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    invoke-direct {v0, v1, v2, v3, p0}, Lkawa/GuiInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V

    iput-object v0, p0, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    .line 83
    new-instance v0, Lkawa/ReplDocument$2;

    invoke-direct {v0, p0, p2, p4}, Lkawa/ReplDocument$2;-><init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V

    iget-object v1, p0, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    iget-object v2, p0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    iget-object v3, p0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    invoke-static {v0, p3, v1, v2, v3}, Lgnu/mapping/Future;->make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;

    move-result-object v0

    iput-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    .line 98
    iget-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v0}, Lgnu/mapping/Future;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 2
    .param p1, "listener"    # Lkawa/ReplDocument$DocumentCloseListener;

    .prologue
    .line 253
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 254
    iput-object p1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 259
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 266
    .local v0, "vec":Ljava/util/ArrayList;
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0    # "vec":Ljava/util/ArrayList;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .restart local v0    # "vec":Ljava/util/ArrayList;
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_1
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public checkingPendingInput()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lkawa/ReplDocument$4;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$4;-><init>(Lkawa/ReplDocument;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v0}, Lgnu/text/QueueReader;->appendEOF()V

    .line 237
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    iget-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v0}, Lgnu/mapping/Future;->stop()V

    .line 243
    invoke-virtual {p0}, Lkawa/ReplDocument;->fireDocumentClosed()V

    .line 244
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 245
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized deleteOldText()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 107
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {p0, v3, v4}, Lkawa/ReplDocument;->getText(II)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "str":Ljava/lang/String;
    iget v3, p0, Lkawa/ReplDocument;->outputMark:I

    if-gtz v3, :cond_0

    .line 110
    .local v1, "lineBefore":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lkawa/ReplDocument;->remove(II)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 108
    .end local v1    # "lineBefore":I
    :cond_0
    const/16 v3, 0xa

    :try_start_1
    iget v4, p0, Lkawa/ReplDocument;->outputMark:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I
    :try_end_1
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    :try_start_2
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v0    # "ex":Ljavax/swing/text/BadLocationException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method fireDocumentClosed()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v2, v2, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v2, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v2, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    .line 300
    :cond_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 296
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 297
    .local v1, "vec":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 298
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v2, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_0
.end method

.method public focusGained(Ljava/awt/event/FocusEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/FocusEvent;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1}, Ljava/awt/event/FocusEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "source":Ljava/lang/Object;
    instance-of v1, v0, Lkawa/ReplPane;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 196
    check-cast v1, Lkawa/ReplPane;

    iput-object v1, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 201
    :goto_0
    instance-of v1, v0, Lkawa/ReplPane;

    if-eqz v1, :cond_1

    check-cast v0, Lkawa/ReplPane;

    .end local v0    # "source":Ljava/lang/Object;
    :goto_1
    iput-object v0, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 202
    return-void

    .line 200
    .restart local v0    # "source":Ljava/lang/Object;
    :cond_0
    iput-object v2, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 201
    goto :goto_1
.end method

.method public focusLost(Ljava/awt/event/FocusEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/FocusEvent;

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 207
    return-void
.end method

.method public insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "style"    # Ljavax/swing/text/AttributeSet;

    .prologue
    .line 127
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljavax/swing/text/DefaultStyledDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 4
    .param p1, "listener"    # Lkawa/ReplDocument$DocumentCloseListener;

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v2, v2, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 275
    iput-object v3, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 279
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 280
    .local v1, "vec":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 282
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 286
    iput-object v3, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public declared-synchronized textValueChanged(Ljavax/swing/event/DocumentEvent;)V
    .locals 4
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result v1

    .line 218
    .local v1, "pos":I
    invoke-virtual {p0}, Lkawa/ReplDocument;->getLength()I

    move-result v2

    iget v3, p0, Lkawa/ReplDocument;->length:I

    sub-int v0, v2, v3

    .line 219
    .local v0, "delta":I
    iget v2, p0, Lkawa/ReplDocument;->length:I

    add-int/2addr v2, v0

    iput v2, p0, Lkawa/ReplDocument;->length:I

    .line 220
    iget v2, p0, Lkawa/ReplDocument;->outputMark:I

    if-ge v1, v2, :cond_2

    .line 221
    iget v2, p0, Lkawa/ReplDocument;->outputMark:I

    add-int/2addr v2, v0

    iput v2, p0, Lkawa/ReplDocument;->outputMark:I

    .line 224
    :cond_0
    :goto_0
    iget v2, p0, Lkawa/ReplDocument;->endMark:I

    if-ltz v2, :cond_1

    .line 226
    iget v2, p0, Lkawa/ReplDocument;->endMark:I

    if-ge v1, v2, :cond_3

    .line 227
    iget v2, p0, Lkawa/ReplDocument;->endMark:I

    add-int/2addr v2, v0

    iput v2, p0, Lkawa/ReplDocument;->endMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 222
    :cond_2
    sub-int v2, v1, v0

    :try_start_1
    iget v3, p0, Lkawa/ReplDocument;->outputMark:I

    if-ge v2, v3, :cond_0

    .line 223
    iput v1, p0, Lkawa/ReplDocument;->outputMark:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "delta":I
    .end local v1    # "pos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 228
    .restart local v0    # "delta":I
    .restart local v1    # "pos":I
    :cond_3
    sub-int v2, v1, v0

    :try_start_2
    iget v3, p0, Lkawa/ReplDocument;->endMark:I

    if-ge v2, v3, :cond_1

    .line 229
    iput v1, p0, Lkawa/ReplDocument;->endMark:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # Ljavax/swing/text/AttributeSet;

    .prologue
    .line 145
    new-instance v0, Lkawa/ReplDocument$3;

    invoke-direct {v0, p0, p1, p2}, Lkawa/ReplDocument$3;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
