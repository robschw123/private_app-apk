.class public Landroidx/webkit/WebViewCompat;
.super Ljava/lang/Object;
.source "WebViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewCompat$WebMessageListener;,
        Landroidx/webkit/WebViewCompat$VisualStateCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_URI:Landroid/net/Uri;

.field private static final WILDCARD_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/webkit/WebViewCompat;->WILDCARD_URI:Landroid/net/Uri;

    const-string v0, ""

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/webkit/WebViewCompat;->EMPTY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDocumentStartJavascript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptReferenceCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/ScriptReferenceCompat;"
        }
    .end annotation

    const-string v0, "DOCUMENT_START_SCRIPT"

    .line 665
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 668
    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 667
    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebViewProviderAdapter;->addDocumentStartJavascript(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/ScriptReferenceImpl;

    move-result-object p0

    return-object p0

    .line 670
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/webkit/WebViewCompat$WebMessageListener;",
            ")V"
        }
    .end annotation

    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 611
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 614
    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 613
    invoke-virtual {p0, p1, p2, p3}, Landroidx/webkit/internal/WebViewProviderAdapter;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    return-void

    .line 616
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method private static checkThread(Landroid/webkit/WebView;)V
    .locals 4

    .line 918
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 919
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. All WebView methods must be called on the same thread. (Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " called on "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", FYI main Looper is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_1
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "checkThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 933
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 939
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 937
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 935
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createProvider(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 1

    .line 913
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/webkit/internal/WebViewProviderFactory;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    return-object p0
.end method

.method public static createWebMessageChannel(Landroid/webkit/WebView;)[Landroidx/webkit/WebMessagePortCompat;
    .locals 2

    const-string v0, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 406
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->portsToCompat([Landroid/webkit/WebMessagePort;)[Landroidx/webkit/WebMessagePortCompat;

    move-result-object p0

    return-object p0

    .line 409
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewProviderAdapter;->createWebMessageChannel()[Landroidx/webkit/WebMessagePortCompat;

    move-result-object p0

    return-object p0

    .line 412
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static getCurrentWebViewPackage(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 311
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 312
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 315
    :cond_1
    :try_start_0
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getLoadedWebViewPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object v0

    .line 325
    :cond_2
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getNotYetLoadedWebViewPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static getFactory()Landroidx/webkit/internal/WebViewProviderFactory;
    .locals 1

    .line 909
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getLoadedWebViewPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "android.webkit.WebViewFactory"

    .line 337
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getLoadedPackageInfo"

    .line 338
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 339
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static getNotYetLoadedWebViewPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v0, 0x0

    .line 350
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    const-string v1, "android.webkit.WebViewFactory"

    .line 352
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 354
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 355
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "android.webkit.WebViewUpdateService"

    .line 358
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentWebViewPackageName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 359
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 360
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 372
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 374
    :try_start_1
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;
    .locals 1

    .line 381
    new-instance v0, Landroidx/webkit/internal/WebViewProviderAdapter;

    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->createProvider(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/webkit/internal/WebViewProviderAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    return-object v0
.end method

.method public static getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .locals 2

    const-string v0, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    .line 280
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Landroid/webkit/WebView;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 286
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public static getWebChromeClient(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;
    .locals 2

    const-string v0, "GET_WEB_CHROME_CLIENT"

    .line 714
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0

    .line 717
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0

    .line 720
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static getWebViewClient(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    .locals 2

    const-string v0, "GET_WEB_VIEW_CLIENT"

    .line 689
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0

    .line 692
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0

    .line 695
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static getWebViewRenderProcess(Landroid/webkit/WebView;)Landroidx/webkit/WebViewRenderProcess;
    .locals 2

    const-string v0, "GET_WEB_VIEW_RENDERER"

    .line 750
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewRenderProcess()Landroid/webkit/WebViewRenderProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 753
    invoke-static {p0}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forFrameworkObject(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 754
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewRenderProcess()Landroidx/webkit/WebViewRenderProcess;

    move-result-object p0

    return-object p0

    .line 757
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static getWebViewRenderProcessClient(Landroid/webkit/WebView;)Landroidx/webkit/WebViewRenderProcessClient;
    .locals 2

    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 869
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewRenderProcessClient()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 874
    instance-of v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    check-cast p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    .line 879
    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->getFrameworkRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 880
    :cond_2
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/internal/WebViewProviderAdapter;->getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;

    move-result-object p0

    return-object p0

    .line 883
    :cond_3
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static isMultiProcessEnabled()Z
    .locals 1

    const-string v0, "MULTI_PROCESS"

    .line 899
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v0

    return v0

    .line 904
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public static postVisualStateCallback(Landroid/webkit/WebView;JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V
    .locals 2

    const-string v0, "VISUAL_STATE_CALLBACK"

    .line 164
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Landroidx/webkit/WebViewCompat$1;

    invoke-direct {v0, p3}, Landroidx/webkit/WebViewCompat$1;-><init>(Landroidx/webkit/WebViewCompat$VisualStateCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebView;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->checkThread(Landroid/webkit/WebView;)V

    .line 175
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/webkit/internal/WebViewProviderAdapter;->insertVisualStateCallback(JLandroidx/webkit/WebViewCompat$VisualStateCallback;)V

    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static postWebMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V
    .locals 2

    .line 442
    sget-object v0, Landroidx/webkit/WebViewCompat;->WILDCARD_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object p2, Landroidx/webkit/WebViewCompat;->EMPTY_URI:Landroid/net/Uri;

    :cond_0
    const-string v0, "POST_WEB_MESSAGE"

    .line 447
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-static {p1}, Landroidx/webkit/internal/WebMessagePortImpl;->compatToFrameworkMessage(Landroidx/webkit/WebMessageCompat;)Landroid/webkit/WebMessage;

    move-result-object p1

    .line 449
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebViewProviderAdapter;->postWebMessage(Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;)V

    :goto_0
    return-void

    .line 455
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 643
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->removeWebMessageListener(Ljava/lang/String;)V

    return-void

    .line 647
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SAFE_BROWSING_WHITELIST"

    .line 254
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {p0, p1}, Landroid/webkit/WebView;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcessClient;)V
    .locals 3

    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 839
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 843
    new-instance v2, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    invoke-direct {v2, p1}, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;-><init>(Landroidx/webkit/WebViewRenderProcessClient;)V

    .line 842
    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    :goto_0
    return-void

    .line 848
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static setWebViewRenderProcessClient(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .locals 2

    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 800
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 804
    new-instance v0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;

    invoke-direct {v0, p2}, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;-><init>(Landroidx/webkit/WebViewRenderProcessClient;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 803
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    goto :goto_1

    .line 806
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->getProvider(Landroid/webkit/WebView;)Landroidx/webkit/internal/WebViewProviderAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/webkit/internal/WebViewProviderAdapter;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V

    :goto_1
    return-void

    .line 810
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public static startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "START_SAFE_BROWSING"

    .line 210
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {p0, p1}, Landroid/webkit/WebView;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
