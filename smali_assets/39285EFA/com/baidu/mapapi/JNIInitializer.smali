.class public Lcom/baidu/mapapi/JNIInitializer;
.super Ljava/lang/Object;
.source "JNIInitializer.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/baidu/mapapi/JNIInitializer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 22
    sget-object v0, Lcom/baidu/mapapi/JNIInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 23
    sput-object p0, Lcom/baidu/mapapi/JNIInitializer;->a:Landroid/content/Context;

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/baidu/vi/VIContext;->init(Landroid/content/Context;)V

    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
