.class public Lgnu/kawa/slib/swing;
.super Lgnu/expr/ModuleBody;
.source "swing.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/swing;

.field public static final Button:Lgnu/mapping/Location;

.field public static final Column:Lgnu/mapping/Location;

.field public static final Image:Lgnu/mapping/Location;

.field public static final Label:Lgnu/mapping/Location;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/expr/Keyword;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/expr/Keyword;

.field static final Lit4:Lgnu/expr/Keyword;

.field static final Lit5:Lgnu/expr/Keyword;

.field static final Lit6:Lgnu/expr/Keyword;

.field static final Lit7:Lgnu/expr/Keyword;

.field static final Lit8:Lgnu/expr/Keyword;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/mapping/Location;

.field public static final Text:Lgnu/mapping/Location;

.field public static final Window:Lgnu/mapping/Location;

.field public static final button:Lgnu/mapping/Location;

.field public static final color$Mnred:Ljava/awt/Color;

.field public static final composite$Mnsrc:Lgnu/expr/ModuleMethod;

.field public static final composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

.field public static final draw:Lgnu/expr/ModuleMethod;

.field public static final fill:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/mapping/Location;

.field public static final image$Mnread:Lgnu/mapping/Location;

.field public static final image$Mnwidth:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

.field static final loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

.field public static final make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

.field public static final menu:Lgnu/expr/ModuleMethod;

.field public static final menubar:Lgnu/expr/ModuleMethod;

.field public static final menuitem:Lgnu/expr/ModuleMethod;

.field public static final polygon:Lgnu/expr/ModuleMethod;

.field public static final rotation:Lgnu/expr/ModuleMethod;

.field public static final run$Mnapplication:Lgnu/mapping/Location;

.field public static final scroll:Lgnu/expr/ModuleMethod;

.field public static final set$Mncontent:Lgnu/mapping/Location;

.field public static final with$Mncomposite:Lgnu/expr/ModuleMethod;

.field public static final with$Mnpaint:Lgnu/expr/ModuleMethod;

.field public static final with$Mntransform:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x1000

    const/16 v7, -0xfff

    const/4 v2, 0x0

    const/16 v6, 0x1001

    const/16 v5, -0x1000

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scroll"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "polygon"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "menuitem"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "menu"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "menubar"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "with-transform"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "composite-src"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "composite-src-over"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "with-composite"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "with-paint"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "draw"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fill"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-action-listener"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "gnu.kawa.models.WithComposite"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<gnu.kawa.models.WithPaint>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<gnu.kawa.models.DrawShape>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<gnu.kawa.models.FillShape>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v0, "h"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    const-string v0, "w"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    const-string v0, "accesskey"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    const-string v0, "disabled"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    const-string v0, "oncommand"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    const-string v0, "default"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    const-string v0, "image"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    const-string v0, "label"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/swing;

    invoke-direct {v0}, Lgnu/kawa/slib/swing;-><init>()V

    sput-object v0, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    sget-object v0, Lgnu/kawa/slib/swing;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    sget-object v0, Lgnu/kawa/slib/swing;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    sget-object v0, Lgnu/kawa/slib/swing;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    sget-object v0, Lgnu/kawa/slib/swing;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    .line 11
    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "button"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->button:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Button"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Button:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Image"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Image:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "image$Mnread"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->image$Mnread:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "image$Mnwidth"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->image$Mnwidth:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "image$Mnheight"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->image$Mnheight:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Label"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Label:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Text"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Text:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Row"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Row:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Column"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Column:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "set$Mncontent"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->set$Mncontent:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "Window"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->Window:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "run$Mnapplication"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->run$Mnapplication:Lgnu/mapping/Location;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/swing;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/swing;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->fill:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/swing;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->draw:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lgnu/kawa/slib/swing;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mnpaint:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/slib/swing;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mncomposite:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/kawa/slib/swing;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lgnu/kawa/slib/swing;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->composite$Mnsrc:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/kawa/slib/swing;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->rotation:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/slib/swing;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mntransform:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lgnu/kawa/slib/swing;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menubar:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/slib/swing;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lgnu/kawa/slib/swing;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menuitem:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/kawa/slib/swing;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->polygon:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lgnu/kawa/slib/swing;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->scroll:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static compositeSrc()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrc(F)Ljava/awt/Composite;
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 37
    sget v0, Ljava/awt/AlphaComposite;->SRC:I

    invoke-static {v0, p0}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrcOver()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrcOver(F)Ljava/awt/Composite;
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 31
    sget v0, Ljava/awt/AlphaComposite;->SRC_OVER:I

    invoke-static {v0, p0}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v0

    return-object v0
.end method

