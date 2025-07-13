.class public interface abstract Lcom/taobao/weex/adapter/IDrawableLoader;
.super Ljava/lang/Object;
.source "IDrawableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/adapter/IDrawableLoader$AnimatedTarget;,
        Lcom/taobao/weex/adapter/IDrawableLoader$StaticTarget;,
        Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;
    }
.end annotation


# virtual methods
.method public abstract setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "drawableTarget",
            "drawableStrategy"
        }
    .end annotation
.end method
