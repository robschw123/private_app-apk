.class public Lio/dcloud/js/map/adapter/MapMarker;
.super Ljava/lang/Object;
.source "MapMarker.java"


# instance fields
.field private isDraggable:Z

.field private isPop:Z

.field private isToTop:Z

.field private mBubbleIcon:Ljava/lang/String;

.field private mBubbleLabel:Ljava/lang/String;

.field private mDHMapView:Lio/dcloud/js/map/adapter/DHMapView;

.field private mIWebview:Lio/dcloud/common/DHInterface/IWebview;

.field private mIcon:Ljava/lang/String;

.field mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;

.field private mLoadImagePath:Ljava/lang/String;

.field private mLoadImageUrlData:Ljava/lang/String;

.field mMangTop:I

.field private mMapMarker:Lcom/baidu/mapapi/map/Marker;

.field private mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

.field private mPeriod:I

.field private mViewLayout:Lio/dcloud/js/map/adapter/PopViewLayout;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pMapPoint",
            "webview"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isDraggable:Z

    .line 79
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isPop:Z

    .line 81
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isToTop:Z

    const/16 v0, -0xa

    .line 91
    iput v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    .line 102
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    .line 103
    iput-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/js/map/adapter/MapMarker;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lio/dcloud/js/map/adapter/MapMarker;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static base64ToBitmap(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base64Data"
        }
    .end annotation

    const-string v0, ","

    .line 460
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 461
    aget-object p0, p0, v0

    .line 462
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 463
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 464
    invoke-static {p0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultMarkerIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 5

    .line 472
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "res/point.png"

    .line 473
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 472
    invoke-static {v0, v2, v1, v2, v2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 478
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 479
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 480
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x1000000

    .line 483
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    iget-object v4, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 485
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 486
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    .line 489
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    return-object v0

    .line 491
    :cond_0
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public bringToTop()V
    .locals 1

    .line 383
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->setToTop()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isToTop:Z

    :goto_0
    return-void
.end method

.method public getBubbleIcon()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleLabel()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;
    .locals 1

    .line 243
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    return-object v0
.end method

.method public getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "isText"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 316
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapMarker"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 319
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 320
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 321
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 322
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-static {p1}, Lio/dcloud/common/adapter/util/CanvasHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 327
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 329
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 330
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    .line 333
    invoke-static {p2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p2

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p2

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {p1}, Lio/dcloud/common/adapter/util/CanvasHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 338
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 339
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMarkerOptions()Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 3

    .line 184
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 185
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {v1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    .line 186
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcons:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->icons(Ljava/util/ArrayList;)Lcom/baidu/mapapi/map/MarkerOptions;

    .line 188
    iget v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mPeriod:I

    if-lez v1, :cond_2

    .line 189
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->period(I)Lcom/baidu/mapapi/map/MarkerOptions;

    goto :goto_1

    .line 192
    :cond_0
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcon:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapMarker;->getDefaultMarkerIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    .line 201
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->isDraggable:Z

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    :cond_3
    return-object v0
.end method

.method public getMarkerOverlay()Lcom/baidu/mapapi/map/Marker;
    .locals 1

    .line 301
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method

.method public getPopIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 359
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleIcon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleIcon:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lio/dcloud/common/adapter/util/CanvasHelper;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 364
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v3, v1

    .line 365
    div-int/lit8 v3, v3, 0x2

    neg-int v2, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWebview()Lio/dcloud/common/DHInterface/IWebview;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 376
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public hideBubble()V
    .locals 1

    .line 441
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mDHMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    :cond_0
    return-void
.end method

.method public initMapMarker(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dhMapView"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerOptions()Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    .line 112
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isToTop:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapMarker;->bringToTop()V

    .line 115
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isPop:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getWebview()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getWebview()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lio/dcloud/js/map/adapter/MapMarker;->showInfoWindow(Lcom/baidu/mapapi/map/BaiduMap;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_1
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->isDraggable()Z

    move-result v0

    return v0

    .line 437
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->isDraggable:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLoadImagePath:Ljava/lang/String;

    return-void
.end method

.method public loadImageDataURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base64"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLoadImageUrlData:Ljava/lang/String;

    return-void
.end method

.method public setBubble(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pBubbleLabel",
            "pBubbleIcon",
            "isPop"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleLabel:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleIcon:Ljava/lang/String;

    .line 287
    iput-boolean p3, p0, Lio/dcloud/js/map/adapter/MapMarker;->isPop:Z

    return-void
.end method

.method public setBubbleIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pBubbleIcon"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleIcon:Ljava/lang/String;

    return-void
.end method

.method public setBubbleLabel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pBubbleLabel"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleLabel:Ljava/lang/String;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draggable"
        }
    .end annotation

    .line 424
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->isDraggable:Z

    .line 425
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pIcon"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcon:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0, p1, v1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public setIcons(Lorg/json/JSONArray;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonArray",
            "period"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcons:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 399
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 401
    :try_start_0
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 404
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 408
    iput p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mPeriod:I

    .line 410
    :cond_1
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz p1, :cond_2

    .line 411
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/Marker;->setIcons(Ljava/util/ArrayList;)V

    .line 412
    iget p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mPeriod:I

    if-lez p1, :cond_2

    .line 413
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/Marker;->setPeriod(I)V

    :cond_2
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLabel"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLabel:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mIcon:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Marker;->setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public setMapPoint(Lio/dcloud/js/map/adapter/MapPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapPoint"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    .line 250
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public setPop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPop"
        }
    .end annotation

    .line 121
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->isPop:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker;->uuid:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 2

    .line 372
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/BaiduMap;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "mapView",
            "context",
            "webview"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLoadImageUrlData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    new-instance p2, Lcom/baidu/mapapi/map/InfoWindow;

    .line 132
    invoke-static {v0}, Lio/dcloud/js/map/adapter/MapMarker;->base64ToBitmap(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {v1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    new-instance v3, Lio/dcloud/js/map/adapter/MapMarker$1;

    invoke-direct {v3, p0, p1, p3}, Lio/dcloud/js/map/adapter/MapMarker$1;-><init>(Lio/dcloud/js/map/adapter/MapMarker;Lcom/baidu/mapapi/map/BaiduMap;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 142
    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mLoadImagePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    new-instance p2, Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, v0, v1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerIcon(Ljava/lang/String;Z)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {v1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    new-instance v3, Lio/dcloud/js/map/adapter/MapMarker$2;

    invoke-direct {v3, p0, p1, p3}, Lio/dcloud/js/map/adapter/MapMarker$2;-><init>(Lio/dcloud/js/map/adapter/MapMarker;Lcom/baidu/mapapi/map/BaiduMap;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 156
    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    new-instance v0, Lio/dcloud/js/map/adapter/PopViewLayout;

    invoke-direct {v0, p2}, Lio/dcloud/js/map/adapter/PopViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mViewLayout:Lio/dcloud/js/map/adapter/PopViewLayout;

    .line 159
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mBubbleLabel:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lio/dcloud/js/map/adapter/PopViewLayout;->setBubbleLabel(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapMarker;->getPopIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 162
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mViewLayout:Lio/dcloud/js/map/adapter/PopViewLayout;

    invoke-virtual {v0, p2}, Lio/dcloud/js/map/adapter/PopViewLayout;->setBubbleIcon(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_2
    new-instance p2, Lcom/baidu/mapapi/map/InfoWindow;

    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker;->mViewLayout:Lio/dcloud/js/map/adapter/PopViewLayout;

    .line 166
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    .line 167
    invoke-virtual {v1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget v2, p0, Lio/dcloud/js/map/adapter/MapMarker;->mMangTop:I

    new-instance v3, Lio/dcloud/js/map/adapter/MapMarker$3;

    invoke-direct {v3, p0, p1, p3}, Lio/dcloud/js/map/adapter/MapMarker$3;-><init>(Lio/dcloud/js/map/adapter/MapMarker;Lcom/baidu/mapapi/map/BaiduMap;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 179
    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    :cond_3
    :goto_0
    return-void
.end method
