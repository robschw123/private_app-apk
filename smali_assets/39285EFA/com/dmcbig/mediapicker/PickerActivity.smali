.class public Lcom/dmcbig/mediapicker/PickerActivity;
.super Landroidx/fragment/app/FragmentActivity;

# interfaces
.implements Lcom/dmcbig/mediapicker/data/DataCallback;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field argsIntent:Landroid/content/Intent;

.field category_btn:Landroid/widget/Button;

.field cropOptions:Ljava/lang/String;

.field docPath:Ljava/lang/String;

.field done:Landroid/widget/Button;

.field doneBtnText:Ljava/lang/String;

.field fullImage:Landroid/widget/ImageView;

.field gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field isCompress:Z

.field private isFinish:Z

.field isSingle:Z

.field private mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

.field mFolderPopupWindow:Landroid/widget/ListPopupWindow;

.field preview:Landroid/widget/Button;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field selectIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 304
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dmcbig/mediapicker/PickerActivity;)Lcom/dmcbig/mediapicker/adapter/FolderAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void
.end method

.method private compress(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Media;

    .line 5
    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "/"

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v4, ".jpeg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 13
    :cond_1
    iget v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 15
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".mp4"

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "compress_video_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/compress_video_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 23
    invoke-static {}, Landroidtranscoder/MediaTranscoder;->getInstance()Landroidtranscoder/MediaTranscoder;

    move-result-object v2

    iget-object v3, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    const/4 v4, 0x2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6}, Landroidtranscoder/format/MediaFormatStrategyPresets;->createAndroid720pStrategy(ID)Landroidtranscoder/format/MediaFormatStrategy;

    move-result-object v4

    new-instance v5, Lcom/dmcbig/mediapicker/PickerActivity$4;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/dmcbig/mediapicker/PickerActivity$4;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Lcom/dmcbig/mediapicker/entity/Media;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :catch_0
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 49
    :cond_3
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "uniapp_temp/compressed/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v3, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v3, v1, v2, p0}, Lio/dcloud/common/util/CompressUtil;->compressImage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 55
    iput-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    .line 56
    :cond_5
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 96
    :cond_6
    new-instance v0, Lcom/dmcbig/mediapicker/PickerActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity$5;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private getOtherArgs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "done_button_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 9
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setTopAndBottomBarColor()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "#21282C"

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method createAdapter()V
    .locals 10

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    sget v1, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/dmcbig/mediapicker/adapter/SpacingDecoration;

    sget v2, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    sget v3, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpace:I

    invoke-direct {v1, v2, v3}, Lcom/dmcbig/mediapicker/adapter/SpacingDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "default_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "select_max_cb_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "max_select_count"

    const v6, 0x7fffffff

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 11
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "max_select_size"

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v2, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 12
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "single_select"

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    .line 13
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    iput-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    :cond_2
    new-instance v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-boolean v9, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;IJZ)V

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    .line 26
    new-instance v2, Lcom/dmcbig/mediapicker/PickerActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/dmcbig/mediapicker/PickerActivity$1;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setOnMaxListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;)V

    .line 34
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method createFolderAdapter()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-direct {v1, v0, p0}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    .line 3
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    .line 4
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-static {p0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 7
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_FOOTER:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/dmcbig/mediapicker/PickerActivity$2;

    invoke-direct {v1, p0}, Lcom/dmcbig/mediapicker/PickerActivity$2;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public done(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    .line 2
    iget-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 4
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 5
    sget v0, Lio/dcloud/base/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    .line 7
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/dmcbig/mediapicker/-$$Lambda$PickerActivity$uLMNYXk_LpF_IZeoPcjCsERTDuE;

    invoke-direct {v1, p0, p1}, Lcom/dmcbig/mediapicker/-$$Lambda$PickerActivity$uLMNYXk_LpF_IZeoPcjCsERTDuE;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "select_result"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const p1, 0x12faa62

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method getMediaData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/MediaLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/MediaLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/ImageLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/ImageLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_1
    const/16 v2, 0x66

    if-ne v0, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/VideoLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/VideoLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$done$0$PickerActivity(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "FULL_IMAGE"

    .line 2
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    :cond_0
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_5

    const-string p1, "select_result"

    .line 7
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v1, 0x7c6

    if-ne p2, v1, :cond_4

    const-string p2, "original_preview_index"

    .line 9
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "edited_preview_data"

    .line 10
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getMedias()Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    .line 16
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p2, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 20
    :cond_3
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p2, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateSelectAdapter(Ljava/util/ArrayList;)V

    .line 21
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setButtonText()V

    goto :goto_1

    :cond_4
    const p3, 0x12faa62

    if-ne p2, p3, :cond_7

    .line 23
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    const-string p2, "IMAGE_INDEX"

    .line 28
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "_id"

    .line 29
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, p1, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "PATH"

    .line 32
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "_display_name"

    .line 33
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "date_added"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p1, "mime_type"

    .line 35
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-wide/16 p1, 0x0

    const-string v0, "_size"

    .line 36
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string p1, "PARENTPATH"

    .line 37
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    new-instance p1, Lcom/dmcbig/mediapicker/entity/Media;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0, p2}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    nop

    :cond_7
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 5
    :cond_0
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CATEGORY_BTN:I

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_1

    .line 11
    :cond_2
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    if-ne p1, v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 13
    :cond_3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_4

    .line 15
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_NULL:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/dmcbig/mediapicker/PreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const v2, 0x7fffffff

    const-string v3, "max_select_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "pre_raw_List"

    .line 22
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dmcbig/mediapicker/entity/Media;

    .line 25
    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v4, v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    const-string v3, "FULL_IMAGE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v3, "size_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "original_preview_index"

    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "image_editable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "done_button_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const/16 v1, 0x65

    const-string v2, "select_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 33
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 35
    :cond_6
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    if-ne p1, v0, :cond_7

    .line 36
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 37
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    .line 4
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_PICKER_MAIN:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_RECYCLER_VIEW:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setTitleBar()V

    .line 8
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    .line 9
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CATEGORY_BTN:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    .line 10
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    .line 11
    sget v0, Lio/dcloud/base/R$id;->check_origin_image:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    .line 14
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v3, "COMPRESSED"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 15
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    xor-int/2addr v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 16
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    const-string v3, "size_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "original"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "compressed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 23
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iput-boolean v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 26
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 28
    :cond_2
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 29
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_3
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 33
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 36
    :cond_4
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 37
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p0, p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->setFullScreen(Landroid/app/Activity;Z)V

    .line 46
    :cond_5
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v0, "image_crop"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v0, "doc_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->createAdapter()V

    .line 50
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->createFolderAdapter()V

    .line 51
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->getMediaData()V

    .line 52
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->getOtherArgs()V

    .line 54
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setTopAndBottomBarColor()V

    return-void
.end method

.method public onData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->setView(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dmcbig/mediapicker/entity/Folder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/entity/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-virtual {v0, p1}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/RuningAcitvityUtil;->removeRuningActivity(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/RuningAcitvityUtil;->putRuningActivity(Landroid/app/Activity;)V

    return-void
.end method

.method setButtonText()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "max_select_count"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_DONE:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    :cond_0
    const-string v1, ")"

    const-string v3, "("

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v4}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v5}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_PREVIEW:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setFullScreen(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 4
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setTitleBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_TITLE:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_IMAGE_TITLE:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_VIDEO_TITLE:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmcbig/mediapicker/entity/Folder;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 2
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setButtonText()V

    .line 3
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    new-instance v0, Lcom/dmcbig/mediapicker/PickerActivity$3;

    invoke-direct {v0, p0}, Lcom/dmcbig/mediapicker/PickerActivity$3;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;)V

    invoke-virtual {p1, v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setOnItemClickListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;)V

    return-void
.end method