.method public static draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 4
    .param p0, "shape"    # Ljava/awt/Shape;

    .prologue
    .line 21
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/models/Paintable;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v2, 0x16

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 4
    .param p0, "shape"    # Ljava/awt/Shape;

    .prologue
    .line 18
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/models/Paintable;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 1
    .param p0, "proc"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-static {p0}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method public static varargs menu([Ljava/lang/Object;)Ljavax/swing/JMenu;
    .locals 6
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 126
    new-instance v2, Ljavax/swing/JMenu;

    invoke-direct {v2}, Ljavax/swing/JMenu;-><init>()V

    .line 130
    array-length v3, p0

    .line 131
    .local v2, "menu":Ljavax/swing/JMenu;
    .local v3, "num$Mnargs":I
    const/4 v1, 0x0

    .line 132
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 133
    aget-object v0, p0, v1

    .line 134
    .local v0, "arg":Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    if-ne v0, v5, :cond_1

    const/4 v4, 0x1

    .local v4, "x":Z
    :goto_1
    if-eqz v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v3, :cond_3

    .line 135
    :cond_0
    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2, v5}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 134
    .end local v4    # "x":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "x":Z
    :cond_2
    if-nez v4, :cond_0

    .line 140
    :cond_3
    check-cast v0, Ljavax/swing/JMenuItem;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 142
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v4    # "x":Z
    :cond_5
    return-object v2
.end method

.method public static varargs menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    new-instance v2, Ljavax/swing/JMenuBar;

    invoke-direct {v2}, Ljavax/swing/JMenuBar;-><init>()V

    .line 117
    array-length v3, p0

    .line 118
    .local v2, "menubar":Ljavax/swing/JMenuBar;
    .local v3, "num$Mnargs":I
    const/4 v1, 0x0

    .line 119
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 120
    aget-object v0, p0, v1

    .line 122
    .local v0, "arg":Ljava/lang/Object;
    check-cast v0, Ljavax/swing/JMenu;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v2
.end method

