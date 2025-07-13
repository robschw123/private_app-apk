.class public Lcom/taobao/weex/ui/component/ConfirmBar;
.super Ljava/lang/Object;
.source "ConfirmBar.java"


# static fields
.field private static instance:Lcom/taobao/weex/ui/component/ConfirmBar;


# instance fields
.field private editText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/dcloud/common/DHInterface/ISysEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/view/ViewGroup;

.field private rtl:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/ConfirmBar;ZI)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/ConfirmBar;->showConfirm(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/ConfirmBar;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/ConfirmBar;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;
    .locals 2

    .line 38
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/taobao/weex/ui/component/ConfirmBar;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/taobao/weex/ui/component/ConfirmBar;

    invoke-direct {v1}, Lcom/taobao/weex/ui/component/ConfirmBar;-><init>()V

    sput-object v1, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/weex/ui/component/ConfirmBar;->instance:Lcom/taobao/weex/ui/component/ConfirmBar;

    return-object v0
.end method

.method private showConfirm(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isShow",
            "margin"
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const-string v0, "AppRootView"

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iget v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    iget-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method addComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "mApp"
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/taobao/weex/ui/component/ConfirmBar$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/ConfirmBar$1;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;Landroid/content/Context;)V

    .line 123
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x42300000    # 44.0f

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    .line 130
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 132
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->height:I

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    iget-object v1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_1
    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    .line 136
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    const/16 v1, 0x11

    .line 137
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setGravity(I)V

    const/16 v1, 0xcd

    const/16 v2, 0x32

    const/16 v3, 0xff

    .line 138
    invoke-static {v3, v2, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x40c00000    # 6.0f

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    new-instance p1, Lcom/taobao/weex/ui/component/ConfirmBar$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/ConfirmBar$2;-><init>(Lcom/taobao/weex/ui/component/ConfirmBar;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/16 p2, 0xdc

    invoke-static {v3, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 170
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const-string p2, "ConfirmBar"

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->rtl:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method removeComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/ConfirmBar;->editText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
