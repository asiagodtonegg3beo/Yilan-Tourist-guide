.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "ListPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;
    }
.end annotation


# static fields
.field static backgroundColor:I

.field static itemColor:I


# instance fields
.field adapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

.field private closeAnim:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->styleTitleBar()V

    .line 58
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v6, "viewLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "myIntent":Landroid/content/Intent;
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ANIM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 65
    :cond_0
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ORIENTATION_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "orientation":Ljava/lang/String;
    const-string v7, "portrait"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 68
    invoke-virtual {p0, v11}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    .line 75
    .end local v3    # "orientation":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "items":[Ljava/lang/String;
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    .line 82
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 85
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_ITEM_TEXT_COLOR:Ljava/lang/String;

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->itemColor:I

    .line 86
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_BACKGROUND_COLOR:Ljava/lang/String;

    const/high16 v8, -0x1000000

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    .line 88
    sget v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    new-instance v7, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-direct {v7, p0, v1}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->adapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    .line 92
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->adapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_SHOW_SEARCH_BAR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "showFilterBar":Ljava/lang/String;
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    .line 97
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 98
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setWidth(I)V

    .line 99
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 100
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    const-string v8, "Search list..."

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->isClassicMode()Z

    move-result v7

    if-nez v7, :cond_3

    .line 102
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 105
    :cond_3
    if-eqz v4, :cond_4

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 106
    :cond_4
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 110
    :cond_5
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    new-instance v8, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    .end local v1    # "items":[Ljava/lang/String;
    .end local v4    # "showFilterBar":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setContentView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 142
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 143
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 144
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 145
    return-void

    .line 70
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "orientation":Ljava/lang/String;
    :cond_6
    const-string v7, "landscape"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 131
    .end local v3    # "orientation":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 133
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "selected":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "resultIntent":Landroid/content/Intent;
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->LIST_ACTIVITY_RESULT_INDEX:Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    .line 154
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 156
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->closeAnim:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    return-void
.end method
