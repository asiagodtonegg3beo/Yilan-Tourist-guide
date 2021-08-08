.class public Lgnu/kawa/swingviews/SwingDisplay;
.super Lgnu/kawa/models/Display;
.source "SwingDisplay.java"


# static fields
.field private static documents:Ljava/util/WeakHashMap;

.field static final instance:Lgnu/kawa/swingviews/SwingDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/swingviews/SwingDisplay;

    invoke-direct {v0}, Lgnu/kawa/swingviews/SwingDisplay;-><init>()V

    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/kawa/models/Display;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    return-object v0
.end method

.method static declared-synchronized getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;
    .locals 5
    .param p0, "model"    # Lgnu/kawa/models/Text;

    .prologue
    .line 52
    const-class v3, Lgnu/kawa/swingviews/SwingDisplay;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    .line 54
    :cond_0
    sget-object v2, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "existing":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 56
    check-cast v1, Ljavax/swing/text/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v1    # "existing":Ljava/lang/Object;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 57
    .restart local v1    # "existing":Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v0, Ljavax/swing/text/PlainDocument;

    new-instance v2, Lgnu/kawa/swingviews/SwingContent;

    iget-object v4, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-direct {v2, v4}, Lgnu/kawa/swingviews/SwingContent;-><init>(Lgnu/lists/CharBuffer;)V

    invoke-direct {v0, v2}, Ljavax/swing/text/PlainDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;)V

    .line 59
    .local v0, "doc":Ljavax/swing/text/Document;
    sget-object v2, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 60
    goto :goto_0

    .line 52
    .end local v0    # "doc":Ljavax/swing/text/Document;
    .end local v1    # "existing":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v0, p0, Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Ljava/awt/event/ActionListener;

    .line 85
    .end local p0    # "command":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "command":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lgnu/kawa/swingviews/ProcActionListener;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0    # "command":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lgnu/kawa/swingviews/ProcActionListener;-><init>(Lgnu/mapping/Procedure;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lgnu/kawa/models/Box;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 65
    new-instance v0, Lgnu/kawa/swingviews/SwingBox;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/swingviews/SwingBox;-><init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lgnu/kawa/models/Button;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/swingviews/SwingButton;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwingButton;-><init>(Lgnu/kawa/models/Button;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
    .locals 3
    .param p1, "model"    # Lgnu/kawa/models/DrawImage;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 35
    new-instance v0, Ljavax/swing/JLabel;

    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-virtual {p1}, Lgnu/kawa/models/DrawImage;->getImage()Ljava/awt/Image;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/ImageIcon;-><init>(Ljava/awt/Image;)V

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lgnu/kawa/models/Label;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/swingviews/SwingLabel;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwingLabel;-><init>(Lgnu/kawa/models/Label;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "model"    # Lgnu/kawa/models/Spacer;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 70
    new-instance v0, Ljavax/swing/Box$Filler;

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getMinimumSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getMaximumSize()Ljava/awt/Dimension;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/swing/Box$Filler;-><init>(Ljava/awt/Dimension;Ljava/awt/Dimension;Ljava/awt/Dimension;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 4
    .param p1, "model"    # Lgnu/kawa/models/Text;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 44
    new-instance v0, Ljavax/swing/JTextField;

    invoke-static {p1}, Lgnu/kawa/swingviews/SwingDisplay;->getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/kawa/models/Text;->getText()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Ljavax/swing/JTextField;-><init>(Ljavax/swing/text/Document;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public addView(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "where"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p2, Ljava/awt/Container;

    .end local p2    # "where":Ljava/lang/Object;
    check-cast p1, Ljava/awt/Component;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 79
    return-void
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 2
    .param p1, "component"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v0, p1, Ljava/awt/Component;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lgnu/kawa/swingviews/ComponentModel;

    check-cast p1, Ljava/awt/Component;

    .end local p1    # "component":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    .line 96
    :goto_0
    return-object v0

    .line 93
    .restart local p1    # "component":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lgnu/kawa/models/Paintable;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lgnu/kawa/swingviews/ComponentModel;

    new-instance v1, Lgnu/kawa/swingviews/SwingPaintable;

    check-cast p1, Lgnu/kawa/models/Paintable;

    .end local p1    # "component":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    invoke-direct {v0, v1}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    goto :goto_0

    .line 96
    .restart local p1    # "component":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    goto :goto_0
.end method

.method public makeWindow()Lgnu/kawa/models/Window;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    new-instance v0, Lgnu/kawa/swingviews/SwingFrame;

    invoke-direct {v0, v1, v1, v1}, Lgnu/kawa/swingviews/SwingFrame;-><init>(Ljava/lang/String;Ljavax/swing/JMenuBar;Ljava/lang/Object;)V

    .line 19
    .local v0, "window":Lgnu/kawa/swingviews/SwingFrame;
    iput-object p0, v0, Lgnu/kawa/swingviews/SwingFrame;->display:Lgnu/kawa/swingviews/SwingDisplay;

    .line 20
    return-object v0
.end method
