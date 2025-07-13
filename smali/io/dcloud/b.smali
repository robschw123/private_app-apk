.class abstract Lio/dcloud/b;
.super Lio/dcloud/c;

# interfaces
.implements Lio/dcloud/common/DHInterface/IOnCreateSplashView;
.implements Lio/dcloud/common/DHInterface/IKeyHandler;


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lio/dcloud/EntryProxy;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field i:Landroidx/appcompat/app/AlertDialog;

.field j:I

.field private k:I

.field private l:I

.field m:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "Main_App"

    .line 3
    iput-object v1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lio/dcloud/b;->j:I

    const/16 v0, 0x238d

    .line 10
    iput v0, p0, Lio/dcloud/b;->k:I

    const/16 v0, 0x238e

    .line 11
    iput v0, p0, Lio/dcloud/b;->l:I

    return-void
.end method

.method private a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/app/Dialog;
    .locals 10

    .line 308
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lio/dcloud/base/R$style;->dialog_transparent:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 309
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$layout;->dcloud_dialog_loading:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    .line 310
    sget v1, Lio/dcloud/base/R$id;->loading_background:I

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    sget v1, Lio/dcloud/base/R$id;->bg:I

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {p1, v6}, Lio/dcloud/common/util/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 313
    invoke-static {p1, v1}, Lio/dcloud/common/util/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 314
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    int-to-float p1, p1

    aput p1, v4, v2

    const/4 v6, 0x1

    aput p1, v4, v6

    const/4 v6, 0x2

    aput p1, v4, v6

    const/4 v6, 0x3

    aput p1, v4, v6

    const/4 v6, 0x4

    aput p1, v4, v6

    const/4 v6, 0x5

    aput p1, v4, v6

    const/4 v6, 0x6

    aput p1, v4, v6

    const/4 v6, 0x7

    aput p1, v4, v6

    invoke-direct {v1, v4, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 315
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 316
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    sget v1, Lio/dcloud/base/R$id;->bg:I

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    sget p1, Lio/dcloud/base/R$id;->title:I

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 319
    invoke-interface {p2, v2, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 321
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 322
    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/b;Landroid/content/Context;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/app/Dialog;
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lio/dcloud/b;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "appid"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/dcloud/b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/dcloud/b;->d()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lio/dcloud/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/b;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 7

    .line 40
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->renderer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "native"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 42
    new-instance v0, Lio/dcloud/b$m;

    invoke-direct {v0, p0}, Lio/dcloud/b$m;-><init>(Lio/dcloud/b;)V

    .line 73
    new-instance v1, Lio/dcloud/b$b;

    invoke-direct {v1, p0}, Lio/dcloud/b$b;-><init>(Lio/dcloud/b;)V

    .line 93
    new-instance v2, Lio/dcloud/b$c;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/dcloud/b$c;-><init>(Lio/dcloud/b;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/Runnable;)V

    .line 119
    new-instance v1, Lio/dcloud/b$d;

    invoke-direct {v1, p0, v2}, Lio/dcloud/b$d;-><init>(Lio/dcloud/b;Lio/dcloud/common/DHInterface/ICallBack;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "io.dcloud.feature.x5.X5InitImpl"

    .line 170
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 175
    invoke-interface {v2, v5, v6}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/AppRuntime;->preInitX5(Landroid/app/Application;)V

    .line 179
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOtherInitialised()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isIsLoadOtherTimeOut()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {v0, v5, v6}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 189
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->showTipsWithoutWifi:Z

    .line 190
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z

    .line 193
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther()Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Lio/dcloud/b$e;

    invoke-direct {v4, p0, v1, p1, v2}, Lio/dcloud/b$e;-><init>(Lio/dcloud/b;Lio/dcloud/common/DHInterface/ICallBack;ZLio/dcloud/common/DHInterface/ICallBack;)V

    invoke-static {v3, v0, v4}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;ZLio/dcloud/common/DHInterface/ICallBack;)V

    goto :goto_2

    .line 233
    :cond_2
    invoke-interface {v1, p1, v6}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z

    invoke-static {v0, v1, v6}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;ZLio/dcloud/common/DHInterface/ICallBack;)V

    if-eqz p1, :cond_6

    .line 240
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 241
    :cond_4
    :goto_1
    invoke-interface {v2, v5, v6}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 307
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 8
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "string"

    const-string v1, "app_name"

    invoke-static {p0, p2, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lio/dcloud/b$l;

    invoke-direct {v0, p0, p1}, Lio/dcloud/b$l;-><init>(Lio/dcloud/b;Ljava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lio/dcloud/b$k;

    invoke-direct {p2, p0}, Lio/dcloud/b$k;-><init>(Lio/dcloud/b;)V

    const/high16 v0, 0x1040000

    .line 28
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    iget-object p1, p0, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 36
    iget-object p1, p0, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    new-instance v1, Lio/dcloud/b$j;

    invoke-direct {v1, p0}, Lio/dcloud/b$j;-><init>(Lio/dcloud/b;)V

    invoke-static {v0, p1, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    const-string v0, "DClOUD_SECURITY_POLICY"

    .line 2
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "safe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    :goto_0
    return-void
.end method

.method static synthetic d(Lio/dcloud/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/dcloud/b;->k:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->customOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isChannelGooglePlay()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_not_oaid:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isSupportOaid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    const-string/jumbo v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "android_ten_ids"

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    .line 16
    new-instance v0, Lio/dcloud/e/d/a;

    new-instance v1, Lio/dcloud/b$h;

    invoke-direct {v1, p0}, Lio/dcloud/b$h;-><init>(Lio/dcloud/b;)V

    invoke-direct {v0, v1}, Lio/dcloud/e/d/a;-><init>(Lio/dcloud/e/d/a$b;)V

    .line 23
    invoke-virtual {v0, p0}, Lio/dcloud/e/d/a;->b(Landroid/content/Context;)Z

    :cond_3
    return-void
.end method

.method static synthetic e(Lio/dcloud/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/dcloud/b;->l:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 2
    invoke-static {}, Lio/dcloud/e/c/e;->a()Lio/dcloud/e/c/e;

    move-result-object v0

    new-instance v1, Lio/dcloud/e/c/f;

    invoke-direct {v1}, Lio/dcloud/e/c/f;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/e/c/f;->getPdrModuleMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/e/c/e;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public checkAndRequestPhoneState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "once"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dcloud_phone_read_state"

    const-string v3, "isshow"

    invoke-static {v0, v2, v3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    const-string v2, "always"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAndRequestStoragePermission()V
    .locals 6

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v2, p0, Lio/dcloud/b;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v1, :cond_2

    const-string v3, "once"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "dcloud_phone_read_state"

    const-string v4, "isStorageRequest"

    invoke-static {v1, v3, v4}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    const-string v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 19
    invoke-direct {p0, v0}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p0}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v2, p0, Lio/dcloud/b;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method protected displayBriefMemory()V
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "none"

    .line 4
    :try_start_0
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sFontScale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 6
    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    .line 9
    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    sget v3, Lio/dcloud/common/util/BaseInfo;->sFontScaleFloat:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 10
    iput v3, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected handleNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseActivity handleNewIntent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10600000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncStartApp"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/EntryProxy;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 10
    :cond_1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    const-string v0, "debug_restart"

    .line 11
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "appid"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    invoke-virtual {v0}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "snc:CID"

    :goto_1
    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 v0, 0x14000000

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Runtime;->exit(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public hasAdService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget p2, p0, Lio/dcloud/b;->k:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "always"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.permission.READ_PHONE_STATE"

    .line 8
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    .line 12
    :cond_1
    iget p2, p0, Lio/dcloud/b;->l:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p2, "once"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/b;->a([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->destroy(Landroid/app/Activity;)V

    .line 9
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCloseSplash()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3
    iget-object v1, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/EntryProxy;->onConfigurationChanged(Landroid/app/Activity;I)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/c;->onCreate(Landroid/os/Bundle;)V

    .line 8
    invoke-static {}, Lio/dcloud/common/ui/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/ui/b;->b(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lio/dcloud/b;->e()V

    .line 13
    invoke-direct {p0}, Lio/dcloud/b;->c()V

    const-string v0, "DCLOUD_READ_PHONE_STATE"

    .line 15
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    const-string v1, "none"

    if-nez v0, :cond_1

    .line 16
    iput-object v1, p0, Lio/dcloud/b;->g:Ljava/lang/String;

    .line 20
    :cond_1
    new-instance v0, Lio/dcloud/b$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/b$a;-><init>(Lio/dcloud/b;Landroid/os/Bundle;)V

    iput-object v0, p0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    const-string v0, "DCLOUD_UNISTATISTICS"

    .line 41
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 42
    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    .line 48
    :cond_2
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->isInit()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    sget p1, Lio/dcloud/base/R$string;->dcloud_Init_fail_tips:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    .line 52
    new-instance v0, Lio/dcloud/b$f;

    invoke-direct {v0, p0}, Lio/dcloud/b$f;-><init>(Lio/dcloud/b;)V

    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/ErrorDialogUtil;->showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_3
    const-string v0, "DCLOUD_WRITE_EXTERNAL_STORAGE"

    .line 61
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 62
    iput-object v1, p0, Lio/dcloud/b;->h:Ljava/lang/String;

    .line 64
    :cond_4
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v0

    new-instance v1, Lio/dcloud/b$g;

    invoke-direct {v1, p0}, Lio/dcloud/b$g;-><init>(Lio/dcloud/b;)V

    invoke-virtual {v0, p0, v1, v2, v2}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    .line 124
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V

    const-string v0, "download_manager"

    const-string v1, "BaseActivity onCreate"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lio/dcloud/b;->onRuntimePreCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lio/dcloud/b;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onCreateOptionMenu:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v0, v1, v2, p1}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public abstract onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onDestroy()V

    const-string v0, "Main_App"

    .line 2
    invoke-static {v0}, Lio/dcloud/feature/internal/splash/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onStop(Landroid/app/Activity;)V

    .line 5
    :cond_0
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->mLaunchers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    :cond_1
    invoke-static {}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacksAndMessages()V

    .line 9
    invoke-static {}, Lio/dcloud/common/core/permission/PermissionControler;->clearCRequestPermissionsCache()V

    .line 10
    invoke-static {}, Lio/dcloud/e/c/e;->a()Lio/dcloud/e/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/e/c/e;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "back"

    const-string v1, "BaseActivity onKeyDown"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 12
    invoke-virtual {p0}, Lio/dcloud/b;->onBackPressed()V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object p3, v3, p2

    invoke-virtual {v0, v2, p1, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/b;->displayBriefMemory()V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onNewIntentImpl(Landroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseActivity onNewIntent appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncStartApp"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/b;->handleNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onPause()V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/common/adapter/util/PermissionUtil;->onSystemPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lio/dcloud/common/core/permission/PermissionControler;->runNextRequestPermission(Landroid/app/Activity;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/b;->a(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->onRequestSysPermissionResume(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/EntryProxy;->onResume(Landroid/app/Activity;)V

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget v0, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    const v1, -0x1b207

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    sput v0, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    :cond_1
    return-void
.end method

.method protected onRuntimeCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRuntimeCreate appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/EntryProxy;->init(Landroid/app/Activity;)Lio/dcloud/EntryProxy;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    .line 3
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/dcloud/EntryProxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z

    return-void
.end method

.method protected onRuntimePreCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRuntimePreCreate appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSaveInstanceState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/EntryProxy;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSecondPrivacyAlert()V
    .locals 4

    .line 1
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object v0

    new-instance v1, Lio/dcloud/b$i;

    invoke-direct {v1, p0}, Lio/dcloud/b$i;-><init>(Lio/dcloud/b;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    return-void
.end method

.method public updateParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "tab_change"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseActivity updateParam newintent value(appid)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    invoke-virtual {p1}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object p1

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x15

    invoke-interface {p1, v0, v1, p2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "closewebapp"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "IAN"

    const-string v0, "updateParam closewebapp"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    check-cast p2, Landroid/app/Activity;

    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "appid"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 15
    :cond_2
    instance-of v2, p2, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v2, :cond_3

    .line 16
    move-object v2, p2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object v2, p0, Lio/dcloud/b;->f:Lio/dcloud/EntryProxy;

    invoke-virtual {v2}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 p2, 0x2

    aput-object v0, v3, p2

    invoke-interface {v2, v1, v4, v3}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const-string p2, "updateParam closewebapp WEBAPP_QUIT"

    .line 19
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
