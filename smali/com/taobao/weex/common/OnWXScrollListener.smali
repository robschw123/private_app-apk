.class public interface abstract Lcom/taobao/weex/common/OnWXScrollListener;
.super Ljava/lang/Object;
.source "OnWXScrollListener.java"


# static fields
.field public static final DRAGGING:I = 0x1

.field public static final IDLE:I = 0x0

.field public static final SETTLING:I = 0x2


# virtual methods
.method public abstract onScrollStateChanged(Landroid/view/View;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y",
            "newState"
        }
    .end annotation
.end method

.method public abstract onScrolled(Landroid/view/View;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y"
        }
    .end annotation
.end method
