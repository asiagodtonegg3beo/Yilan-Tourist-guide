.class public Lkawa/ReplPaneOutPort;
.super Lgnu/mapping/OutPort;
.source "ReplPaneOutPort.java"


# instance fields
.field document:Lkawa/ReplDocument;

.field str:Ljava/lang/String;

.field style:Ljavax/swing/text/AttributeSet;

.field tout:Lkawa/TextPaneWriter;


# direct methods
.method public constructor <init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 1
    .param p1, "document"    # Lkawa/ReplDocument;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "style"    # Ljavax/swing/text/AttributeSet;

    .prologue
    .line 24
    new-instance v0, Lkawa/TextPaneWriter;

    invoke-direct {v0, p1, p3}, Lkawa/TextPaneWriter;-><init>(Lkawa/ReplDocument;Ljavax/swing/text/AttributeSet;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/TextPaneWriter;Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lkawa/TextPaneWriter;Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 2
    .param p1, "tout"    # Lkawa/TextPaneWriter;
    .param p2, "document"    # Lkawa/ReplDocument;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "style"    # Ljavax/swing/text/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-static {p3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-direct {p0, p1, v1, v1, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkawa/ReplPaneOutPort;->str:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lkawa/ReplPaneOutPort;->tout:Lkawa/TextPaneWriter;

    .line 31
    iput-object p2, p0, Lkawa/ReplPaneOutPort;->document:Lkawa/ReplDocument;

    .line 32
    iput-object p4, p0, Lkawa/ReplPaneOutPort;->style:Ljavax/swing/text/AttributeSet;

    .line 33
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 51
    instance-of v1, p1, Ljava/awt/Component;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Ljava/awt/Component;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkawa/ReplPaneOutPort;->write(Ljava/awt/Component;)V

    .line 71
    :goto_0
    return-void

    .line 55
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lgnu/kawa/models/Paintable;

    if-eqz v1, :cond_1

    .line 57
    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    .line 58
    .local v0, "style":Ljavax/swing/text/MutableAttributeSet;
    const-string v1, "$ename"

    const-string v2, "Paintable"

    invoke-interface {v0, v1, v2}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    sget-object v1, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V

    goto :goto_0

    .line 62
    .end local v0    # "style":Ljavax/swing/text/MutableAttributeSet;
    :cond_1
    instance-of v1, p1, Lgnu/kawa/models/Viewable;

    if-eqz v1, :cond_2

    .line 64
    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    .line 65
    .restart local v0    # "style":Ljavax/swing/text/MutableAttributeSet;
    const-string v1, "$ename"

    const-string v2, "Viewable"

    invoke-interface {v0, v1, v2}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljavax/swing/text/MutableAttributeSet;->addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V

    goto :goto_0

    .line 70
    .end local v0    # "style":Ljavax/swing/text/MutableAttributeSet;
    :cond_2
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized write(Ljava/awt/Component;)V
    .locals 2
    .param p1, "c"    # Ljava/awt/Component;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/swing/text/SimpleAttributeSet;

    invoke-direct {v0}, Ljavax/swing/text/SimpleAttributeSet;-><init>()V

    .line 45
    .local v0, "style":Ljavax/swing/text/MutableAttributeSet;
    invoke-static {v0, p1}, Ljavax/swing/text/StyleConstants;->setComponent(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Component;)V

    .line 46
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Lkawa/ReplPaneOutPort;->write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    .end local v0    # "style":Ljavax/swing/text/MutableAttributeSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/MutableAttributeSet;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # Ljavax/swing/text/MutableAttributeSet;

    .prologue
    .line 37
    invoke-virtual {p0}, Lkawa/ReplPaneOutPort;->flush()V

    .line 38
    iget-object v0, p0, Lkawa/ReplPaneOutPort;->document:Lkawa/ReplDocument;

    invoke-virtual {v0, p1, p2}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkawa/ReplPaneOutPort;->setColumnNumber(I)V

    .line 40
    return-void
.end method
