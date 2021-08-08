.class public Lgnu/kawa/xslt/TemplateTable;
.super Ljava/lang/Object;
.source "TemplateTable.java"


# static fields
.field static final nullModeTable:Lgnu/kawa/xslt/TemplateTable;


# instance fields
.field entries:Lgnu/kawa/xslt/TemplateEntry;

.field name:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/xslt/TemplateTable;

    sget-object v1, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    invoke-direct {v0, v1}, Lgnu/kawa/xslt/TemplateTable;-><init>(Lgnu/mapping/Symbol;)V

    sput-object v0, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 0
    .param p1, "mode"    # Lgnu/mapping/Symbol;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/xslt/TemplateTable;->name:Lgnu/mapping/Symbol;

    .line 17
    return-void
.end method

.method static getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;
    .locals 1
    .param p0, "name"    # Lgnu/mapping/Symbol;

    .prologue
    .line 21
    sget-object v0, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    if-ne p0, v0, :cond_0

    .line 22
    sget-object v0, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter(Ljava/lang/String;DLgnu/mapping/Procedure;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "priority"    # D
    .param p4, "procedure"    # Lgnu/mapping/Procedure;

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/xslt/TemplateEntry;

    invoke-direct {v0}, Lgnu/kawa/xslt/TemplateEntry;-><init>()V

    .line 31
    .local v0, "entry":Lgnu/kawa/xslt/TemplateEntry;
    iput-object p4, v0, Lgnu/kawa/xslt/TemplateEntry;->procedure:Lgnu/mapping/Procedure;

    .line 32
    iput-wide p2, v0, Lgnu/kawa/xslt/TemplateEntry;->priority:D

    .line 33
    iput-object p1, v0, Lgnu/kawa/xslt/TemplateEntry;->pattern:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    iput-object v1, v0, Lgnu/kawa/xslt/TemplateEntry;->next:Lgnu/kawa/xslt/TemplateEntry;

    .line 35
    iput-object v0, p0, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    .line 36
    return-void
.end method

.method public find(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/kawa/xslt/TemplateTable;->entries:Lgnu/kawa/xslt/TemplateEntry;

    .local v0, "entry":Lgnu/kawa/xslt/TemplateEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, v0, Lgnu/kawa/xslt/TemplateEntry;->pattern:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, v0, Lgnu/kawa/xslt/TemplateEntry;->procedure:Lgnu/mapping/Procedure;

    .line 45
    :goto_1
    return-object v1

    .line 40
    :cond_0
    iget-object v0, v0, Lgnu/kawa/xslt/TemplateEntry;->next:Lgnu/kawa/xslt/TemplateEntry;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
