.class Lgnu/kawa/swingviews/SwingLabel;
.super Ljavax/swing/JLabel;
.source "SwingDisplay.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Label;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Label;)V
    .locals 1
    .param p1, "model"    # Lgnu/kawa/models/Label;

    .prologue
    .line 151
    invoke-direct {p0}, Ljavax/swing/JLabel;-><init>()V

    .line 152
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    .line 153
    invoke-virtual {p1}, Lgnu/kawa/models/Label;->getText()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/kawa/models/Label;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 157
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Lgnu/kawa/models/Model;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 161
    const-string v0, "text"

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    if-ne p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    invoke-virtual {v0}, Lgnu/kawa/models/Label;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    if-nez v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingLabel;->model:Lgnu/kawa/models/Label;

    invoke-virtual {v0, p1}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