.method public static menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;
    .locals 11
    .param p0, "argsArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 144
    sget-object v8, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    invoke-static {p0, v10, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v4, v7

    .local v4, "label":Ljava/lang/String;
    :goto_0
    sget-object v8, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    invoke-static {p0, v10, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "image":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    invoke-static {p0, v10, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "default":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    invoke-static {p0, v10, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "oncommand":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v10, v8, v9}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "disabled":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    invoke-static {p0, v10, v8, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "accesskey":Ljava/lang/Object;
    new-instance v5, Ljavax/swing/JMenuItem;

    invoke-direct {v5}, Ljavax/swing/JMenuItem;-><init>()V

    .line 154
    .local v5, "menuitem":Ljavax/swing/JMenuItem;
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v7, :cond_0

    .line 155
    invoke-virtual {v5, v10}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    :cond_0
    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    :cond_1
    if-eqz v6, :cond_2

    .line 159
    invoke-static {v6}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 160
    :cond_2
    return-object v5

    .line 144
    .end local v0    # "accesskey":Ljava/lang/Object;
    .end local v1    # "default":Ljava/lang/Object;
    .end local v2    # "disabled":Ljava/lang/Object;
    .end local v3    # "image":Ljava/lang/Object;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "menuitem":Ljavax/swing/JMenuItem;
    .end local v6    # "oncommand":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static varargs polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "initial"    # Lgnu/math/Complex;
    .param p1, "more$Mnpoints"    # [Ljava/lang/Object;

    .prologue
    .line 162
    new-instance v2, Ljava/awt/geom/GeneralPath;

    invoke-direct {v2}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 166
    array-length v1, p1

    .line 167
    .local v1, "n$Mnpoints":I
    .local v2, "path":Ljava/awt/geom/GeneralPath;
    invoke-static {p0}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {p0}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/GeneralPath;->moveTo(DD)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 173
    aget-object v3, p1, v0

    :try_start_0
    check-cast v3, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v3, "pt":Lgnu/math/Complex;
    invoke-static {v3}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v3}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/GeneralPath;->lineTo(DD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "pt":Lgnu/math/Complex;
    :cond_0
    invoke-virtual {v2}, Ljava/awt/geom/GeneralPath;->closePath()V

    .line 172
    return-object v2

    .line 173
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "pt"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static rotation(D)Ljava/awt/geom/AffineTransform;
    .locals 2
    .param p0, "theta"    # D

    .prologue
    .line 43
    invoke-static {p0, p1}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public static scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;
    .locals 9
    .param p0, "contents"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 177
    sget-object v5, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v7, v5, v6}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "w":Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v7, v5, v6}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "h":Ljava/lang/Object;
    instance-of v5, p0, Lgnu/kawa/models/Paintable;

    if-eqz v5, :cond_0

    .line 179
    new-instance v1, Lgnu/kawa/swingviews/SwingPaintable;

    :try_start_0
    check-cast p0, Lgnu/kawa/models/Paintable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "contents":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    .local v1, "contents":Lgnu/kawa/swingviews/SwingPaintable;
    move-object p0, v1

    .line 180
    .end local v1    # "contents":Lgnu/kawa/swingviews/SwingPaintable;
    .restart local p0    # "contents":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljavax/swing/JScrollPane;

    :try_start_1
    check-cast p0, Ljava/awt/Component;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p0    # "contents":Ljava/lang/Object;
    invoke-direct {v3, p0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 182
    .local v3, "scr":Ljavax/swing/JScrollPane;
    new-instance v6, Ljava/awt/Dimension;

    :try_start_2
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    :try_start_3
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    invoke-direct {v6, v7, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v6}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 183
    return-object v3

    .line 179
    .end local v3    # "scr":Ljavax/swing/JScrollPane;
    .restart local p0    # "contents":Ljava/lang/Object;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "gnu.kawa.swingviews.SwingPaintable.<init>(gnu.kawa.models.Paintable)"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 181
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "javax.swing.JScrollPane.<init>(java.awt.Component)"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 182
    .end local p0    # "contents":Ljava/lang/Object;
    .restart local v3    # "scr":Ljavax/swing/JScrollPane;
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "java.awt.Dimension.<init>(int,int)"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "java.awt.Dimension.<init>(int,int)"

    const/4 v8, 0x2

    invoke-direct {v6, v5, v7, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static varargs withComposite([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 28
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v2, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v2, 0x1d

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;
    .locals 4
    .param p0, "paint"    # Ljava/awt/Color;
    .param p1, "pic"    # Lgnu/kawa/models/Paintable;

    .prologue
    .line 24
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    const/16 v2, 0x1a

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;
    .locals 1
    .param p0, "transform"    # Ljava/awt/geom/AffineTransform;
    .param p1, "pic"    # Lgnu/kawa/models/Paintable;

    .prologue
    .line 46
    new-instance v0, Lgnu/kawa/models/WithTransform;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrcOver()Ljava/awt/Composite;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrc()Ljava/awt/Composite;

    move-result-object v0

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 43
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 13
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v2

    goto :goto_0

    .line 18
    :pswitch_2
    :try_start_0
    check-cast p2, Ljava/awt/Shape;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/swing;->fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object v2

    goto :goto_0

    .line 21
    :pswitch_3
    :try_start_1
    check-cast p2, Ljava/awt/Shape;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/swing;->draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object v2

    goto :goto_0

    .line 31
    :pswitch_4
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    invoke-static {v2}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object v2

    goto :goto_0

    .line 37
    :pswitch_5
    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    invoke-static {v2}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object v2

    goto :goto_0

    .line 43
    :pswitch_6
    :try_start_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/kawa/slib/swing;->rotation(D)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    goto :goto_0

    .line 18
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "fill"

    invoke-direct {v3, v2, v4, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 21
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "draw"

    invoke-direct {v3, v2, v4, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 31
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "composite-src-over"

    invoke-direct {v3, v2, v4, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 37
    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "composite-src"

    invoke-direct {v3, v2, v4, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 43
    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "rotation"

    invoke-direct {v3, v2, v4, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 24
    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/awt/Color;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/kawa/models/Paintable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lgnu/kawa/slib/swing;->withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 46
    :sswitch_1
    :try_start_2
    check-cast p2, Ljava/awt/geom/AffineTransform;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    check-cast p3, Lgnu/kawa/models/Paintable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lgnu/kawa/slib/swing;->withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;

    move-result-object v0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "with-paint"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 25
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "with-paint"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 46
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "with-transform"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 47
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "with-transform"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 28
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/swing;->withComposite([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menu([Ljava/lang/Object;)Ljavax/swing/JMenu;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_5
    aget-object v0, p2, v1

    :try_start_0
    check-cast v0, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p2

    add-int/lit8 v2, v1, -0x1

    new-array v1, v2, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Lgnu/kawa/slib/swing;->polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 177
    :pswitch_6
    aget-object v2, p2, v1

    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    new-array v0, v1, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    invoke-static {v2, v0}, Lgnu/kawa/slib/swing;->scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 162
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "polygon"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 31
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 37
    :goto_0
    return v0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 31
    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 13
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 43
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 37
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 31
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 21
    :pswitch_4
    instance-of v2, p2, Ljava/awt/Shape;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 18
    :pswitch_5
    instance-of v2, p2, Ljava/awt/Shape;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 13
    :pswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const v1, -0xbfffe

    const v0, -0xbffff

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 46
    :cond_0
    :goto_0
    return v0

    :sswitch_0
    instance-of v3, p2, Ljava/awt/geom/AffineTransform;

    if-eqz v3, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/models/Paintable;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 24
    :sswitch_1
    instance-of v3, p2, Ljava/awt/Color;

    if-eqz v3, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/models/Paintable;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 28
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 177
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 162
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 144
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 126
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 113
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 28
    :pswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 13
    .local v0, "$result":Lgnu/lists/Consumer;
    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    sput-object v1, Lgnu/kawa/slib/swing;->color$Mnred:Ljava/awt/Color;

    .line 113
    return-void
.end method
