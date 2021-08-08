.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
.super Landroid/widget/VideoView;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizableVideoView"
.end annotation


# instance fields
.field public forcedHeight:I

.field public forcedWidth:I

.field private mFoundMediaPlayer:Ljava/lang/Boolean;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 647
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 648
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 633
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 639
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 645
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 649
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 625
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    return-void
.end method

.method private onMeasure(III)V
    .locals 18
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I
    .param p3, "trycount"    # I

    .prologue
    .line 665
    const/4 v11, 0x0

    .line 666
    .local v11, "scaleHeight":Z
    const/4 v12, 0x0

    .line 667
    .local v12, "scaleWidth":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    .line 668
    .local v7, "deviceDensity":F
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Device Density = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AI setting dimensions as:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dimenions from super>>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 672
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 673
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 671
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/16 v13, 0xb0

    .line 677
    .local v13, "width":I
    const/16 v8, 0x90

    .line 679
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    packed-switch v14, :pswitch_data_0

    .line 713
    const/4 v12, 0x1

    .line 714
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 717
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const/16 v15, -0x3e8

    if-gt v14, v15, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v5

    .line 719
    .local v5, "cWidth":I
    if-nez v5, :cond_1

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_1

    .line 720
    const-string v14, "VideoPlayer...onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Width not stable... trying again (onMeasure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/VideoPlayer;->access$100(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    const/16 v14, 0x64

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 793
    .end local v5    # "cWidth":I
    :goto_1
    return-void

    .line 681
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_0

    .line 684
    :sswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 685
    goto :goto_0

    .line 688
    :sswitch_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    goto :goto_0

    .line 689
    :catch_0
    move-exception v6

    .line 690
    .local v6, "cast":Ljava/lang/ClassCastException;
    const/16 v13, 0xb0

    .line 693
    goto :goto_0

    .line 691
    .end local v6    # "cast":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v9

    .line 692
    .local v9, "nullParent":Ljava/lang/NullPointerException;
    const/16 v13, 0xb0

    goto :goto_0

    .line 697
    .end local v9    # "nullParent":Ljava/lang/NullPointerException;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 699
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    .line 700
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got width from MediaPlayer>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 702
    :catch_2
    move-exception v10

    .line 703
    .local v10, "nullVideoPlayer":Ljava/lang/NullPointerException;
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get MediaPlayer for width:\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 706
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 703
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v13, 0xb0

    .line 708
    goto/16 :goto_0

    .line 730
    .end local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    .restart local v5    # "cWidth":I
    :cond_1
    add-int/lit16 v14, v13, 0x3e8

    neg-int v14, v14

    mul-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x64

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v13, v14

    .line 735
    .end local v5    # "cWidth":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    packed-switch v14, :pswitch_data_1

    .line 764
    const/4 v11, 0x1

    .line 765
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 768
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    const/16 v15, -0x3e8

    if-gt v14, v15, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    .line 770
    .local v4, "cHeight":I
    if-nez v4, :cond_5

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_5

    .line 771
    const-string v14, "VideoPlayer...onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Height not stable... trying again (onMeasure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/VideoPlayer;->access$100(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    const/16 v14, 0x64

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    .line 731
    .end local v4    # "cHeight":I
    :cond_4
    if-eqz v12, :cond_2

    .line 732
    int-to-float v14, v13

    mul-float/2addr v14, v7

    float-to-int v13, v14

    goto :goto_2

    .line 737
    :pswitch_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    goto :goto_3

    .line 740
    :sswitch_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 741
    goto :goto_3

    .line 749
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 751
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    .line 752
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got height from MediaPlayer>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 754
    :catch_3
    move-exception v10

    .line 755
    .restart local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get MediaPlayer for height:\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 758
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 755
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/16 v8, 0x90

    .line 760
    goto/16 :goto_3

    .line 781
    .end local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    .restart local v4    # "cHeight":I
    :cond_5
    add-int/lit16 v14, v8, 0x3e8

    neg-int v14, v14

    mul-int/2addr v14, v4

    div-int/lit8 v14, v14, 0x64

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 788
    .end local v4    # "cHeight":I
    :cond_6
    :goto_4
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Setting dimensions to:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-interface {v14, v13, v8}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 792
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    .line 782
    :cond_7
    if-eqz v11, :cond_6

    .line 783
    int-to-float v14, v8

    mul-float/2addr v14, v7

    float-to-int v8, v14

    goto :goto_4

    .line 679
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 681
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 735
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 737
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 0
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 799
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 800
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 802
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 804
    return-void
.end method

.method public invalidateMediaPlayer(Z)V
    .locals 1
    .param p1, "triggerRedraw"    # Z

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 813
    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 815
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 817
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    .line 653
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .param p1, "newMediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "triggerRedraw"    # Z

    .prologue
    .line 821
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 822
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 824
    if-eqz p2, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 826
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 828
    :cond_0
    return-void
.end method
