.class public Lkawa/GuiConsole;
.super Ljavax/swing/JFrame;
.source "GuiConsole.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lkawa/ReplDocument$DocumentCloseListener;


# static fields
.field private static CLOSE:Ljava/lang/String;

.field private static EXIT:Ljava/lang/String;

.field private static NEW:Ljava/lang/String;

.field private static NEW_SHARED:Ljava/lang/String;

.field private static PURGE_MESSAGE:Ljava/lang/String;

.field static window_number:I


# instance fields
.field document:Lkawa/ReplDocument;

.field pane:Lkawa/ReplPane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Close"

    sput-object v0, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    .line 17
    const-string v0, "Exit"

    sput-object v0, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    .line 18
    const-string v0, "New"

    sput-object v0, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    .line 19
    const-string v0, "New (Shared)"

    sput-object v0, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    .line 20
    const-string v0, "Purge Buffer"

    sput-object v0, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput v0, Lkawa/GuiConsole;->window_number:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 1
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "penvironment"    # Lgnu/mapping/Environment;
    .param p3, "shared"    # Z

    .prologue
    .line 64
    const-string v0, "Kawa"

    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 66
    new-instance v0, Lkawa/ReplDocument;

    invoke-direct {v0, p1, p2, p3}, Lkawa/ReplDocument;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .locals 1
    .param p1, "doc"    # Lkawa/ReplDocument;

    .prologue
    .line 43
    const-string v0, "Kawa"

    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 28
    sput-boolean v2, Lkawa/repl;->noConsole:Z

    .line 29
    array-length v1, p0

    invoke-static {p0, v2, v1}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v0

    .line 30
    .local v0, "iArg":I
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 31
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 33
    new-instance v1, Lkawa/GuiConsole;

    invoke-direct {v1}, Lkawa/GuiConsole;-><init>()V

    .line 34
    return-void
.end method

.method private setupMenus()V
    .locals 6

    .prologue
    .line 89
    new-instance v4, Lkawa/GuiConsole$1;

    invoke-direct {v4, p0}, Lkawa/GuiConsole$1;-><init>(Lkawa/GuiConsole;)V

    .line 96
    .local v4, "windowExitCmd":Ljava/awt/event/WindowListener;
    new-instance v2, Ljava/awt/MenuBar;

    invoke-direct {v2}, Ljava/awt/MenuBar;-><init>()V

    .line 97
    .local v2, "menubar":Ljava/awt/MenuBar;
    new-instance v0, Ljava/awt/Menu;

    const-string v5, "File"

    invoke-direct {v0, v5}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "fileMenu":Ljava/awt/Menu;
    new-instance v3, Ljava/awt/Menu;

    const-string v5, "Utilities"

    invoke-direct {v3, v5}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "utilitiesMenu":Ljava/awt/Menu;
    invoke-virtual {v2, v0}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    .line 101
    invoke-virtual {v2, v3}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    .line 103
    new-instance v1, Ljava/awt/MenuItem;

    sget-object v5, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "menuItem":Ljava/awt/MenuItem;
    invoke-virtual {v1, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 105
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 107
    new-instance v1, Ljava/awt/MenuItem;

    .end local v1    # "menuItem":Ljava/awt/MenuItem;
    sget-object v5, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v1    # "menuItem":Ljava/awt/MenuItem;
    invoke-virtual {v1, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 109
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 111
    new-instance v1, Ljava/awt/MenuItem;

    .end local v1    # "menuItem":Ljava/awt/MenuItem;
    sget-object v5, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v1    # "menuItem":Ljava/awt/MenuItem;
    invoke-virtual {v1, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 113
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 115
    new-instance v1, Ljava/awt/MenuItem;

    .end local v1    # "menuItem":Ljava/awt/MenuItem;
    sget-object v5, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v1    # "menuItem":Ljava/awt/MenuItem;
    invoke-virtual {v1, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    invoke-virtual {p0, v4}, Lkawa/GuiConsole;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 118
    invoke-virtual {v0, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 120
    new-instance v1, Ljava/awt/MenuItem;

    .end local v1    # "menuItem":Ljava/awt/MenuItem;
    sget-object v5, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v1    # "menuItem":Ljava/awt/MenuItem;
    invoke-virtual {v1, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 122
    invoke-virtual {v3, v1}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 124
    invoke-virtual {p0, v2}, Lkawa/GuiConsole;->setMenuBar(Ljava/awt/MenuBar;)V

    .line 125
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "cmd":Ljava/lang/String;
    sget-object v1, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Lkawa/GuiConsole;

    iget-object v2, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v2, v2, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v1, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lkawa/GuiConsole;

    iget-object v2, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v2, v2, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    iget-object v3, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->environment:Lgnu/mapping/Environment;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    goto :goto_0

    .line 135
    :cond_1
    sget-object v1, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 137
    :cond_2
    sget-object v1, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p0}, Lkawa/GuiConsole;->close()V

    goto :goto_0

    .line 139
    :cond_3
    sget-object v1, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    iget-object v1, v1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v1}, Lkawa/ReplDocument;->deleteOldText()V

    goto :goto_0

    .line 143
    :cond_4
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown menu action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-virtual {v0, p0}, Lkawa/ReplDocument;->removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 79
    invoke-virtual {p0}, Lkawa/GuiConsole;->dispose()V

    .line 80
    return-void
.end method

.method public closed(Lkawa/ReplDocument;)V
    .locals 0
    .param p1, "doc"    # Lkawa/ReplDocument;

    .prologue
    .line 74
    invoke-virtual {p0}, Lkawa/GuiConsole;->close()V

    .line 75
    return-void
.end method

.method init(Lkawa/ReplDocument;)V
    .locals 3
    .param p1, "doc"    # Lkawa/ReplDocument;

    .prologue
    const/4 v2, 0x0

    .line 49
    iput-object p1, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    .line 50
    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-virtual {v0, p0}, Lkawa/ReplDocument;->addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 51
    new-instance v0, Lkawa/ReplPane;

    iget-object v1, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-direct {v0, v1}, Lkawa/ReplPane;-><init>(Lkawa/ReplDocument;)V

    iput-object v0, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    .line 52
    sget v0, Lkawa/GuiConsole;->window_number:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lkawa/GuiConsole;->window_number:I

    .line 53
    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0, v2, v2}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->setLayout(Ljava/awt/LayoutManager;)V

    .line 54
    const-string v0, "Center"

    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    invoke-direct {v1, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {p0, v0, v1}, Lkawa/GuiConsole;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 55
    invoke-direct {p0}, Lkawa/GuiConsole;->setupMenus()V

    .line 57
    sget v0, Lkawa/GuiConsole;->window_number:I

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lkawa/GuiConsole;->window_number:I

    mul-int/lit8 v1, v1, 0x32

    invoke-virtual {p0, v0, v1}, Lkawa/GuiConsole;->setLocation(II)V

    .line 58
    const/16 v0, 0x2bc

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lkawa/GuiConsole;->setSize(II)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->setVisible(Z)V

    .line 60
    return-void
.end method
