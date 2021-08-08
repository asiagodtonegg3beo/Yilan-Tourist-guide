.class public Lgnu/kawa/swingviews/SwingFrame;
.super Ljavax/swing/JFrame;
.source "SwingFrame.java"

# interfaces
.implements Lgnu/kawa/models/Window;


# instance fields
.field display:Lgnu/kawa/swingviews/SwingDisplay;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/swing/JMenuBar;Ljava/lang/Object;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "menubar"    # Ljavax/swing/JMenuBar;
    .param p3, "contents"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 19
    move-object v0, p0

    .line 20
    .local v0, "fr":Ljavax/swing/JFrame;
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Ljavax/swing/JFrame;->setTitle(Ljava/lang/String;)V

    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {v0, p2}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    .line 25
    .local v1, "pane":Ljava/awt/Container;
    new-instance v2, Ljavax/swing/BoxLayout;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 26
    invoke-virtual {p0, p3}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addComponent(Ljava/lang/Object;)V
    .locals 5
    .param p1, "contents"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v2, p1, Lgnu/lists/FString;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 44
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    new-instance v3, Ljavax/swing/JLabel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 57
    .end local p1    # "contents":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 45
    .restart local p1    # "contents":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lgnu/lists/AbstractSequence;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 47
    check-cast v1, Lgnu/lists/AbstractSequence;

    .line 48
    .local v1, "seq":Lgnu/lists/AbstractSequence;
    invoke-virtual {v1}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    .local v0, "iter":I
    :goto_1
    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    goto :goto_1

    .line 51
    .end local v0    # "iter":I
    .end local v1    # "seq":Lgnu/lists/AbstractSequence;
    :cond_3
    instance-of v2, p1, Lgnu/kawa/models/Viewable;

    if-eqz v2, :cond_4

    .line 52
    check-cast p1, Lgnu/kawa/models/Viewable;

    .end local p1    # "contents":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getDisplay()Lgnu/kawa/models/Display;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .restart local p1    # "contents":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Lgnu/kawa/models/Paintable;

    if-eqz v2, :cond_5

    .line 54
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    new-instance v3, Lgnu/kawa/swingviews/SwingPaintable;

    check-cast p1, Lgnu/kawa/models/Paintable;

    .end local p1    # "contents":Ljava/lang/Object;
    invoke-direct {v3, p1}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0

    .line 55
    .restart local p1    # "contents":Ljava/lang/Object;
    :cond_5
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    check-cast p1, Ljava/awt/Component;

    .end local p1    # "contents":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0
.end method

.method public getDisplay()Lgnu/kawa/models/Display;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingFrame;->display:Lgnu/kawa/swingviews/SwingDisplay;

    return-object v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->pack()V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/swingviews/SwingFrame;->setVisible(Z)V

    .line 63
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    .line 31
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/swingviews/SwingFrame;->setContentPane(Ljava/awt/Container;)V

    .line 32
    invoke-virtual {p0, p1}, Lgnu/kawa/swingviews/SwingFrame;->addComponent(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lgnu/kawa/swingviews/SwingFrame;->pack()V

    .line 34
    return-void
.end method

.method public setMenuBar(Ljava/lang/Object;)V
    .locals 0
    .param p1, "menubar"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljavax/swing/JMenuBar;

    .end local p1    # "menubar":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/kawa/swingviews/SwingFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 39
    return-void
.end method
