.class public Lio/dcloud/h/c/d/a;
.super Lio/dcloud/h/c/c/f/c/e/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field C:Lio/dcloud/h/c/d/b;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

.field I:J

.field private J:J

.field K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

.field private L:Z

.field private M:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/h/c/c/f/c/e/a;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->y:Z

    .line 3
    iput p1, p0, Lio/dcloud/h/c/d/a;->z:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/dcloud/h/c/d/a;->A:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->B:Z

    .line 8
    iput-object v0, p0, Lio/dcloud/h/c/d/a;->D:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lio/dcloud/h/c/d/a;->E:Ljava/lang/String;

    .line 10
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->F:Z

    .line 12
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->G:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lio/dcloud/h/c/d/a;->I:J

    .line 17
    iput-wide v0, p0, Lio/dcloud/h/c/d/a;->J:J

    .line 19
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->L:Z

    .line 20
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->M:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;I)I
    .locals 0

    .line 5
    iput p1, p0, Lio/dcloud/h/c/d/a;->z:I

    return p1
.end method

.method private synthetic a(Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    iget-object p3, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez p1, :cond_1

    .line 173
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 175
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p4, p4, -0x401

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 176
    invoke-static {p2}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1c

    if-lt p2, p4, :cond_0

    const/4 p2, 0x0

    .line 177
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 178
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/h/c/d/a;->w()V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lio/dcloud/h/c/d/a;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;ILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/e/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V
    .locals 1

    .line 192
    new-instance v0, Lio/dcloud/h/c/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/h/c/d/a$e;-><init>(Lio/dcloud/h/c/d/a;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V

    iput-object v0, p0, Lio/dcloud/h/c/d/a;->C:Lio/dcloud/h/c/d/b;

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lio/dcloud/h/c/d/a;->B:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/h/c/d/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->y:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/h/c/d/a;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/dcloud/h/c/d/a;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/h/c/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lio/dcloud/h/c/d/a;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/h/c/d/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/h/c/d/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->G:Z

    return p1
.end method

.method static synthetic c(Lio/dcloud/h/c/d/a;)I
    .locals 0

    .line 3
    iget p0, p0, Lio/dcloud/h/c/d/a;->z:I

    return p0
.end method

.method static synthetic c(Lio/dcloud/h/c/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/d/a;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lio/dcloud/h/c/d/a;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/f/c/f/a;->a(Z)V

    return-void
.end method

.method static synthetic d(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/h/c/d/a;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/f/c/f/a;->a(Z)V

    return-void
.end method

.method static synthetic e(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/h/c/d/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->B:Z

    return p1
.end method

.method static synthetic f(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/h/c/d/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/c/d/a;->L:Z

    return p1
.end method

.method static synthetic g(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/h/c/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/d/a;->u()V

    return-void
.end method

.method static synthetic j(Lio/dcloud/h/c/d/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/dcloud/h/c/d/a;->M:Z

    return p0
.end method

.method static synthetic k(Lio/dcloud/h/c/d/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/h/c/d/a;->J:J

    return-wide v0
.end method

.method static synthetic l(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$CC4loQYTGoaC8LvoB2UU7Vb-cvM(Lio/dcloud/h/c/d/a;Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/h/c/d/a;->a(Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->onFinishShow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
    .locals 2

    .line 130
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 131
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->G:Z

    if-nez v0, :cond_0

    return-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    .line 136
    invoke-virtual {v0, p0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->showAd(Lio/dcloud/h/c/d/a;)V

    .line 138
    :cond_1
    iget-boolean p1, p0, Lio/dcloud/h/c/d/a;->B:Z

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->getBottomIcon()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_2
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    iget-wide v0, p0, Lio/dcloud/h/c/d/a;->I:J

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setPullTime(J)V

    .line 142
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setAppid(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 144
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    return-object p1

    :cond_3
    return-object v1
.end method

.method protected a(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/c/f/a;->a(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lio/dcloud/h/c/d/a;->v()V

    .line 146
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->G:Z

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lio/dcloud/h/c/d/-$$Lambda$a$CC4loQYTGoaC8LvoB2UU7Vb-cvM;

    invoke-direct {v0, p0, p3, p1}, Lio/dcloud/h/c/d/-$$Lambda$a$CC4loQYTGoaC8LvoB2UU7Vb-cvM;-><init>(Lio/dcloud/h/c/d/a;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/h/c/d/a;->a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    .line 160
    iget-object p2, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez p2, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 164
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    invoke-static {p1}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 166
    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 167
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/h/c/d/a;->w()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->onWillCloseSplash()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 96
    new-instance v0, Lio/dcloud/h/c/d/a$b;

    invoke-direct {v0, p0}, Lio/dcloud/h/c/d/a$b;-><init>(Lio/dcloud/h/c/d/a;)V

    invoke-virtual {p0, v0}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;)V

    .line 127
    invoke-super {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/dcloud/h/c/d/a;->H:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    .line 10
    iput-boolean p3, p0, Lio/dcloud/h/c/d/a;->F:Z

    .line 11
    new-instance v0, Lio/dcloud/h/c/d/a$a;

    invoke-direct {v0, p0, p3}, Lio/dcloud/h/c/d/a$a;-><init>(Lio/dcloud/h/c/d/a;Z)V

    invoke-virtual {p0, v0}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/h/c/c/b/a$a;)V

    .line 92
    invoke-direct {p0, p2, p3}, Lio/dcloud/h/c/d/a;->a(Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lio/dcloud/h/c/d/a;->I:J

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lio/dcloud/h/c/d/a;->y:Z

    iput-boolean p2, p0, Lio/dcloud/h/c/d/a;->G:Z

    .line 95
    iget-object p2, p0, Lio/dcloud/h/c/d/a;->C:Lio/dcloud/h/c/d/b;

    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/e/a;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/h/c/c/f/a/c;)V

    return-void
.end method

.method public a(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    .line 181
    :try_start_0
    iget-object v2, p0, Lio/dcloud/h/c/d/a;->E:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-wide/32 v2, 0x2bf20

    :cond_0
    add-long/2addr p1, v2

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_2

    .line 189
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->D:Ljava/lang/String;

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    .line 191
    :cond_1
    iget-object p1, p0, Lio/dcloud/h/c/d/a;->A:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return p2

    :cond_2
    return v2
.end method

.method protected b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lio/dcloud/h/c/c/f/c/f/a;->b(Ljava/util/List;)V

    return-void
.end method

.method protected d()I
    .locals 1

    .line 3
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->F:Z

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lio/dcloud/h/c/c/f/c/e/a;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/d/a;->L:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/d/a;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/dcloud/feature/gg/AdSplashUtil;->isShowingInterstitialAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    iget-object v1, p0, Lio/dcloud/h/c/d/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->adpid(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    .line 4
    new-instance v1, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lio/dcloud/h/c/d/a;->K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    .line 5
    new-instance v2, Lio/dcloud/h/c/d/a$c;

    invoke-direct {v2, p0}, Lio/dcloud/h/c/d/a$c;-><init>(Lio/dcloud/h/c/d/a;)V

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;->setInterstitialAdListener(Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOLListener;)V

    .line 36
    iget-object v1, p0, Lio/dcloud/h/c/d/a;->K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    new-instance v2, Lio/dcloud/h/c/d/a$d;

    invoke-direct {v2, p0}, Lio/dcloud/h/c/d/a$d;-><init>(Lio/dcloud/h/c/d/a;)V

    invoke-virtual {v1, v0, v2}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;->load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOLLoadListener;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a;->L:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lio/dcloud/h/c/d/a;->z:I

    if-gtz v2, :cond_0

    const/16 v2, 0x9c4

    :cond_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/dcloud/h/c/d/a;->J:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/h/c/d/a;->M:Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/d/a;->K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/dcloud/h/c/d/a;->K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;->show(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
