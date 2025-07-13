.class public Lcom/sample/breakpad/BreakpadInit;
.super Ljava/lang/Object;
.source "BreakpadInit.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "breakpad-core"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initBreakpad(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/sample/breakpad/BreakpadInit;->initBreakpadNative(Ljava/lang/String;)V

    return-void
.end method

.method private static native initBreakpadNative(Ljava/lang/String;)V
.end method
